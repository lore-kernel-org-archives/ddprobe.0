Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCA32989B5
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 03:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764646974; cv=none; b=lnOjBnkY4vOepRnaPmPWq1K2zkbPrMvJ4QsEPD10Rm0vLluMHhqW0mUSk4ZlMr/U5Qs9w+J499WfzrSj2APHsqhLU0CqdcOuEysU2AQOfB2zy02Ca3l3N3Qe18egak/QtHAKFlKKZ/FsYuIk3xAoRMVddWVlxWfNEjlmPxmo3LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764646974; c=relaxed/simple;
	bh=+FcLKOybemh321t/y3cOitKlAvBam0Url3PnfUxm9Sk=;
	h=To:Subject:From:Message-Id:Date; b=HSnmBQHT55nd3IeU88+j4DXRfD4+S5cBi+uondbhaGVE3Mdj6z+Go09CFyCqff/z37pBBjNW0azKWTcqGXBncSQVsCdcS45irIABaxJqM5WycPuiaszr1KEywllO52xFIPUY/nstqWolWvmvZ9Bqa+zLti4pRvl39++VIMbhpAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCO0HJMA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCO0HJMA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E0FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 03:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764646973;
	bh=+FcLKOybemh321t/y3cOitKlAvBam0Url3PnfUxm9Sk=;
	h=To:Subject:From:Date:From;
	b=UCO0HJMABBC7c/OYC9W5fkUpP+Zz0jNCN6Itj6dWApFdBean66rv1RBIismxQIK/6
	 UZC2sQNP6ykVqjZc8nMMQPEHM/GhzW9XtLrrJkUVoYG30zq3sDudOOqx42GNpwXIww
	 MXH832pspKS2fe0GwIPA6hFBqt5dNqYx9e+dau8AjWhfK5tMQRWj3bQoPoPDpphX58
	 o/Xu4G6pCHOpjdTLee3Gi411sZaBghmqOfToATxfaeYl+iR53TfZqfX5icNvaDft2e
	 mJxwSh3yHdMswbSVvTn1oAPLe7RTHACkDjM/CecwyOqiUIgL6jSFHbY2tzjkYfhMyg
	 DKBbk4ylq1wjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9004ACFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 03:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176464697358.26004.8787349206271598214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 152c14565b78259e65eae50364263fd242672279a3a6958261dcdb65decfebb9
Date: Tue, 02 Dec 2025 03:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764646973
