Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A08203AD500
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778486434; cv=none; b=K7jCKy+dwjKGGnIMp32KrtDKBzXOugSJ8hmgm3w3cyPeyWLnPsg0SmUPSK6b/9+eY2suOfdBSGPCw0fMtP3bi6z29HVcXcX2gllQPOKtX5AU61lzvxphY2fMYHzSKzdcBEaRmGHPHVowxdgdLnhxW2OUkCOLJXXYgZa9QAiowb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778486434; c=relaxed/simple;
	bh=Q1dgvHtZIc3BJ+KbJjTPfnkeDqv/qiJ1lUYld0L0reI=;
	h=To:Subject:From:Message-Id:Date; b=fISCx/Blgd5EAaeGyXpY1LncQnxQlP36TGKZlyVWL4UkaCUJQBQkE5IWm09SGGTgsGtU5SA91ETy/oBciAcdhRYZYPKjVrA62DD7C9hK/PyAmcJof4PzqaVkv+iHq7W+NCeJ/UBQF9LwL+Z2moQvZ57v/tYe6+tzxFIU+2q6G5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHWSfYpH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHWSfYpH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACAFC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778486433;
	bh=Q1dgvHtZIc3BJ+KbJjTPfnkeDqv/qiJ1lUYld0L0reI=;
	h=To:Subject:From:Date:From;
	b=vHWSfYpHcnnf/jUtQQE4IqlH1jggh0nwYXMyqZtJ/kqUmot1Fu+qC63skJDZZfqFM
	 edm9qF6beeAlKTcwj7oZBxtpQLe9VXb/Zt+TTueGW1LDqGq1fkE0E3UhN87IKLeKaF
	 hr5kuPeiq7cZQ1P7q5qOPqP4vgakwTTN8NQp6IXVTM/2hXZTQFDEoGcbX0TrUD/me1
	 vTU1aXRzoq46sb8zKcKTaOP3vahlgS6LFTuponeQQLZeF62o1beBW5uguY89NJWV68
	 LjQXCMQ8QVWYGG0R1tfyp5bTq0+QQj+SQ4b386MhLtgmT4/hslrbxjeb4S8wh1ZapF
	 jHnvRxxrJWjdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC686CD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177848643369.14617.11501326660334104053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53e6471f424c3754cd4bdd0385e4e3f5054f40e70b8d77a7ab2aff533397f62d
Date: Mon, 11 May 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778486433
