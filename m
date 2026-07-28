Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2535242A7A4
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785238834; cv=none; b=h8PXCWt+dxOCIW6OtwTH0ytQ0ZR00ovSDNDdOHmH690awRW1elWr/vhR71NGJOYIyT+8k/uq7gVeLg1gueNAw23PBc8GZ2S3jniSnAFjMJGVEJvKE/nJnvcSt9GDJx43BNogcGQmRipaVsm+owT2pJq3ex4h/ip9DqXUGtZPE9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785238834; c=relaxed/simple;
	bh=Q3FIgSgGoogLzESLqbjNXp/4saH7kYFzEPIYP97wvgs=;
	h=To:Subject:From:Message-Id:Date; b=TvnFXHjKSU1IKmxmIwXBU43r4VXyiiKdZIsEX54+rcwVQpjeN6fKsgx2Pjiiv7/m3t2as7JnnvSnZ1irZA3MyJFWWbFy7p2dzUIxJfR1FoMnCFvf2gzZnTC9Ike6pEZA4aWmbUhqWyIYnaIzudaDCofQk5G/NNZ8rP/rYTfLT3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hISFcUNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hISFcUNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB462C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785238833;
	bh=Q3FIgSgGoogLzESLqbjNXp/4saH7kYFzEPIYP97wvgs=;
	h=To:Subject:From:Date:From;
	b=hISFcUNY8jE7vevc78+MBLVXskm9IFvRLgzb8rkbsuT+TQ4pdFgTq/vqqlsEO8MXk
	 GMe/tlp6gtH/3XwLicp3LaaIbwSoO9Nee4+U3TqSgQwEIHnNwyYfkSG2KTSSXpEuM4
	 NM2e/LaN/bRExt12U+txEgdHNSyVRlhh7HIrsHsUjDdryw5pdVD/1XnmRZg/KG6KF2
	 caT6d/N+8mH7EyDBD8dKbTJbRUYuCr3wJxeWofNpruvWvHl36MyoX0FzDv1OAiFLnm
	 V6FSInttyj/IigXxOpuuK+EvnW6tHbxKMUtqGotTPsRdSBSX3yd3qKdB3/+Bw/oIe4
	 TnDwqkmkcz3uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89D9C531F9
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178523883368.7802.5698785139522282340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fb9d3e12a38490a5863da44192ac21a17649a35ff3ac60cbd92616753a0650a
Date: Tue, 28 Jul 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785238833
