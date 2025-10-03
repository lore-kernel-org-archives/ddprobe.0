Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08ADB19007D
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759531794; cv=none; b=EKOymnVngxbWHKUxjL2jWiUcJRVGHtO13GLiAZFxdrUs02rkmB3cTYRamLOPKNo6vzYyepqq6XuUnGLwj6YFSnOqbwjwCxidvArQ/tGwvn3ofBkLIIKVRs3e4ULoFcxgIcVG35R7pPgdFHmfikwLLsxb0Lg/+OcbxIhLTSyCZSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759531794; c=relaxed/simple;
	bh=flUSJowTc96SXA3+OMZePGNbfpEOyiRMJLZwFpiHyJ0=;
	h=To:Subject:From:Message-Id:Date; b=lZk23HlOzOF4Pp7Eng/N7BavTAKHbhnKC+TsncOQeNxighkdKqb+c+2cq4e6OeIpGb55bnqAVMezhUVrwOEDyG2u2UF6N7oEGUBhFAmfmHXwbyWlJboewOmtqV4xKg5ugE/tGUIkQBrscLgsOdRtR7euBOKISExWDlwG4/SDulY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQlIZ4z2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQlIZ4z2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A30C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759531793;
	bh=flUSJowTc96SXA3+OMZePGNbfpEOyiRMJLZwFpiHyJ0=;
	h=To:Subject:From:Date:From;
	b=tQlIZ4z2JSqNt+9rCiUZarbdxHn2qV6oop6VYgqtN1LesEflYv5SN6RePEWGTk4jS
	 fbw7MB+xuNZt0vcrw+y1ElvGGet6b5hayIS9nvXoeqHbYgsBskcMzKql+9nuF5Upp9
	 ROkUXkUkHH6nbGu1G2BuAlEFrtQEiUC896Xpl3ewFECrMcBydSwJ7pf/qT9P7Iqhxe
	 ClrpPoSIVfUjT127rdOjmGEpxdHAU0nVd1Ine90qPEonut8B3UWPhy/V3izcoy1Zl3
	 KlqqyzoeVgOlL4yaXDDAusJwc02fiQXa+1/qgPOITT676J5ZfvPVoVAOfrEOnuxSZH
	 vEUL0DnSYgzfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F569CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175953179357.6351.2925747729446167740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ee6e4ec25f6d3781d114996a58ca3d4df741a57f295384d70cac93b80ffbb3
Date: Fri, 03 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759531793
