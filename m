Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8A01F95A
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727595354; cv=none; b=DIQY1HpegAj/t1/2wUX/LxPEKmPHn6v7FzKejnWZNF+S1s3EluWo8cbJevUowtf6bPB9l9wjMJQQYLsejLDovKjUf5WrFL43l5k7JrWdF8ciYMP0vr+tY2weAaX8RhBNX49V6ui0vEoN6Zd+VpshepgsSsK3b4C6qbjXaKv/IDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727595354; c=relaxed/simple;
	bh=z6FHkOLf1+VzbAsa+sBNpL4YDsshOZOjOJS+pa4fsg8=;
	h=To:Subject:From:Message-Id:Date; b=buyBf9m9TwKTE8sSH9eTUv2ozQCyJlZo7kwjpnO2c/k4xNjKmixbsKqSjnsFBRiNHfjkoXPAN7g8WRCauEXzaFEV0JAN1vHsmPsUnyQTFeVJlCQPJapwPkEM7O8Xcgg1jd1ZNTyYyL5bClNLuuo1ZH4OtcHy2HoTWbZCHkKfhpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bemu+9sM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bemu+9sM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC2FC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727595353;
	bh=z6FHkOLf1+VzbAsa+sBNpL4YDsshOZOjOJS+pa4fsg8=;
	h=To:Subject:From:Date:From;
	b=Bemu+9sMyjHbYrKXPnWjykcnpb2+gklUcVnoHbQMBsvXjFJmerARb4GB+t4G/nan4
	 hE1hOiA6n7CFYYxSGUolRaDF32G5Aph7unYnqAbxc6xY24tJFlNrES42j2Pkzb5prx
	 +hp2+gtqL5qBgqlh5fpCH4nUCjLUGoIH7h45x07PRjeKWH4JTxXjZvrN6IOy49Ag8a
	 raNTB+/lrXz8JlpoUEgvAm9JnO00WrR/XDgyACVN/+mslB+odpPxUgKsyed955BXkn
	 9O+lh60BsJqNwUGE9gXWmYG6frXxgbG83eF4ya1tDoLK1fWI97hWiefafeuWfCEo99
	 7rXFXYtGI0sVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1BFFCF6498
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172759535362.6212.3031878147454341416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db54c23992e67baabd8f7455fc1f5b8ccd520d78891539d63f39366ab07862c
Date: Sun, 29 Sep 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727595353
