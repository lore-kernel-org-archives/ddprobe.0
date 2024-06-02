Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E1E2628D
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 11:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717326323; cv=none; b=q7Dqe3mORtdeA54rxtxD8b1We5Kp02svPBmQJPQOZbHZIc9vCZ7NT+/+BFTGq7kj/ZSanW2tHJat4pUzEtyy3Orcp/4Ehb21RgYbs1JH9rXY/f9Dy931accwb4Gjlsein5n5/kCJcZTWvLkbDin7XmLd1IMt6sacbtw0qh5W4pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717326323; c=relaxed/simple;
	bh=4Mr+LbcWn2/XDwqHm4jvbp1Gz8MoKwBqdAK/gR2CoeA=;
	h=To:Subject:From:Message-Id:Date; b=bxLZLj+//XCOY/IWUnN3r0z83wxfIF5R6XIZNWD7dpSV3rwjlK5ktpRkTlbM1ch0p2I9asMfaSi0JLnpeZh3gvbYvfybRQkgBCr+M3d2Ts/bm6pjyJ4N4EjeaqI1SxtBiIKKwnAhaKBqmU4QKb1bLhtKifQ/BU4DsEddLhi8x7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/KObTMI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/KObTMI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED389C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 11:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717326323;
	bh=4Mr+LbcWn2/XDwqHm4jvbp1Gz8MoKwBqdAK/gR2CoeA=;
	h=To:Subject:From:Date:From;
	b=h/KObTMISfVJyXdNxdGCkjXqWNlSeKUzVRQ3H51oHW/bxOjudpQ1IzhjFcE0oDv86
	 Jll1i4mlGgpkmVur9oQS0lA5b2Eu3fC5+ooxAHd2ijKzEgR2EMitq7m8KBt7RoM0VX
	 U8ZopEUMmnkbn3Yl3y8p3KmzCitBzrwt4SClqcUHjvXM6Xaml09vOBALRJ3l0m5A70
	 RAYwi0E6tuckEZC61waYkEqX5ImWkt2eUyBbv6Rr69eEIs7dS0ej7BwkMkiNW6KeQJ
	 b4MkGpGHG4igCSPq2wKEbQovTKe29Wgnr1ECgF+Z6NYW5QugQVi75DsJ4ZBugjGJlC
	 wSpJ/aFSVNU5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8E6CC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 11:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171732632284.6146.13767790465397738076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d5b2af4e7dc486bfdd7d5d33eb6389cce0027f6ecaeda5c5668553deed25556
Date: Sun, 02 Jun 2024 11:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717326322
