Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233AB157493
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751786994; cv=none; b=LouR1n+MoW5QQwUdDM8JLvQ0wVnMeK1Ca+lOyhLwgfHZ1VT0TvYEr7GvRi4jZyuaYUhGjD2Ev8nZjrq8IC5C/mmIjLrrRZnazGbMIGb3z8sHqTwThb1cALtch9688D9wJAuATr/x+WEHcZqxjZ/r4WwWCXZ0vyHXKBqy37Ft0LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751786994; c=relaxed/simple;
	bh=5DQp0dsMFXeiIJ+v8SsGSKC29VX4xr+s5VCW3RyjFfI=;
	h=To:Subject:From:Message-Id:Date; b=GqCaY5iQnRuzyAQT6IrBs9mV52QutJu0ybInZXtoDbofjO0IHRFOvFLlv0QvE7dciLJx8atzK8kIwv5jLjx36UvNjb01PdOE2nq3dJPVbtFrLskD8YspBSAvCJehq/7DKtyH8B/CKIHAelT9M8NPBNRzAw0+WXUiFlGDs7yx7Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sp3LboKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sp3LboKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A2AC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751786993;
	bh=5DQp0dsMFXeiIJ+v8SsGSKC29VX4xr+s5VCW3RyjFfI=;
	h=To:Subject:From:Date:From;
	b=Sp3LboKonbw8TMYA46vsW/nVeuOdmFPEo/ImMe/PRT55wXU9ObH74HT3tZKClIF3B
	 r/S2OqM9KKiadtYuBiXcg0XKQvsCICF+6QEv/C5S+Eb7gRdBeTn1f3Lrqirq/Gl53l
	 dyNwDf/7seuLhkZGeSC0LNetCGUssMWdb0U+eV7nQGFa9MRAFxSoj+zO8y4i/ZP3/b
	 S0pDEhZvAu68UfLaOxqQYSQF/UJN+F9gKdtHpkJki2quEteS5GXUJawa3Z6gF9Snf7
	 z0ACIOyrZ4n5TXCrq8ygeCF2sAHtVAkbHRqlsztgFZtHchmNG/8gA2G5lFdgaZnDuS
	 sJy1uhYCd/b2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926DDC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175178699357.29901.11479204034818869508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea9d3c578adf96ca205d92e2cfa193382e2bc4feb9272c3f298e003c6253c5e
Date: Sun, 06 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751786993
