Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1673923AB
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733021154; cv=none; b=MML5koQyYMUVE6So2iaIrFEPk8nls2tT0i9ETmRtom8LODARtBCdENrEQ5w0sG+ifvtdWJsNzj76nhoiAXXkMDS6Wzq0mBtZZflVy6AACsQecpOr++5B4PtNnS3/46gEcRnBerMDU9JdU4DxktcVdKNFy4Zwiuj5gy7d4C0bI4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733021154; c=relaxed/simple;
	bh=JoV1F2UKDBkEaX0lolLAlfRcsjtGRkVxy7aRKPi+G5A=;
	h=To:Subject:From:Message-Id:Date; b=oMTOoiR3GRkVBdoYUZOXupzwZt/EKFYLiMfKRGC/52PPQFpPlPVOpBcOjlh+Oz7/6pe6XvkKbsKGL0SkEovIe6LoPHsuY3LPZGEiNcXUzt1BBZkH+Xq9S3Z55R7B+QcQposujdj/IGvGnzMrblQT6/c2AP9nI0yu+nWTkBq+T3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GvCIES7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GvCIES7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5269C4CECC
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733021153;
	bh=JoV1F2UKDBkEaX0lolLAlfRcsjtGRkVxy7aRKPi+G5A=;
	h=To:Subject:From:Date:From;
	b=GvCIES7d/ZqcYdX9BBfVkHLmo6G9Tb+vaKga2iQqcrvdCK7k+nEvnbWFIvcrCkBu1
	 Bl0YaTOCwGDYUZOBR2Ku/9O83TUHaSplrkk2J16N3D0U9O2/Rapt84MCnqLUixnfVE
	 Ut0pqcqGim5S1cc7Rev4FnJdiAxUUB/iUdy1BsoGc2vhSks7G1wAJA+1B0iGpIU6KS
	 3+Zx0jt1tX6DjMnD6aFzm8l1rAReCuxK18FD5MGN1B3sMxXg6/iTNXgmnfCqAmWZBK
	 cRfS6o1Y+GRMIFaSogGlf1Rffp7hkG3RbXbQY8U64cuSq4ZUyWr34hwfMnVtTFLRn1
	 CWHhxHoOH2WOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937ADD7361D
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173302115358.2260.14907151608236557016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 053750df60667580e676887dc372bc8c78c93e51504ca8776aa2b16c9f106013
Date: Sun, 01 Dec 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733021153
