Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2933127381C
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751373595; cv=none; b=LyCXVX1CrxPAYymTxMVAdah0hf2YApDiIasYtyThdMCae7TpRh3CDQcxBIOFkCI9srnWgPRk/ojZeYQqzWnauhBryQjFCU41sDo886ytjI5T6WAKA61EdJxymbW2RUbB26YL4Dv0orF212XzZqI1AvmUqOy6jlQ8VpPCruuU0M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751373595; c=relaxed/simple;
	bh=Av0kU9LEyfzrBQv+ntaNCg8NdZcwsbXpJaBpQN4wFkA=;
	h=To:Subject:From:Message-Id:Date; b=OZLJLqlbUwyGQnwjSx26J+cjoKYAeV4odUW8cpUEClg1QnNMJvbmi45QPUSeNmg+0iRa8lWyAJlo6VnVm3rZV24pd9QN9PD9DdjNw7F/8Gx/RIfBxXkLXTgHoa2jeSTWdybHP5jmzhzr25CGo16PVOlPqLKM2d/gjxqxJqrAR2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjaAZBfM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjaAZBfM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD50C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751373593;
	bh=Av0kU9LEyfzrBQv+ntaNCg8NdZcwsbXpJaBpQN4wFkA=;
	h=To:Subject:From:Date:From;
	b=LjaAZBfM0h9+SC3KAz5wExGjTVTvR2mnKBG1Sy/p6aqX/hyLx09tZ7oQbhJl4rt5u
	 AkssUPzTOeF6gff32gJUovLHj8K5qA0+/noi8RedpE2e5S4tnNH6xfrVwVSZJGdoFh
	 2gVBx2QGidawQWp1Q38kEtCcISCgoyuTrrOAkLSVAOqIEW9AT4wxN0kBnAOIG7Y0+J
	 uWZY1bOlVQ8uwvQxmPm3Paieh7ppJgzWErNgMfa3f+b27BJytSU8QFYB6B5TVQOnfj
	 OXL73b1DzV9D3acoYTt6xZxVJpMQgXN6OOTF1LRNpBWaovJkUPooLGqlmpOzjJaYt/
	 u1KwUsC2qkyQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFDEC83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175137359362.28529.18044304093419711920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0634ad8e596f155b59000c3f1b0a0304e14ebe1d87e15db6b096073b70c9dfab
Date: Tue, 01 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751373593
