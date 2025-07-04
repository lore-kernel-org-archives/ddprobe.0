Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D939288C8F
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751621994; cv=none; b=LGPST+8+SCWGlbjIIz1iWDXCs/hUZ2JCjNvMbPJoJGTi5RhX/lSo3RnubGb8EmjAR/fxDbT/u1WexCs0vWLGhSniHYBbdb6drVRm3gnc19nntPGoXa4TRf5JSXzH+Rs/rSJzRa29c7Nroe1D4B0qZgvfgzF40zLX6WDn9d+rgM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751621994; c=relaxed/simple;
	bh=2gd0RoTCI1k2xZL6BNr4Eun4w3Q5Q9Dyx70n3PDQA88=;
	h=To:Subject:From:Message-Id:Date; b=kmLZWYEYF7O43bjHyVtcXa0TQA76FiTAm4W0VccL/MC/S3mS7JtyFDPdMnTAEe2fdZL3iCy220+Gtmt3JTF2Ba1uzzXLZLh9/IHZpOVwoSEYEnusJzOBgQulqHjn1RqAJQSg/K12GB3KDNYGI3cg5nzU6jZh8OZVTwqGtgQJDL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PMmt4rlB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PMmt4rlB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDEEC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751621993;
	bh=2gd0RoTCI1k2xZL6BNr4Eun4w3Q5Q9Dyx70n3PDQA88=;
	h=To:Subject:From:Date:From;
	b=PMmt4rlBt8GVZSre7OiCtpskaZGRPRpOYYr8e2W0GZpsD0EMjHDcXNPTEspLRQupQ
	 KcR/3kdMP3Dle3aljt4Y0vRf+anHPOciZ0h5ZRpI7eYng/mVAlC11ZbFeFzcCkpMD+
	 HMYZGe/WQ4r1/YsMtRxqm/Nc554ZOLGhKv3pBnV7qdU1xqxsuMEJ+O+2phbMndkcFX
	 3Lmscql/aozD/7zIiE14q8lv3R5TQv7TXpK6rBMv0zn/Fm55BBzbKG77BWAM+1NGFI
	 A4HAOZYaqozVcv61Gjc+RjJC2FPEIK/6sNf7Ufy/C0Dg9Kl4PX0Ljap1umxLBvWF4y
	 BOLfMHPBVA6Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0CFC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175162199357.16744.3921826027652531286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ee603024be12d5cc3c1d3f7367737624fa1828aecbdc9186ee5b771641923c7
Date: Fri, 04 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751621993
