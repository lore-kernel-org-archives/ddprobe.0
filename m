Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33158157493
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747557594; cv=none; b=cb5mHi9+jSLNUYWp1PBVHdafbZ7D7M9HWTLK+IcvhVTTP9lhR+zmmyrCxTPVAwc8NL7K4l/Hg/33APKgLEi5DZNFk05sK0eyQqC9t57D73C9tfwOrRaQHC8Pqj3U32reX9ZoGTPA+GfzY//n1z7bw5Mpiu9Se00aN/34qIoiwm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747557594; c=relaxed/simple;
	bh=1dlgfAf8YOGb4Bmt3oMBuZy571Tv0F3QqLwZdxG99mo=;
	h=To:Subject:From:Message-Id:Date; b=k9voacl7D7f7nvflHWUN3Un6Tg/D6rmfGhEUPA5Vi/tVoePwiLkUNq9mISQduxzOn9NXnwG1yM+7/GqvW0GR8F/v0Arav/9mF21J6f8l92pCrJcH09k2qnRO/ckFAThYKoM8GltUdTQ0g/njzMqnppQ3XpqeROplJTYYK3pxZeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UnkGwcmm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UnkGwcmm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A828FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747557593;
	bh=1dlgfAf8YOGb4Bmt3oMBuZy571Tv0F3QqLwZdxG99mo=;
	h=To:Subject:From:Date:From;
	b=UnkGwcmmCEuBZ4STOyo80syvRGPvIpoJBvSj0F0tS1cRdeRIsCIFWs++ctgvyOB+Q
	 EuxerLVtTTCrdZuHOZ8UakwF6FB9WrY49BwcAwICcednPOpZ0DVwllSUIVAmtlbldH
	 lRQthu7O2SxbOVm80zc+YX83HRxGhCXraXGL77IjViMWBW7xIFWpr5s9Cp4/Mzjwep
	 M+JpLpYdECTsyC2Bl+zo7Id/fn16V+nznZZ350jvxUd46GhiqZ9wgNDF3Nf8kUNp+2
	 O0t2A4vGbH/tHoAiSkCqwb+5y5jICZ48A5zCAzsHeX3RYg+edjEQZeSeNVl6Lpturs
	 GJn01rOevjvlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FC6C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174755759357.9736.17919422845258372506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faed10db34c6b3480f2e5ef9e826f5d63d0d9d550d832606cead0390e781b46d
Date: Sun, 18 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747557593
