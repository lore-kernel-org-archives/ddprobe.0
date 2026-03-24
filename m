Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194DB3FE364
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774362294; cv=none; b=f2UYxf/bSgOvoFpRbN9XXj95f154gqiC/ybS/1SIt19lgRCgm5ucRxoHpn68RmG6599+j1CcHwcm6Y/Jq7sbu9V2cIYb/MfPQvFCj2++nesup54jIeYf/AqODytR+NpnK6dpNJzbv58tVzNhfytb/bTGMlZ4uronoK9WwFtXDjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774362294; c=relaxed/simple;
	bh=0BKf0k/Bbby16LHPMOotUSLdfyKLaS48ZF9mxO26qtU=;
	h=To:Subject:From:Message-Id:Date; b=iTXxD6hAdG5gc8rt6pUjt2uSIfvVmzMRDqqJVMTpQlui4NoojaiLPRlSsbfvlpIwAE5KgdRIN5YGgBh3BI3fmhU8l0L6Pm7AKh7FfAMNLfhF4xbhrEjbRy+X2bcqvtIN4/UiAJkpZDlOJPqhvui7DeW2e3lvJq3Kg957zWXeooM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0OPGXZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0OPGXZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21D8C2BCB2
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774362293;
	bh=0BKf0k/Bbby16LHPMOotUSLdfyKLaS48ZF9mxO26qtU=;
	h=To:Subject:From:Date:From;
	b=c0OPGXZ1bmJOyNga3LjMdA82GAC03XOVysfo1C4ry4NDxfeb0rZv2R/mOF0Wo3BDS
	 +QyPSDVjPnu8W4xGBpqXYRbLV2l+4zh+3t6iIXKu6V/RHgHtCUG8LBXQuEthJghM+2
	 qDFdP/DO+lczrfp+pqrcS/KpZNRoGL0FdsMr2av6eVwjts8of+0qJLzzSF9YY4uySl
	 AzEEup0jVPOdzIsF8alQjXByLvxEmzJMsEH6nh3Dl9pVjpw4FDayL1qVjMiXG9Ch5l
	 ZrNxONcRXupeJZ+Bl0GLEpvvVp1q7M9c0q4DgQ65b3elJKCLiwhr/BMAgiddVbsjeo
	 nCBTIgFd6wQCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907E1F54AC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177436229358.27748.15055428727980459454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62732600a1ec5e410517a0df0fbcc564c3918649480085c4498f040348d93fd4
Date: Tue, 24 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774362293
