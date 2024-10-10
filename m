Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1411B1C2457
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728566754; cv=none; b=A3gRqHWt/mBKhue7sqRAmhFpzls2qftCeRGVTTWntI/O6BFGh60DgcjR0BAe1mmATgi8RF66rhJr3S83zrF9vCHEcsYUhSgUQSFv/wcuraAZ/corGQhxNVquyd1aoYxVQiIvOPBoGo82e9H+V7FeA21usjKiHsoW7+Bwj00Yc5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728566754; c=relaxed/simple;
	bh=o/5HHdduNB78FLLFN6tDEz6/+3bEW/qc1qfKaBYTTJM=;
	h=To:Subject:From:Message-Id:Date; b=dLZXER0SKRLkepMVyeOQ/9QeDskpM0YT+zbcEcqqgvNrSciFflXrXPPSpOWv31sTAk/RXSKqiQjDljPOy2La1MoMxirC8WKEdnY9APQa3cB+sSaK4QcukzhSxS2+3JZ2/2BB1T22XbdpGavBz9ZvSxTO11CG57YfDOiTtt+RfFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNX7kbb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNX7kbb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8001C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728566753;
	bh=o/5HHdduNB78FLLFN6tDEz6/+3bEW/qc1qfKaBYTTJM=;
	h=To:Subject:From:Date:From;
	b=fNX7kbb6yXgjeXaNaT8wOCpaIcRRRO9GY/hHImzhkO7JnDlXOnFh/OsZscHIGK2O/
	 QqFr3Ums/LhOJEXQVyu1nRPVpYUAoOsPlcuf3EtwokQUAo8VafEIr6VSK5k2vWS88h
	 KRqIr3iqnlhMZNf6RfBYKXc1G0BVB+IkyXpDa+DIsKfZSlAQHKyGlM+E6OfKVnhcfJ
	 Jr7Va+Eb6sIZxwUhMde3y6s2yeD3RrutLBGY8O1DLF98WY9++P9LYmyi74kzS0h23D
	 PJBPJicoWkmDEDrCz2B/DzZdIp5pKW8CXAhlpgUsUYwhm6TAyjHg2si7c/VcqjP+4F
	 DGGMxCI20NANQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A92CF11F4
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172856675360.2844.15257648721954083060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 568300ee4d52b76eb80d83b0a6b40b64fe5ee6a59172ab7e0e765251ca553d5a
Date: Thu, 10 Oct 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728566753
