Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326731F3BA9
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757882995; cv=none; b=X7jAfJMxIp3wZpYnTnZJkixP58ZLGtqtPqetGUe+LrJpxCi8CqnPu75tWuEv5iYLWKElDZWoeXkUaTtmJS1/eu65gQJysD3DV3L24p+H/7slyutKmNENzax5/6OilOwi+u6Dr0W9FRlnNXMMK4R0Q817vIgvpL8w83gN3SZXUHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757882995; c=relaxed/simple;
	bh=YMtPuEXYRLNrTuJkJ43Fx63Rv4xKMCjQC6Ux869BXU4=;
	h=To:Subject:From:Message-Id:Date; b=PwdsOA0n1j+0n4zzHeYiegzPi3u7dR6pFLbPJ9nvoUxNwmOzZduPxgPxii+sWbMmnklHM9HNExhStTCeTqOeTnID3ZGgc6mec0DYEmcrZnAGH7zC3c2Db+JR3iSGdT/9nmMEjPj9vc1sq+kMo+BlWU1PHq7xXejmxD/SNrU0aQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgkX5+pu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgkX5+pu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5397C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757882993;
	bh=YMtPuEXYRLNrTuJkJ43Fx63Rv4xKMCjQC6Ux869BXU4=;
	h=To:Subject:From:Date:From;
	b=XgkX5+pureFGeDkJRfYvA8gWJCRen+KPhKHZX5LkFlPw94BQybNLVcUzVIS1lFPSW
	 wsf4cUM0mFHqTCOCfwkmfA2H0koAMeLDMaz4in/UwVLGDPAz1KYcfSrDS4Hmfvhz+P
	 9ch3d/TvPxMDm1K8CKf2xl40OMzSIbFz0suejJVQgAAKRZvy7GVoZCE5CNNuMOEtE+
	 3W/r79GItXNiSGFThCpm8Y5dLIX2tEAHNF0IsjL+zMV0i0vrU9vXlZEuY8NU8kGkP6
	 D7aHi6SEE9cQIXeH6aBoGt2jjGemVISI3zRT41dHradcSWaWtNoSUUrsNEkUHacwAk
	 n2huUyBQ7FiDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9354FCA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175788299357.31481.18214505732347304383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d5d6fb9ba0843dfd33b4212835e77483c2f89cbda3e8b41f47230fe8ce07edc
Date: Sun, 14 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757882993
