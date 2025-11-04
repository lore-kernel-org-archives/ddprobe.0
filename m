Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1459A286891
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762241394; cv=none; b=EZWE55la7wAAFIMebc2a4b2uyLU8PTtw4e8CU4byusA8N9ugK4J/jyArIvXmFEFL0Ufv7+6GQM4QKJ+DSlIaTNco69vIvsatlNrvTOBYy+e8RTzVbkgjQPWL3TcLZywFRlo4AjQzC9u6oEIsCvYZJxOpO70jpii9k0E7f1eCe/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762241394; c=relaxed/simple;
	bh=zBmdv96vGYpvys0/mcShU1yxg7B+9HZqldDKX3cAj6E=;
	h=To:Subject:From:Message-Id:Date; b=FXmFnIAHIWGaqZxmuS93bUB7YNJ3cSRv/ajPe9jlfboVopleoUtonFLs0jFgp2ue8f8aViGH8zHVFN4pxY1A5Jkwpys9HTqdFv2qwFkrjqbS0+DU5G95EznAoWLmVwWXrZezoxsQgT0VAFPIw+ev8Tnz5LsVfF/yOjhDQHFNtqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFGQONZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFGQONZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1489C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762241393;
	bh=zBmdv96vGYpvys0/mcShU1yxg7B+9HZqldDKX3cAj6E=;
	h=To:Subject:From:Date:From;
	b=aFGQONZFpNzT5DSIjZgOn+VKrxBFSHSaKbXzlN6WLZbDIQoX1ZWF9qASYHrlE+T5T
	 bW3TbrvQ5hGjPGHccP5mArFQJH0VKRCsiJug3Ep3T54k+3OJ4t19lW3Cif/zJnCgUY
	 /mCrNlGB/3dyUKmoO8SPCfHcmKV4tqWoxHRB7D0V3v2dzE+CddZB2Vq9IuXwenacdv
	 DzPqkx3pwNImKn1vG96Kao8RA1ivVMviXFhFVpGCEcAt624yaoUhNFGRqhuQo0n5e5
	 i01ESNdFlq+ljYpemLk6TYrOEQHraDKxSTeFSoXNXuJfVvh2eY78hWhlOzv/piP3y1
	 Per3GAFm0tXoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91994CCFA00
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176224139358.22454.14173679526400704814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad0143b415d9c7b9d02e330d8c0c9e3f3f4f82c4e256a2b786fb8e4786df327f
Date: Tue, 04 Nov 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762241393
