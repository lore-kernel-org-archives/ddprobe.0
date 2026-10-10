Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1CB1F1534
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791648034; cv=none; b=uPotSbZLsaYDPlOT3LAYEBnqfdk3VR6m0l5sJ0W/pGmH5uuJnSg674BncsBSYtihBV/l03MvfWtbquj+xMKvBY1A1O3Iy3DnQGd6Q/IMR4rRkQwgbbU3oJW4NIqv4kh9lz7rxlii11MGRSfrp31swr22K1AIRYz9ZgLbK1cVCsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791648034; c=relaxed/simple;
	bh=YeTTeBDFrwfhkD8AJJh5CROAOD1vsJFecotu4YUuA4s=;
	h=To:Subject:From:Message-Id:Date; b=B2GWYujU6TJ7gKPJWSY8/Fez795gkNkRUeBcB0k/L+0yPRMupHCAO5QtOLGz68SNv8tO4DM0YntBvKdsrcTMW42fZ8AaeYGPp8Ip2U21cHM2axXapsGzKRzTtK1M8IKItdNI1N3x/7ZJoYFJH5iUZesiUgAvDX7sB5WJJmN26ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwlJPjZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwlJPjZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16A3C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791648033;
	bh=YeTTeBDFrwfhkD8AJJh5CROAOD1vsJFecotu4YUuA4s=;
	h=To:Subject:From:Date:From;
	b=CwlJPjZDe4GH4IwG7+89AcDe4cLwflZhX2Q8fNHcS3mFZLjfYO2AkmwHKYE6xSdp6
	 SOnYOH4X5GrPACLItNy3gfpGB5cjRhgDM8diO7uFs6ZjNB0fpPNDW9+gE9zd2/uoUZ
	 9QOCXigY9HQuAUCrHLPQiJfghgNEnoxPqB7z1VmdVjJTAUAS9+Djztcb1bNpMGX+/7
	 mjct3qX+38fTI/njqTFi1B+vtGZzxdf856HaM8uRnW8GjBEnSJQM0p3KObeLJ3zv4H
	 EpNfGiEpYVQT8p/63lsebL0Yiq9e+ghunrRQHTgUnFTez9N3CxiO/MPsugrP5boX5f
	 3+Iuh+E/xhIdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0411CA9EC1
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179164803368.16247.8780173120420800098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c1a6d3567c11f234c9b20dd1b3480c002775825c841e7b5192d614d58a8fce
Date: Sat, 10 Oct 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791648033
