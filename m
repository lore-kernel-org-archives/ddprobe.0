Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA903932E6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788594034; cv=none; b=s6siW3xelRl9PvDMLvam+yV7WotHB0qXj1ClQu8n/VoMPp9BaYqO7jsbFlI+BCt1jDShqoqh7IX3ifInaOl8NY0MXJUQOj5JW/mCSL6wXJT/MSKY9DGxzx4iJ0EHAXIioH37I9PexnRUEE/Uj5hvYb1gif1vSx4BWEzmy7EbCdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788594034; c=relaxed/simple;
	bh=++bEP5nVV59rhreGheCUrySLduR89Af0P8gCMM7wbm8=;
	h=To:Subject:From:Message-Id:Date; b=QdyuR5l6SS/r8E2vsdA102/vSKgWPO91cFczVjH3SB8GlgaB79zj2rdaKwz9vuxE9nBkuuUIraX90IGrUhn7Rky1Xz/jMP5JP0OxV4+uFA7M2qVO+QxbXADYDAUw+tDEogOLXmKIr1lCzrWRcVD7KXyuVBeJfe5WilyAILAS45A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3SqT+yQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3SqT+yQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F6CC2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788594033;
	bh=++bEP5nVV59rhreGheCUrySLduR89Af0P8gCMM7wbm8=;
	h=To:Subject:From:Date:From;
	b=g3SqT+yQO1tLsQbj3tpKnG6keQ3AZzz/zA33BZY/26/7kALuo27gldQUmBU90ee4e
	 eXIoZ2Qq0xKW4Jrqrzh8Un81jCUUKNyjDptvjHDijAXZ+AZJc6TL/HwqGRP/Ff/uGW
	 +C6hNafDd/fGAplC6qfKbYPz6bFCsUkNHcvOPBlsZN4XcwlIckp1Bn88plioWTgrwD
	 8Y1vBJzW/ymLHlctN/Kc5ixT6QZoWncQoLMZm59jNdKYQaq4DSCLv0ckT3Yo9NWx7O
	 1s56hhbiISHqe2jdiyTFpOYy5uITsmIhcHPDvawvKs7V1EXz1czSxpHi/Ob5V7WuxL
	 dT11SZN64ZOkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B053CC624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178859403370.6805.13192209940071139488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a016c4b5d2074278124ff5360de93fdbe732fbe7fe2553c98a104e3f853c3b4
Date: Sat, 05 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788594033
