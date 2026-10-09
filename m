Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAA5499F05
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791586834; cv=none; b=o/S/qw08qvVPVTaQgO6kS36Kp5dUGqiZhlneqK/ZPwzWPbNGWrZ99ObOcYGP44eR5ppOp8Gf+f7zjE0j2z8JFPSPdjhntQ9xnoD/APe8i8+ESopab/6ysnc4XAQjdmRWHVLlElEDT3p6my+4eyV52LwIUBbT7w3JGN9cR/E6inM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791586834; c=relaxed/simple;
	bh=AYQlyvTqweclFKih8vpkjBaFkaTT4T+er0Vj2EO6w+g=;
	h=To:Subject:From:Message-Id:Date; b=fXj8GIJz7OAqw6MX+uvk0B2k0uBAqy7dokdoCgM4gBzXf8pSoqX1y/fxZrWwCSLHPsSQgQCOoqGbxNMeaSOMo+AFyCe/H/A/cDgOZNwEhFqFGIMD/KAKRLtBA/QkOyIx8J0XmG3+wLuYpjXwEbls72qORu+fbh5G1sXXf7GgHk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtvMLYQ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtvMLYQ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF2DC2BCFA
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791586833;
	bh=AYQlyvTqweclFKih8vpkjBaFkaTT4T+er0Vj2EO6w+g=;
	h=To:Subject:From:Date:From;
	b=YtvMLYQ4FqjmVKuacZFrDbRy0IZiC+F5GDmAH1BdL0YqnH34JiVHmEvto57S/pv2q
	 7Di8/Hv17NhRiyHA6uFhvXk9oMdg4NjfC5/N6W1QONAzd4eshYdj8LnnUuM9MLH1s8
	 XB0LunvuuAw6bnWfdpEgGdmHyh+6m21nklr+HFEWFOv5dND1jErWRRnTEZOrelF1pu
	 2kA+571kPjCtO0Yhwv0iCflbMBe4IBc0MEvkvfWvZTwE/QZ7cGfZOphIZKJRxXLwdG
	 PgORTiTl0AGlaiSfw1os/yA1zKIHqjVSV4Xs9Pnhsw4X6Ms3mc/OzmXTmrJ3G/xftW
	 fSCfL9Y67bOTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D84CA9EBB
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179158683368.23491.15218286370193278121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaff5f1dfd724f9b348a0cf3a9992e5dc43e693dcb6fe516e92defd0cbddf653
Date: Fri, 09 Oct 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791586833
