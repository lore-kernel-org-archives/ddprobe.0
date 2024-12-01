Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B944087C
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733052354; cv=none; b=TR6wgv11mrKPl210SnYo3xjNIqffbYEXD5sPbVla7JBVX3V8fQugzGfBrml5NGO4S7CH9kClP4A/yBoYI1kAgORKLHD2LSXIR0nsRN11bRrd7zDgC9UAOf5U2o7MYcWzhcGOA1KnY+lBtnleEvSLjPas7XBaxZszLv3fqQxom8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733052354; c=relaxed/simple;
	bh=u/DNl1ut+JpIpxityTokhpabdal6nenfkjHywNttX3c=;
	h=To:Subject:From:Message-Id:Date; b=NIxvMbz/MVsP5pDJjl6ttOXID6N2+wDxrwhK9G/9pskCvxCGSHNqJalUNjdo6JX2C6A3LvMUBwHPwefDxrP2ZnFl7BhxJprHZIo9xbVHfToQK40q1GZBnvHD5BAKfmSWH1mJTSIxihrsRXZUB+s2Nvd2HQ63nU9tk40iH31WdIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/J8hkOW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/J8hkOW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC370C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733052353;
	bh=u/DNl1ut+JpIpxityTokhpabdal6nenfkjHywNttX3c=;
	h=To:Subject:From:Date:From;
	b=A/J8hkOWkLBxSJ3ZofyLXaU2ptiVcn8R+aH+eoeoWKKVToS51rguUciF8aBoXj/NX
	 bHbt5O3fTAOJu2VjAJ0LD4vDLSv0VjX066tNgM2+otLnagqxO7HnxsBFQ7gKGYj+Nz
	 iIruGiepEyejMB733vLugjfEXckM5nh1mDzf+s85LwBwW33Kf176vzKreSeb8XLBMg
	 /h1J1rt81JeZRJHIq7scKzgSuKIDs1E7QWo9msM20tmBZGV9Csdl6lZE7z93anWWKr
	 jkhxMcO0Gtg6ZAmzmOob53RBMP2i3O/81zwy/8YYyIwMQxEHaeLKE74NVK1HqggOCK
	 64hx+S4UM/fvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27A9D49763
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173305235362.14744.6536729825838792849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8125681ca4b49823d93cf60cd7fe2262089541abb83f3d5c2746b100a9126ca9
Date: Sun, 01 Dec 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733052353
