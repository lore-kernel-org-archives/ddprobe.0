Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3345F4315C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751753394; cv=none; b=ZVcFX3KeofkPw0+m82qCZeAw8U8OEZZPX6MbwOkjAGjfy74tbVYBT9xNtNISqOIaP2zlb8ZKCxgGAtuNxckx/Wv0SRPq1cZUMOLy6tCAmEqZpE87F8cWnBSQSbWI5kHj/y2tsFqrUGThHvl4ydBW++/Hk0o+IMqudR3rqSFMwbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751753394; c=relaxed/simple;
	bh=5G/amMmEkybxYsSuU42URdzGCzUlxkpXsfp3pn2d3/k=;
	h=To:Subject:From:Message-Id:Date; b=U11zZ+2EAshekvRnJDXUx64FRtvZUl4+MTqDCVXY7qPpsV2MxZYWsJJT0tcI7ejbxZ7QZh+waNMSFqFTA6aYYXDuZ+HxZ4EolT++T6xzDmxh9R096dp187nHuLuD8S85QJeWWBCv+oicCLIclv/X57NaTHTeFf0izHY6Nttdll8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAdw72ri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAdw72ri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39BCC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751753393;
	bh=5G/amMmEkybxYsSuU42URdzGCzUlxkpXsfp3pn2d3/k=;
	h=To:Subject:From:Date:From;
	b=gAdw72ri0WaNfshDi8Y38Qr8JjVAnpDBGZy/IVKoXWm50xFDkjZILGTmkyWEDL3hd
	 ortAFKZu4YyB30wOROFeL3m/yPY1v1yQyhLPnjUiGJ5x9a42DElH7p9YbYILAc1irt
	 Car1ui4r2EA5U1rQ6YPCqqUBJvpRHRil4RvQkZez2WwIduMIFIPBFvEyWq7bub3hp7
	 zi4mofTdQyRv1c9JrpPAbmuR7S6YkS5px5BMO3DIFphWb+iAddEMGsJa1p7WfaVsk0
	 e/4sIsyY8Wf9g3l+Cs4Ft044kR/p9C42FBmItifkizXWxDNy0/YMfFbLnG/pC+l244
	 UUdrmXWiBez+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A8BC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175175339357.15984.2581335110828645669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f8859485c72ba900435319ccb464a1db99b8be0ad93f7eff6a21969e8a7c74
Date: Sat, 05 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751753393
