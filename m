Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4056E1BD03F
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738965354; cv=none; b=hDDs9BHcKYDZzQSBR7TRp3jI6cKFeSlhxwS2wJ5kxGhZ2L7tT9REcv0tB1/4PpIDpy0+1b5kvZg+mHWB2gYdis5lqqwx6zHUCObEQLc8bLVSp6vxlhdWp3qXgsFw9P6GWbHBce/yW2M7+pTmyT9W4ZAt794rxidykXNyfun2bko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738965354; c=relaxed/simple;
	bh=8ZRYGQc2XE8C1wnYy/KreOmVvrRS95/9fXAseZV8PvE=;
	h=To:Subject:From:Message-Id:Date; b=s3DSXVi1AwMbjFE1ZobJBcXVALUvh7xRhr87HX50dQH8xcBOqQSJ/7HHndjBu10CfWTZYMv3LdQqkIFaDC03Ry2k2HZrIpBzuZ3nazTgDl8QhUUoGGFHsGEDPZcpdNwmdo9iTPGosV90qsOvOIVUU21Q0xGV56snWyajBd1GkWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCg20K36; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCg20K36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE6FC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738965353;
	bh=8ZRYGQc2XE8C1wnYy/KreOmVvrRS95/9fXAseZV8PvE=;
	h=To:Subject:From:Date:From;
	b=tCg20K36cLsJUdEiwia0aJv7XD8fe8IldeeozD6TATALQJQjEN9qvn/Ux4dqGKb4G
	 TjAFCX0qRat2z/sBhtJneB4oAesR58ALhfr6k7Cg9GvSXMzObGfOiOhIijtNoNl9pc
	 fDTnNydKW8QPm5FY3PQrLegwmibRLsXtFL04LDPKA6BO3LfGdKtalbgvyB7Uv8mTSA
	 ys1lu5Uz4MZ2lmZIDZpfWYqY4brQ8DPaxbsZf+o4ixxamwUj73q/klc5PBwEdFo6Cl
	 Fn+hKmiuHamN3Vzz2tT30i86dJjecdRjFXQ4dzTC8ZDEoG1FZvsxV6rmQwPIue197A
	 fQzbamWrFL2vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A120C0219D
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173896535361.4825.10812851584793245199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14633db8a650cb0814d811e673891c4af7d32bc3551b4d4d7b0df3521b1d16c9
Date: Fri, 07 Feb 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738965353
