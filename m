Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E9E156661
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 06:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765521774; cv=none; b=mgFz3RJ3smO0FWmua4Lz8dL5at2rIda3H/yk8/mG6fupStcctKyNGEHbnydgySErBF0H1d8YuzPpLskG7I5uPWHfuAaqF+2TKcSQ0uof7uaewO0fO7UzXe2MbjGCn8JaPx4WGa0ytFTebX/d866LoouQ4M2rYZ/altxoj6+3kV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765521774; c=relaxed/simple;
	bh=0z773Fdhdhh/8kKu/PiIiGka0WcCzIxJTEKxgKSgRNQ=;
	h=To:Subject:From:Message-Id:Date; b=nuxgVLZF1V3+F0SzW/iPkMuWpWXgy/4wZkwO67LuRbBX35nbLZmlmeIngKQBurZ36nDNcnAVA53ZtRlxnDr0BnpWu9+MGN09quww1xe5X8EkonCvNg53sR2vFRbJ08FqWyREKMD4Mh2DZwK01SISosQb6XYJicHLzj+S/1UBCiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRg1EKl/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRg1EKl/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD139C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 06:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765521773;
	bh=0z773Fdhdhh/8kKu/PiIiGka0WcCzIxJTEKxgKSgRNQ=;
	h=To:Subject:From:Date:From;
	b=RRg1EKl/9hCV8qxV7O/4jnyA2RDizHw9raCvQ3e6v/jDKcRT2/wwplQ85e/f/kXW4
	 IZ2vQHr/r2z3uCauijMZ66TR8/0HCFTba2tr1HsbqPGzrp2UpqEGDJizrfNL40A6Fg
	 URkqrcdFELwbFAES820bIn+iFPoZgoGZLVGrUqfqNFhydQJqqPz4uOHBBBDJmdHY2U
	 35+YBKpZNPT/y2lQjgnbFRZw8sHVaOsUKOw9x0rDVoZCe4rHiQa0GG+p4CPX8827EW
	 yZyZtoCPr4uYz7tGvI1UcQn9ljZO796iqQI0NL43XBZ9+8GtFzbETyE8KPncIEZt8A
	 Nx3AGyVAgaQRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98059D43363
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 06:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176552177361.1752.12010175212189870106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d00db4ab17cab10ca09b12fce18abcc466f30c2a88355b737d7dbbf780775c
Date: Fri, 12 Dec 2025 06:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765521773
