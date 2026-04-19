Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2409A1A6831
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776579454; cv=none; b=jnqdV2YhnI1TuM/3RytIwZpUEzSBOzUnmBfmaC+jujGj7h2m/yzgUpZ9v/2JrD3NUwLoU1b9yT/xhLRswckF3cw7D2LYMhN3DBnHFqlXt40LplzW1t09R4ftp78FCMXbm3Zf0VkaecnQWwiI4FgI+lvEC/LvQi5sSFsNgQAWMTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776579454; c=relaxed/simple;
	bh=jC22RxDg5wKj60K9TaFGTjNy8A0NbJdOe5a63UzqdVQ=;
	h=To:Subject:From:Message-Id:Date; b=U77wQSZj+7sVMejybQBUOmDF0O3VaMtBtZWje+p1uBcyc7QvSo6YfdIZnhIfcP2HCmLcpZVDQ1KLMHoZcziTJfTnHM1oS3ke1Oyf8C3dgCA5522JRvkCV46qOP210U113sb7FW0RshJZk15BtZ74i5vtYyOO6mO1S/VQ19KKms8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DkJ8hhIn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DkJ8hhIn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D4CC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776579453;
	bh=jC22RxDg5wKj60K9TaFGTjNy8A0NbJdOe5a63UzqdVQ=;
	h=To:Subject:From:Date:From;
	b=DkJ8hhIniXVCxLsv9gxJ4Qhon/Om627znltWGbesAqXdLtCvXZj1BozjL7GcERUmh
	 UoJNzOwWxcaUKNv//oTNUusQ7LHRBLJSUxunJzD6hDmR1RqOVwEAvxl11Bpv18wvoA
	 U7nZCHetlVAM42Dk07WBb/enWS7ebHi0tZp01zorTUn0eo84EP23fm7gLCAJI3hqkw
	 Io0LuXm61AljCDXC7a47p+UkO3BcOSvMgpbLISHJcll62TMRKJ0TO3ruPqGW9Xomba
	 FemKsb3LEtRYsZAd2SUFheNbsCKAfGv8uASqZBJpZ8YvwMqN6PLfXy9ngeDwjQ6ijm
	 T5Vbfjw7QqF+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFACAEA7188
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177657945368.32716.470592979836306037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f440bfeadc2c4621c3505f365546e4297b872f5d5e7721f6b076a09422554e3c
Date: Sun, 19 Apr 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776579453
