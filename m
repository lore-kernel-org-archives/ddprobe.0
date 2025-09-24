Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C2F1EF091
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758730794; cv=none; b=i2lXnihrpY8UDgoP1gtVGOyxf0zGuzn3o8e8b3S50T4KPpm7yFUiDvr8zLr3erSfZh8TuNdjMeQ5Ac25fSvFTXT9hpQD7emSkVop+fI2OF9pA9iTUXVKB5K2mgypChYYYWa3XscjLSDe4xQjscoBAum0NL0BL6N9QGRCvVf9liw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758730794; c=relaxed/simple;
	bh=cHHwheBl+7URiUsRoRGysYPJRqn6u5Hj9Ua0CsIXSDQ=;
	h=To:Subject:From:Message-Id:Date; b=KrIKs7aAivjdovGyEznQX7zdZ/Zw05mU8OddZz/X6bd2uNz7KnjW6rt/MM+KacdFlxMsE2mLLaw2bXAuMBjsskmhJ7ixJVlxEcbtx/DPJyhrWoNh5dFlsV3Y7QVn4Z/EnFX0wKakBqK1YwCe90cM25Vc1nMMC9XV559MrnQd4vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skbjrIdI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skbjrIdI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81B3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758730793;
	bh=cHHwheBl+7URiUsRoRGysYPJRqn6u5Hj9Ua0CsIXSDQ=;
	h=To:Subject:From:Date:From;
	b=skbjrIdIPdhX+7vIuWt6A498iKOty96sdVFfTbb8dgfDZINaFgcrCUF+BNSDP7b/H
	 ghZGur19LGFTIhfQbHombBn29m07blicjZkuPdXj+yv49quqJXzUx5vQKTZgbikiY3
	 GQMITlbVmSCNBv2d1cRuOAPftwau5ZIGSLwKO9Y60liWqj3m6YWUwhI6iN1TLgVhuu
	 cwPzoiV3QYboLbezojLLn1HHasyPJxq/JyYOPPCpzusZ8wXnBU0pNWsI/y0m6prVWG
	 QquQIRIAqoOb/jh4U54oZwwMpagrHN6xKb6VLWmV24apDyky9cLYvvY9iEu+phxZdl
	 wqgX3gjbFFA4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946FBCAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175873079359.18102.830130722343766756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2698905a9b8cc736f36a670a30446a60e573ed2ab30503926875a2d3dd9837ad
Date: Wed, 24 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758730793
