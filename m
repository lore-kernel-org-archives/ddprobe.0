Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC021DB366
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746859794; cv=none; b=SyQGGBAf6idBaXAcGJbfYCbieddS2AfwKi/RgQqNm9CKjmyYcoQizJ9fjy8Ro/nmAtFFOuXedsP4naCE315/fKzPOiW4aSyFfCgbgJmdGnRd7xAB+kkbfcFyvdcAiKAptgX+9YmzbRjZSoT4tyDKVY8p9DJ+ekt2epS1PkGMgyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746859794; c=relaxed/simple;
	bh=bWqi9L93nFZ0AvXcbOXnPKOEvnZIxVBm5sU2MSHdYsw=;
	h=To:Subject:From:Message-Id:Date; b=AscRqqPL9ENNUCpGqpgMuIM2rVCCu577g/bJjAwDg2JYEUMZdiXu+7UqZgoaVTyfpho/QpARA2S+SD2iBdHIWfrR8A5fxXg9ToAAdnmFHTBNe85ybDgVPttfllHZqz6OiI8phWO1qxxHYIlV7WuiyRCGf2a/PSN+tMMuHTrUeYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yx3rWtfe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yx3rWtfe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CE1C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746859793;
	bh=bWqi9L93nFZ0AvXcbOXnPKOEvnZIxVBm5sU2MSHdYsw=;
	h=To:Subject:From:Date:From;
	b=Yx3rWtfeA3PVbqmipXPGgM1NWUiavl7quTixlyFo9TV8DYM5TponlwdeFxRANj4eQ
	 P50AIhiVTFYXYxeRhmR8HmsnK5Xrqq6CkdxILdtGRiJvXlcLixBPiwl+lxa12PewgQ
	 L0oB9+MZztSnl8lGdEojPZ2NnD4psp+0SA3FK492rEK7vazJww0HIHdr1ftVwpIiF+
	 qIP0gCY++ulo78b1zR292viGx/cjXsdxXFOVBj6AKeEp2N5a2tfQUzhIQeD0UkXT/G
	 k6F6eKkVKEHFNvrhpz1gX2XYrlO65n0Te086kvUkCG6v/+4LLV4e5FFl4NW2ocHPIk
	 f4YShnAo/kgSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94564C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174685979357.18099.13581979104038994176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78144c0617c3e0ea0505f4c029468e1764fbf6fa2fc41bfe3d36ca2ab52741b2
Date: Sat, 10 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746859793
