Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC70B652
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 04:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716610403; cv=none; b=I//9ceKJNapR0cV2umFZrccDJHWNFij5bI24wNuHcm87ePGzxXzjCE8gWcV0VdaKUEt1Fy+RGsZfP/LzfNZVQCbbQ4kZDe4Q0hJiKooJJqnwCcFcTQXvO8Km5knwZT3QvCSArt/kxIBP64AktVvUSC36QLLOPOMMEWtoRMbA6ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716610403; c=relaxed/simple;
	bh=HBOQWHtw1uejAhAyoVcHOnuEn1DaijWnhfCOEMEvayw=;
	h=To:Subject:From:Message-Id:Date; b=ZvpJGc8UeeKpNwFwKl9EeKeUyaZJrM83OGQrxmdwopuuLIo7jkbyRS7inHJkp4+XN2LvsnUlzwA/nmGNvwaIQIAquO6Vww4IicDLaIpkbmvereJ3dYNTv6Z658p5e2/Alz09TyIdojho3oImoB1GA1/WX8YpT9NIfJNyJ6EZRac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcRoWHsE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcRoWHsE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D520EC3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 04:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716610402;
	bh=HBOQWHtw1uejAhAyoVcHOnuEn1DaijWnhfCOEMEvayw=;
	h=To:Subject:From:Date:From;
	b=ZcRoWHsE9Hd3+3vJG5rNRb3I88NAuGzklMsYD7OKjor5eglSoXwfH54xrPnIYTkWS
	 wjhHiaoYsnyD28A4HB2xBs5WF+YFcC5e5no+/Zv0Ypt/Wx/wBW+tPuD7IAFy8Lb6rz
	 dAgzHdKHztYTrr8+R3C/HhhfzV1frmKAVbJ3eZPnnwCryRx99pWQuj5ZQvsdTmTfYo
	 OBzSstMj7z+hVrDl4DtY1NyKh97FG8zZbMcN7YPXotui4JAe3Rq2SrQrmaNViJ/rd9
	 ZYuAQFGQg2AcvdVkASigLAUHslYgSPZLJKkxeB+UKwDikd9ZVEz4WX3LDEDVmitrX4
	 a6yi1JQjIMtOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD094C25B7C
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 04:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171661040276.352.12718659664581656233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c91d22e51c721e3842e43f9ae1a827c83fa9a06e3f1d2e703a13fcc8e1b4e823
Date: Sat, 25 May 2024 04:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716610402
