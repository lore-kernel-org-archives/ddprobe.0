Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E313BF684
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 06:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782195994; cv=none; b=IDIr3VTlri7o/3SzzyLVp6IbLyz4oFS0UaSHmYruPZn9fpXQJAtgRhNxshX98HRAq1Cnt9IgSPOLnZCNInSj77t7IJa9UlJPq/PYLltfy+B3sMn5LeD+0GF/oFoJBOlf7zSRNkZw5itRQX+8VIVEDjZFcQGkt6immnqTVM+mb/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782195994; c=relaxed/simple;
	bh=Om9WxBN3flEgq2/Io0uAqKAfZpG5CHf5jeKwqB3Z+14=;
	h=To:Subject:From:Message-Id:Date; b=cplYWzljBbX43l8hEm7UVsaWybM9Q50dQoDmnWzGWcAuBt8jv+zc+Q6hqcLJNAKmQOBPyH2NRAEqXs51AKRo9TEKJGJJSpDvfV6AVG9qM/tbMXVqpzMGkHKqdb3aIdHHDXfOM2COJC6NsUZJJ0oAJDDK4Q6QPWuoD3Ti+7Uk35A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8f9x0RA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8f9x0RA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB129C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 06:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782195993;
	bh=Om9WxBN3flEgq2/Io0uAqKAfZpG5CHf5jeKwqB3Z+14=;
	h=To:Subject:From:Date:From;
	b=d8f9x0RAd3RHuK0BAWnoFvh9gHkv9QI9gp7U9mkqZ8dZVaG5uZTzQ7Use05dG9TqS
	 YP+7Hvw3rw+SrwcADWUuSC556W8sPW6OvILsLgrhtcylsB2YRxYG0mYSLhxH60uJH4
	 JTtX9oB2OoCz14s2GqDLweM1djGQvgWVd27hP3yMhm5DwSZkTLw37IT7IKzcabsiod
	 HdI53d2SKj/y4cey2fJ+yELIL3KNOWE1PvVzsIYnuIGFXbkCujaHW0K//IHrrqSqpK
	 0jAXOY2Cb3bIr7bnkUEO1PHej1MGTR2m8w8SL5dxRVav4hfoE2nutZ2OgM8/up8th7
	 X84s7MkEg4v8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB061CD98F0
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 06:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178219599369.11821.2483698546497027772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 511017d9296e7a7967eace7bd51c43c787378312883bcaa77224c2308140837c
Date: Tue, 23 Jun 2026 06:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782195993
