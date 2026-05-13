Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFD83655DB
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 06:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778652634; cv=none; b=jyc+AjVaZm+cBzZrX+HrPYyiEH8e86Krr2ARVQ/Kf6XA+2egkE/zJHRLfRSTGbDU2OezArlcGI7g4aSl4sNTMfOtTLKVy3n/DDF3a+nGzcTN7h7FTLld7QtM4qJ2/6bBAK2+TFvZd/5haESOdeAHQXjWsBfXJbR1/Rp3EmirMO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778652634; c=relaxed/simple;
	bh=DwbKjXycogipcJAsT8nM++/9AhgspaPkMa+xfvmPlD4=;
	h=To:Subject:From:Message-Id:Date; b=IZcK/Srnhh9lhlOw8JAXYOQvTTy/J9snqAAkvdZMDrN9B65nbXu8/L/vdYliSgCNmzb5xp0FcibcfI3T4zPGAKh86vAs4S041t1CeWfONb/nCvoLJMqqojgseF9Ea+VBorZGHtyfgeLQpB9KRN92Ux9jka6qOKjI2TJLxl6KnU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSIc9N3f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSIc9N3f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5FDEC2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778652633;
	bh=DwbKjXycogipcJAsT8nM++/9AhgspaPkMa+xfvmPlD4=;
	h=To:Subject:From:Date:From;
	b=WSIc9N3finxJZ0H7GO7hq9eheRXvGu1YyqkrMtDZOV0P5v0WMCHNN/6vtTyBbR3we
	 ZUWIyWEoO1J2DdI5hnTVZy9mLOsGWiGJOja7IzCmOiloXkL/vez4tbIvSk7mbdqteh
	 M5g8MSutr3iKNY8gIhoydsW6D8mWu4q8b5RkqW/rc55niJ8H7g77LTyFMQK8ROPF7O
	 S9/gUJDwXpyPPzqohEp3voDtA0v+gXL1EmFR2vARUEqS1+EZibLOTMcyCvyWNILwk/
	 ulS3/Sg4yUfNrhYcIqlXOTdr6Obrc6KNglpSMvwipAGr4nDVgdv0bWByWCShikhmkG
	 dkmLMnGhL7+/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02EFCD4851
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177865263371.20645.13060013911872262050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e57acbe423dfec37ffaa4e0f924e1cd172c08214d68722a47664fcdaa16b62f
Date: Wed, 13 May 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778652633
