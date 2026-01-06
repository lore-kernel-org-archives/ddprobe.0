Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02A95322A24
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767663834; cv=none; b=XrCpWcpp+UVCh/83IgFbnhV4ShBCFVZ0NEtvT7EeFbFnPlGRzkqY3f7cc2T11rJCxav12O5JZwIZ/VH0RSOrP0F+MaeX3xfHB1Nxc2/0E7LjwQphRGrKiO15PN/v8yOLb+sAvgf3e2D0frVq2nQyMobW0hVVBMFtSWtxuYLpyDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767663834; c=relaxed/simple;
	bh=t2e17E7tZ+xZsna7szXzEYzSKW+13NaPg8Mm1e4V2f8=;
	h=To:Subject:From:Message-Id:Date; b=enwFiGnhTYq2tZgTIvPFU2RPtX3frFotaUH+2VB3xMjrNJLgip6jUEVQ+q1diq5U5mKeCP9WovswlbSQuuTYiXwo/s+I/cC07LkqLv/zxL6gbqW4WIGLt1J+7kL+AAx3WaxkCQ+tNNFjXD1vvgXmPAqAUT8SdOIjEKGoVwCOTkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ou1iil9+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ou1iil9+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AFDC16AAE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767663833;
	bh=t2e17E7tZ+xZsna7szXzEYzSKW+13NaPg8Mm1e4V2f8=;
	h=To:Subject:From:Date:From;
	b=Ou1iil9+NAx7mG4zdijFEC2u5brmLaM6eeVTG1ULCgxu2qrGrxkZQCNpy0HVgKS/D
	 +nX/ROkQQbv8dg1YYDkhKTt3cllRolEF6Ya1ypLLLRCOhu6aF0culUW3PoSef+EIgi
	 Cl5sOkUzOLJx1A2Sr2jAb6C+c4t8bGac1ES7EHD1Ba82GdwCptDXOKfMpR54gqKTac
	 ThBumL3XT4js3wXlYwyjMIZAbOu14Lz4QOmQtBX3YRneOAf70FKSfxhubwadAO+eP5
	 cfhu9qiPR/lGLeEr7c/dhWJnIJGjdedQOOfQO5Oc9CYo5iBnC8wENyZ5dAhHdWYtfS
	 ziJGm58cub6HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919DFCD042A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176766383357.11328.3102820483404139529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d7a731f4afb319cdf34db2bcaeec48a44f7c37bde003ce5a6c765cf21f4b0de
Date: Tue, 06 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767663833
