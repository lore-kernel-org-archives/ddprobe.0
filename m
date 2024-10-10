Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130CB195390
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728544554; cv=none; b=GGqpEOc8vQKSFNHiW/dLD2qP4uCrNjIiznvtwJsqsz57B6Nuhd4abwx419u3uHRCNQUJ5Xg2dH+ORD0Cxn2KAkij31HBsC/559+Hj3q3dg799g+QkEBonhCQ2Cb07YVhJRzspAu3L1wck13ZVDV8IvGrPS/ZeF7Ep7xgBUeZVfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728544554; c=relaxed/simple;
	bh=mKBDPy1ThjQ5mrqpvLAtdLI7yJokkeLwn90p4DBMK90=;
	h=To:Subject:From:Message-Id:Date; b=L6Lufa7lZsiy3huRWN0YW8LgD5ZsDLpuOQ0uzccHU2qKS/vRWsmB7dL2ACS/l+9grCjcOOOEyo5UC5mwIRaaOyVSPPDTIgMk60VhVmEQRkCZ3I6zIWPEOD80mznB/IiDNslYzcH9GBswTR9wz7qlRW3h/v/wu0nmSHhdiBLLRz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UpTU/cVq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UpTU/cVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B91DEC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728544553;
	bh=mKBDPy1ThjQ5mrqpvLAtdLI7yJokkeLwn90p4DBMK90=;
	h=To:Subject:From:Date:From;
	b=UpTU/cVqBBYsTTr+4j561zE1MNSa2jaVqrTfWiaG/VyEx57A9+7dZ5Yex05z1uXd0
	 nbKRcZQ95ii/v8/Uurt3vJ3z9L4PB/J2otZCQFV5W8d7PThSxy80ABN7cSxoNBWu7L
	 6c0mIhYPadjAFXA13bHHBzEMOUTbkktv8npZRuNPduvbbgoGCc9+hRoK6l/jPh08NJ
	 BlyK7eAAOLjprl2Qrhzam/6O5zVRi0Qdqdhq81G6XJXJEdT6a/Kbf1IC31podYBwgL
	 9fqEBReUO25jH2NOWpJGUuJZPZydW7nGpS1a0ENOlUr42qrbWTLb7EnyD2r6somj2R
	 RSFVipZsdrTqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E33CF07BA
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172854455365.14113.9680806023947783460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d58b4dead1e57629490f84a83c8eae0e641f2ec6973c8b6063258c88bc4c8ba
Date: Thu, 10 Oct 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728544553
