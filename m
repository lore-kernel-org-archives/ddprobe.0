Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF45149C6C
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722026154; cv=none; b=JfGWPruh929HvIx1km1gS3Dd5nhX9ES3IeJNBFFCUMNOU39fwvgAQiL6nv45OD/bs5J2s8OMoYPHy+easE9ZLqQX86Ashvy++aWxtbL527qxyQx3K+W0t7cQN2Kh8YPjftyIHjrun8uO3O4i9R5w90IFhP9zClIXdhTWFNdjYr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722026154; c=relaxed/simple;
	bh=SLK52trFSh1GUyl3r+nHVJrVVwpw0mCGeWGFkHE+7z4=;
	h=To:Subject:From:Message-Id:Date; b=ihhWvD/KgD+kH6BMYnEWeWEMBipqKoCNV0PUDgJm+6YkzLDgH3pOGyJmOPCD5M9CVzsIGeuwD7ExDHZ0adMTNWidnDyQjK4Ii9mM/lMznTh/DSW8wLp2tyw0SQZ95fiLA9818ueVw81i1HPgHaSAZ6LQtQ5mqyDQHsyFiT9acrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+OBvEW1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+OBvEW1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB537C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722026153;
	bh=SLK52trFSh1GUyl3r+nHVJrVVwpw0mCGeWGFkHE+7z4=;
	h=To:Subject:From:Date:From;
	b=u+OBvEW1Tgk5EbEYuSLmpn1DG+Ssh+NCmME6z1xfiM1qqEH5Z041Eao0X2PudOS66
	 OVN0U9L9xzqb9ErvTOsax2BEJlBtubmd5V1JgCpd1SwTuFOQ3sb8gvFD0yI3Gd4seg
	 K0BjPkgW9/byzykIuVvjpgZWD+MJTLKWnj8fvMoG4pcsXYtEthrstpiCK643I+QqRP
	 IUCkRJ+axO1mFK5Hvxs40dz2GVpZXZaR3Q9U/Mt5x1nP211BVXgXIFy5gcnA1vZcmo
	 DtgFMWIrZyjKDz/GvUeNbaURT6bKOPMIGauuhRw6WHxG7GEOprP+MlhjEidrbX07QV
	 B/qvqjg8ee5ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA39C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172202615361.30734.17740354601466983714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 751adb65400639d172f491cb87d6b1a3018635f098db292b932459c4c716544e
Date: Fri, 26 Jul 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722026153
