Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5157081AA8
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787962834; cv=none; b=uewSYoBYTXO+XLV4VKk1KpYDaniwmEI3ymX6Ugwj8neLEcg4YuLO7W7dXSIqvjkJtREKasnd9PNBIG6cwo9nbGkdsqEtWGd59beF6r49Ncq7W6IKymY+kIEVvVnqhevpUpKdsBcJIzPo54nGIRvQBfTNrgbzmBw79C4yaEU1WEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787962834; c=relaxed/simple;
	bh=UBsETwDb91P2J1jKw55V7yZceojajNo9iH1k8T3ct+U=;
	h=To:Subject:From:Message-Id:Date; b=U8Zg8RZEnRw3t5PvdIzGCWvbrl4Y/fF9jwnGOQuftVHXl4zxD+nubN3ahE6zCRBxUoRmZyvgyrECyqVH0IsB3uk3iTuEl92rnfED/55JerooQe7VNyeyZqiO+95j33jI7IDZ6MuhvVbl3jTXeqqAXLw13ELL4UIBYcmo5kc3qK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DO9N/Cyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DO9N/Cyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37B7C19425
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787962833;
	bh=UBsETwDb91P2J1jKw55V7yZceojajNo9iH1k8T3ct+U=;
	h=To:Subject:From:Date:From;
	b=DO9N/CygAwDylUEg/KbCEvhhFEUS6JGUhDEKNMGT84y5HqmtsRmnVz9CdpLnurnqi
	 T0b9PC+tXwi1u/fUdRGs/8EgXyJfEVh49bvO5L8ddinYGeS8VCjIqzQYWLfgWgE0Qh
	 RjK1XeuJz8a/P3STkd8mzWLMrgjws3bcVC0bghkBxBVDMwK/fcV007OlZ245nkbLv0
	 Q13TF8JHcgTGGDojRKVRr3TPQDAHjLvMSJezwIZLMc/rH04AsTDqPI5bb50E/9SJGp
	 e8VHNDiwq6rHTKaBgjRIrSeqSHDOlOIuMKgpqpBpxS4CxpwNHk2ghNuFXq8TRNuHjU
	 q4bmklfGxieVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07B9C61DBD
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178796283368.20744.16700859293102164741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8644573f9d6423359ae6b395162b1c3aabc24305219d79a20d770cc901c2411a
Date: Sat, 29 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787962833
