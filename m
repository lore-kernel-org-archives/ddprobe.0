Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C53367
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743552594; cv=none; b=IdH10K5+x2QYGYIQHdHWI9NHwx9wwLZEFvqZsanfMtNpRs3/m+pWWPTkL1n5UPXCF16Cvn72y3d4A+/nNnq3qiL2wL/RYTY1izLDoB7JKR5gFUN0CesfGGf+twUCMNXXPTF1NJXEO4x49MPXkbRQfC6M5g0IXjt3u3G+FCnwwao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743552594; c=relaxed/simple;
	bh=97LJHJpAJD/1nWbb+vMkhw9zytm+aCMpasRHZm4BTYU=;
	h=To:Subject:From:Message-Id:Date; b=QV8dPrYcbwMhnYVF7BRlb11/t++HrpwUv+ea+HhCt1aMVQiiHOFBbcK4B76+3d8h1Tj5Liktu1aup8DBc/TG2+NhyzJpn5ayAbZukicB4cCGQYFbnKuOYlaWMfY/RhdyyKtZ/ACfnGs8lGahHdZZ189PfGGI4Weq8DRpoAGn7zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUqOn8MG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUqOn8MG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EA2C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743552593;
	bh=97LJHJpAJD/1nWbb+vMkhw9zytm+aCMpasRHZm4BTYU=;
	h=To:Subject:From:Date:From;
	b=IUqOn8MGdHLmNmj2oKTKN4f5bZeg5sZWdJT3gcha7hBf008Zq8x0nuDwy321u4opA
	 xvoqshhfZvJc0yemMQ/ceVOXnJBxzcaHYn7gdFRF91X027WIVubJrlJh8KxgIwpVkY
	 czwqOVq9nL49pVDHaig7tb7v/WI3FBzE6QjlSmBhxTMM0l0VTOIlXO9EgPRfzPsuAp
	 /l2grPVpXeaqfPX419zDJ/O/+ugWaUqKP4gSZYGUrECwRFl/oqonrKbwQMaOoPDlMJ
	 xmZ9dIadfhah4O6WPrIJ9+qNjxk1JYkcgbHFVdq9iSDvEL3U1JL4TiExBTW9+GeDTl
	 Zm+vKzAvFXxag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C75C36010
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174355259361.8029.10694481099768402271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1def562cde3958c24d4a77bd49294d2944e4406f3d0c05bb99492f27fb2e359
Date: Wed, 02 Apr 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743552593
