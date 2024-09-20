Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532EF2B9BB
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726811754; cv=none; b=iRGQtIqqx0g9upQYAr4k1yXubQc0jyhXK4P63vJ3cW1zm8UHPL64qv3pU8ZHM+JRSgL2F+pW6NnPSAUdznMj6lQpzhhqz5CQ+8l3vrnYwAKcSHeS8jk33uA6rZNZS+4L0HcqQtkW/zHf2H1sYZuObl7+bpWhf07CWanJoHMMt7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726811754; c=relaxed/simple;
	bh=HnK25FNJcNHwsPyX4Sdr06Z3+O2ytDTTEu/UaGyRTmg=;
	h=To:Subject:From:Message-Id:Date; b=L8Q6l5Ns7BwipJsvYdZEijtb9uaA29QV4skKRMY5vfu3b4MYA3oyoOKP4xsp3mZCXmKCDzwnKkgqajrb0Vq41McpFgDlEOAJ7QrDIeD8QnapN0qeJ0vplAQ+XNlZMmltcQcuemRsrM7jaSlMETry2Tv0mud9/QnN/ASvpefVQ5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSq3g1oM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSq3g1oM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A860EC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726811753;
	bh=HnK25FNJcNHwsPyX4Sdr06Z3+O2ytDTTEu/UaGyRTmg=;
	h=To:Subject:From:Date:From;
	b=WSq3g1oMh1v6FSA3lEokGGNrdqt/xFpoM24dE9+WjOw81TMuoJY/8vx8pw25+y3Bp
	 4mynu0EDQK1NoI7VlkliC3++zyXw14ge0ifjQMz7FnjAwShrr8AVv9MU9hZmfEG19p
	 JbYom1afVGW255bUSZ8YbvXZL+htiwa9VNYLzQ+1zo4pbOft7oQWRe3vw4yns4hAyB
	 +Roo7Jp31NmOXWt1emZmlGogYwq1d8otgU6NVJtOwkau98BLqci4tVLR1wYbpbOauL
	 YvDHNxo3p7sbgPzpvMYGeN3eiyM0d+98bja4EZkOpuTr6jJPnFthVyk2W2Ji4Sv7JD
	 /CSc+UsQ8+ZTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974E4CF58CD
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172681175361.15776.11971046533799944244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf268346d4e3d1a76180f64dd4e9d26f46e2dd8698618a2e8af8766b6ccd232
Date: Fri, 20 Sep 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726811753
