Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A5E14298
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706271497; cv=none; b=N1xcoXCZlMUk2ThUnB096Sp8Vqo5CoDLPz+ypln/CKHMRBpXxavsR099f8DSsqmmMhfdG5HKake2xpR07rR4158miuRM61tGOFz6dqHi7bwNDGNn7VyOpG48cVzP1nBenAYTH+5TleM+kM3AeYTSCwDk1HePGeV1aolBBBgOjCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706271497; c=relaxed/simple;
	bh=0lHtnktHkyJNdGrRNde79sAREqkxqDO20a3ysmh2l/8=;
	h=To:Subject:From:Message-Id:Date; b=Ns9Vky3UbNBX/1rprpKZWhBakTvuRj0twJcz0zX5khMgcVvqU683eor/T0EkWSUJeE0q7ViIkaF7OvFiIsPgZ2JiqQ9kJ2zk6EsGIJ4qhHeaNSIO+kcZSuL9y07C+1kL9axApL7PqgL8GjO7hzalfKryobX4P8ChFJNqpNHYmJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIeQdsdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIeQdsdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83A21C433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706271496;
	bh=0lHtnktHkyJNdGrRNde79sAREqkxqDO20a3ysmh2l/8=;
	h=To:Subject:From:Date:From;
	b=VIeQdsdYyWBrBKQLXmBs0sz2rDU7SfG/4M9zlN3psyJUovQ/ek/rmWLUZ5mWEpV01
	 t2m7yf2UCe9Yriry/hfxKHOnbfAjM+sSDJ4tcPIguyBRMFpcWU5VIAB1QCztGgzfvB
	 o8iFkTuuPC+gifw/Y0X3HUgpzCuR/kO/19E0ZK2tJktIp0rYw+yRQlSOqkmV+umHHU
	 ghdicl/vIuQnzx/djmxhOlckpALHYh/LtBAFcTJPKasUiTd+0uzRu/RqwzI3x4npUT
	 Lmd1Edt3MF9uE5K6lZE/HIpmZrKoBRMltP6RhUZi4zzkk+EiooRcHv7PIt0xDQMDXO
	 ZqGCiZ8EdkmWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69ADCC47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170627149642.4502.11453402762014785372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 860fe7993bc0a02f060c59fecb212875819978fdba27534b36b02910a37d40be
Date: Fri, 26 Jan 2024 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706271496
