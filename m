Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5418B3C416B
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787023834; cv=none; b=JY8W4Z1ORMRDJsxb51Bn3SCU9rd4uTNaGft0KTOiK8p8Bf0Nau7alhkAc7NPjJVDGXkd+7Re7welCtGn4NbUAmH6hqQ872eurV2sPAQFyHbnrEUpPlHcgCo7T51zztAHsGfAtUIbBKYXccsrdOrGx+GhJMbXE2niwlpalTAH3N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787023834; c=relaxed/simple;
	bh=29hb+k7q5CP0GRTJ2bmq6MF58upDl4++LkBn+JgElFs=;
	h=To:Subject:From:Message-Id:Date; b=SSFypoC+yesRG313ieURckEiIeSgdLtJ1zvo1ZWl7QrOtQDHtBWVrABmrVUg4Sb+YlhswPHhpk/fffIq5bkp6jOhZmjxKL5+02E3u3lwzPYLLrWFpSv5dLMw4MxiGQMoe57hFNReZ/+/UfHUdhKxq70K3Us7Tia9ghQfYZLFK3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iakayDmZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iakayDmZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2312C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787023833;
	bh=29hb+k7q5CP0GRTJ2bmq6MF58upDl4++LkBn+JgElFs=;
	h=To:Subject:From:Date:From;
	b=iakayDmZk91oUOHeEqZdFu+Fsoch77jVF94B9ur9yD4z5lvWzohJkggQwDvdvfNL5
	 hGgm8JJE/4ZaWFVgF7XhVMd0mMtB0DAzu+KaM9IMXXHJROU02ThCXxroI+oHzzcGiL
	 eOVgPXl2KU1p1mHdZDedTLJfJK9eg4LUThvC6ALOLjdLnGT4oVyzFTDXZ/ls+TLQSS
	 /v4T2ZrDskuyqOOLKstCcsoDpwAXOwnZYQdfrFd+j5vmW0YlyWdW02LbHrCJMkYG/0
	 zx2ozSJDoRUUJUuFRM8QPqbVBT3gOlF4lTpMgb845Ky+QsYKLf3nO7oIYvL3NS3U/Z
	 r4gt+5fGe4qFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4FAC5DF74
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178702383369.7449.7946387175401756442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf16cba6e2f993d7d264f6dd272c5874ea43e9ef39640e61e260d303363933b4
Date: Tue, 18 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787023833
