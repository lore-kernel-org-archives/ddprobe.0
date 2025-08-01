Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8CA128395
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754080194; cv=none; b=hFJdyUzy8fg+PSV8M30CZHmiLcox0rtTwp4+780+PaAVt+INpFyIqMwvKgkzrKIBj9xO8MwdgzlPjV17jbBx7tv0nyIqyNKtnl8ZPW/NQsqZOeeIhaTUkYYM2jV5Syv+JkY0aPDsazorsoUCzTSnQ7HjUOugXgar46sEXjD4Ov8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754080194; c=relaxed/simple;
	bh=D32/cI8d8LnWwOj/RfHbX9HamMaLD6ZbLMr0QZUiCE0=;
	h=To:Subject:From:Message-Id:Date; b=g0MZ76869B0h5Gs/AjNuyXGWNc5p+Q/zSDfldbMLzbVTZAQbIoDJ2EpUUIBjWt9KDetIhuWmy1eCZAQP/NAwjZZyrjN4tXkS5pz7HP7I84fP7WuuJPeqGaC6FFNB6Xd/bJLljI6n5inxeMUqdwJ6J7xfOaUOq/24D+PEzJ12YaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkHG3WRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkHG3WRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A659AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754080193;
	bh=D32/cI8d8LnWwOj/RfHbX9HamMaLD6ZbLMr0QZUiCE0=;
	h=To:Subject:From:Date:From;
	b=NkHG3WRBpLPayfUZw3VfKZf98b7hC/1iCxaqfNZsDTTawndIvTs+IxCqsm/rCs7p8
	 97zhj3+io8vxDLO+B6SunpmEIv5kq/K9U21gae6X2rcxAEHbZoeMEBWCbf17nwft/y
	 6xBlc56YWVLvZ1i7BFOgokHGzJ+NAAAaNQuKjAAkBcvKqYRCrX94nkOJATFzR3agF8
	 763Q0k3qZY04CDdXn75c1SJcleDumiY0IL1F3dB9v2bKzgw1t6RWfkpSAGooO+qzNY
	 ltn7x8fZR6PC4Bx8I+G6daMeutaoHnzi92ROleHPll2L3UWXCCYGQgptPKd1HE+EHv
	 guZgSR/ZF9Hlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935E3C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175408019359.27596.2414698197607674035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44e65f29547171629f985c0896f031d9a6e25a3a96183e109dc511817efb33dc
Date: Fri, 01 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754080193
