Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 833112D97A6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 09:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775642134; cv=none; b=Lj/kkoU1bjS/XOVUlZtdVM7EqElDZ3B3oCxRQ79DKijRB4KpH/K9Q8eHR089iQcXSa6BCrd9aWKskP4t3BK98PAYfA4HEVXJfqFLWSQkwtj7R3RePOhlQsZb2P+DRHJKAxvMgGBmX+odcO7A2JhO1TYQmxdOvqp1ONo8AvdMjvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775642134; c=relaxed/simple;
	bh=JbeTITuAnhLGYFBIil6OhiINzNoZREqT6TmsSnr8/YU=;
	h=To:Subject:From:Message-Id:Date; b=TDQNNAzHzHY/9W30ivO/NTnCgRZtxXF1MVAmJt2i5tQrpLAEjdMPfxw4l+Zxppb4D1PvXUJJHtjEOU3g8TBAEo8kskxPau0xEgvMXU1JoaENtujnYrEML3P8RaSo0lTEPpe0t9xrRmhGHTe+p4fV9u6CYf1Vxauu6xIcNUEEy7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWFRGe0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWFRGe0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC02BC19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 09:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775642133;
	bh=JbeTITuAnhLGYFBIil6OhiINzNoZREqT6TmsSnr8/YU=;
	h=To:Subject:From:Date:From;
	b=FWFRGe0XzGP7KzQAcuF49tbEPzJbh0hKxYAU/NsztG1lT/DUhtl9mweHPvMrFoLXe
	 DIqNkl2ySi6O+ZX8tb5urEpg5DhyN+U3VAjmO9MgKKrGW+PuusXZRI5E+krG4htKeE
	 XaEHVNcdVF3g7zuDNwgMNCGJ+sqG0ocj+ZsT+ZVOjoLlEla7nSPudyLjr7wZV1mi+w
	 CiXmow0gHiicnX8QMGBXgJJz70oIOd+ECGF0m74xQxrVJOgQ2xH1pnyaxNNAKPL78j
	 z2Nv7zbcAKl+qUY/Y8MXzX6W6qDR4sh0U9pAOcoSwldJoNy7byHhATneUwsbfPCzQJ
	 9uo+SBn9h+o1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD5F1073C89
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 09:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177564213369.29388.11321422880589083925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e5670abae817e9573efba6b860dd6d5210e47607689264ee8d8ac1747ab22a1
Date: Wed, 08 Apr 2026 09:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775642133
