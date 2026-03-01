Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2718B1CD1E4
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772372094; cv=none; b=YBp85xjBJ0LQB1nxauqPoNKlTww6rXnSS6HgDRBM6VNzBRFDhGVtNnnCO/T8bXmRW5Ul3ZoKcXnfY5WFt8cdszz6nFoi+qQ2fh9LTFg8OEzxGPz/PsowIllBaQpwHyrrR3z0GYF+ecSZZYax1Kc8DZmYtiIzagn7EKwBaINA3Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772372094; c=relaxed/simple;
	bh=Hf1+up5inQUy72yw9s21dnweWyDb33E+ecc8xCWtbl4=;
	h=To:Subject:From:Message-Id:Date; b=BULrgqCaiSML/MBpRpN+KBihs385XQkaDz5jkXJ+eFEV3Na336ybGJf207IPc2k4Cq7+zSps/0Y2xamLjBP6rbMnrMFHi9fmFBu5EhQDgoZEFLozm3GrYDhJc2uRD1CjqvePZ5O04Vvrr5XouuLfxvbHrm3Zg/mnXtNiQDJKf0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xyy1PeLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xyy1PeLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4062C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772372093;
	bh=Hf1+up5inQUy72yw9s21dnweWyDb33E+ecc8xCWtbl4=;
	h=To:Subject:From:Date:From;
	b=Xyy1PeLjOYH7C7jaJK0I/8SjDa+xEIhVJXo3XB5smmys6XC2d4G2AT/iI5einYF7q
	 5XL7WYh4gzjg7h0JDLRAdGRnuPE+sJ8qvKA8QzTsdOQCEOFkhSNw9wit6rWLbe0pCf
	 hl9zs/pMphz3UZNlCOzECmd8XKG6jRMmcB+FJw8cNr/bDvcAyaHKakTehpNa8HW2qg
	 0uyEmIQ+9ADXqLGKHHNQIXoEEQ00ThOpywDOh1d+8iRkCtXYoUmXQMwjDRJo+zMAWq
	 rCZpUKMwAAcYO/vjd05maMdJU3hdqXSDJ1hR0fWtoGwvviw0FUkM7MOldpQQZKM/87
	 o/cy9/Q1HiG8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2EFFD0068
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177237209362.19276.2064587680979994792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45f4c69f7caf26f98b76d25be45390142dfe1a13acc80dde189745b1440446f1
Date: Sun, 01 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772372093
