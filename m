Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351E532861F
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 17:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783013914; cv=none; b=p1XysW1YvavqXjHw5a8Fl10VZ7lblKcPNKG6ADz7d1IQ4bqVl4fmKJYN4Ta8yKs6DWooSU4Ig4eSsHqv3tgaiGTSNQtCRBgoqvk/Nl3EJnBD2/St04Adhc9jiKQVMLx8rRLPqpyJGfLnwy8aO35ltiC06A1fQuDto6fkXRQONRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783013914; c=relaxed/simple;
	bh=+y447dQINTLsnHwF4DcCh+lytQFO67GnA6a5eJ6VLsI=;
	h=To:Subject:From:Message-Id:Date; b=XAf7oU070js9XE2dsQJZjw03THzjib44bG2/oQgGkvNiN/zjtXJwH2iL3X8XW/b7LYtRFevoK0KkJbZjNvm1fsjLk5tsu/oblxxDU9uTBJsXspXjz/QP3STZeGrS3/CV+xIeDlxy5Sp2I0YnrcB+V6TU+sVOLGEZdqexc1NCsJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnRRGfxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnRRGfxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9AEDC2BCC9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783013913;
	bh=+y447dQINTLsnHwF4DcCh+lytQFO67GnA6a5eJ6VLsI=;
	h=To:Subject:From:Date:From;
	b=tnRRGfxLFhOBxh6/t+DW+TBWILe57FQK2O+RP4J4Q1pmkJ3LRYDT2/2RtdbyywXac
	 6YNdk8moNoc68ZP6wcrF/sG6c4JegN9abxEBbOBILImD3j6Frtbs/xPGe0VmnRwYj9
	 xZPDIc3w1lvOsfWVEHy1jVF7TTn8wVj4vzcy7XR9V9vOG3N74HnKrk4RmqTqPlzfTJ
	 QXocHFTJEEsHQY4nPgWoh5013BWZh5XjKHh10vKmvgS3cPnBkQ8AdBynNI4d2fScO0
	 3LpmQGjxadE/g3IBwFfwKgJH3ZJ/sRliz2Ii8dl6fiGtj3EDkOr1RgMCzdsyuKM7gf
	 RI3H7Rs4huWLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E55C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178301391368.19852.15664441238552675304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c09369d85c787c8531d09605666fd02cfe9717bde31914f692f101ae3117a2c2
Date: Thu, 02 Jul 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783013913
