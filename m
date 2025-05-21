Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB2123716B
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747869594; cv=none; b=co9/0iBmU221ni/nxt4jT8vbdDpmayY/K8Ct21oTdkotKJ6PKEVmahT3Q7IlfPt4PImD7emfMdocewuGigtXeURaBBMFBb9mWH/oxGX84eT7tvTu7snhvJjwDoY2LkXAjSZmsFCTEn2low+u7TSP6WTuYpmM8Nqh8w2geSq/KVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747869594; c=relaxed/simple;
	bh=G4qn3ZxlSJicGaqWMIQtqmETUWvw+Eb/j5b9i9eBlso=;
	h=To:Subject:From:Message-Id:Date; b=VstyDjwxcBVvlBWXgz+ARLIC6wEojPGQQjMfetRoSZs4ggJAZR9bxm5T090WVEOEcEESYGbYXk86+S45eskQzFeL+GLVStPnKRrFhidG3oY5kxFsRSk5LiQdGgFOEVp4V6+jRXy8NStiBZFICZlTbvXvWCr+Y+bhE9gYjwD8QNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SrOKrm7X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SrOKrm7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3104C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747869593;
	bh=G4qn3ZxlSJicGaqWMIQtqmETUWvw+Eb/j5b9i9eBlso=;
	h=To:Subject:From:Date:From;
	b=SrOKrm7Xv1foc0QMl1p7vS7jc0lU49KOdjqFar/E2N49drUK1vpcApyn/dh8MUCEo
	 hOiaVQY7yoxsTUnLo6i4j0ja7ZWHvWzBIFYaOeG1rXbAbkxGC/EWA1l2y25WMozdLO
	 XTp5lBQtdsi3EHmIeryRkKiFuYBYeFyTeVt4wZU0bvMDj4Ea0sMeW8AzQzjZMBMybc
	 HqeIJeQgzUhs7WMDs06zcfzKi4moLcnoiQHEVZemLf0byc5DbppbygGWBoJnOt8mcb
	 r6c2DIdQQeYMaYRC4V/3SR+FzArf4UIJB3nd68YZHSmxXL/gHOab7o5XaQ0erJbWCp
	 VpRNqPk/cKPyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92333C54E90
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174786959359.30595.9227056084551982557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad45588bf00edad10a5a683ed482570c2d97598320f9dfa2a54db2aecafa0cf5
Date: Wed, 21 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747869593
