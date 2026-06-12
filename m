Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D28C38B7D4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 12:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781267194; cv=none; b=fBVk9nw+h0rezVFjB1KdCmgH7VocknUsuM5h6/OU93ayb5b1yTOJ3qlaVQ/Lqghb552VzkmP5OLiMFYvv/nhVC0CvtdLlPKeBDHOsCdyVkSscewRV0JRECPNQG95dc/8ONFEvf+Yjq7uip0c/FPfyYiaScYlal9AHrlSbTXoRVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781267194; c=relaxed/simple;
	bh=AmN0tQhw8PHfLPzbkyxA1yyzpznKsFlteE/A6yD0ubU=;
	h=To:Subject:From:Message-Id:Date; b=e8V/RvPTlmnGhKbAtYAS6HSaEXfz0c7KeuZi0SbBZhWkH4XPReRVRcBgxDDu5G1VEW5Hil8Z9rdAYyyxwrjdVJef+RtQ2y7PSOc5vj4d6dM2/6ZEUkKB0fIii7d/jVi34twoNb9nW5IEIBzJUe5LlPs97om+n4oFC7bAA8Mf4FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+/oxgXd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+/oxgXd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7889C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 12:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781267193;
	bh=AmN0tQhw8PHfLPzbkyxA1yyzpznKsFlteE/A6yD0ubU=;
	h=To:Subject:From:Date:From;
	b=H+/oxgXdiBq2P1u8xPLPzov40Ga2aq0ASMWjndGm5rGUn0rvKNiyIGj87Rosb/HLc
	 +Be/HzA7yUMxho1NeiEkjaM73RLR6jYb4qhnqnS84ZJ7PyRpeKh+Q4HSheHyQV8zAN
	 onHN8B/MY73JK/82z2wnnyFfg7R+qq4+v51WUwE0TKDNsT8sUkrJHOS8eSQwwM4ouY
	 1niNMuugx9oteYxqm7T9UVeGkETaz2NCnGpKPJlfQIHEI18tLTqAooHkvJUE+59+F3
	 4UddOqpMZD/H99+Oexb3GRcBn4kbvRqnoffYkz0U0BmAeFhJwyPbGl/iqTQki1mzbG
	 +QuN2BuzFgeGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CE2CD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 12:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178126719368.14093.12208068420142666147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe4a58c31e72e712a342073431d0704e610e66c717cefd72e726f9f7cb489a75
Date: Fri, 12 Jun 2026 12:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781267193
