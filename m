Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265A221A45A
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734717354; cv=none; b=ZSS8/uKJU330pE9Y2/AZhmaHomRrQcZ2m4LRhKBt7gP5EyQ/2VASvhm30K1YBQj/IOswZgy4EGA5j5GwmON7OTrNFsFWYsSVue52Bw+OS+aYrmjMRYgLHmP3Cs3cjfEHVfJ+JM9aWoe2dBp6chBOGFa7uF/wmzqNk863Q6IgUNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734717354; c=relaxed/simple;
	bh=Ih5SJ8kTv8eXz/kEB6f61cQFXD0rc11etABXgceiCXM=;
	h=To:Subject:From:Message-Id:Date; b=MrveOGCQQjRo9A0zdtew6brcQ0yH/OhGdhtV/pEtx9k+0Uo5plUSC4/PBm+bqKR+nkMGH41nN969KJVic0v0yxz5m4L/Jcf9dAZHcK74sCmpvC+mfGjYns3GIU1XJpcFH+aQdde0evB/0Dq11gdg92HC4VPBYDwaFsYDFfaMo00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J9+p3FM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J9+p3FM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD82DC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734717353;
	bh=Ih5SJ8kTv8eXz/kEB6f61cQFXD0rc11etABXgceiCXM=;
	h=To:Subject:From:Date:From;
	b=J9+p3FM5BmHqvfiNA3/gPM4b2JQgGCWx7BaJftRYWBaWPqMSvEyiwBVonH/o6Eade
	 ck9nTA31b9C1OBmo7Aia49K+VpdzJOfyBnBsHqyfRm5scYGQaCOITWsmTfP3yYLFUb
	 VcCPN4wV2jv1mQe74q0NeXh91tD2VV5gzZWpToSPmcU6n++lzzioAqwtN+YTmYT6uE
	 eX58uB77VescYFHMy5jpNU9ROuH+C6PvUbM6r7zPy8HQ0qgrkA3sXAe4JlVwogTDAh
	 IbgZ75pLKm8/a58MkpBMYtzIvt8j6gahGMGrB6431FbB8HwC/t/c+XGqh2BZeRwa6V
	 Yc6dOf/HQ32qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993CDE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173471735361.14543.14683046224239473954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0040e4d942d8646c13e83c30a9f8ee2ee6d7872f106f3586df161175cb3c585d
Date: Fri, 20 Dec 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734717353
