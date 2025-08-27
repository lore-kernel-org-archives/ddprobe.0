Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F0D1E5B88
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756305594; cv=none; b=gndx8VGyjX7dKuplmbm3fgYwezeoUkNxreQJOiKi3OMKriWkiQftI8mG/45u/m72X1ddx6oDeTco7GChDT4m1FM8QhxzGqu8WqbYz9SRL9eZ+oFFla/RDoBuOGHnr5sebyys9SWJ0/qJeYKr53molnXjcPtI0OGil6wTIsjticA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756305594; c=relaxed/simple;
	bh=Y7ej3muyU3aMDgh47Igy6r+QQ1t2z/LRjNirXqp0kNM=;
	h=To:Subject:From:Message-Id:Date; b=UG1CfINpjxngu4gWvolRgRvgauhzNL53jTHYL5rFb4K4g9p9Jn1fM6+wWhj58vdoH2PYGWkH2MNSrTqJeeRtDC0WfnRFidgJmEVusx8bJYsi5ycP2kEorsSQiBhi2JrIrtxGKHrK4KePo4GHsizz0COiFU0tt7Ymg7gSnIURGTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjXCW6IP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjXCW6IP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A083BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756305593;
	bh=Y7ej3muyU3aMDgh47Igy6r+QQ1t2z/LRjNirXqp0kNM=;
	h=To:Subject:From:Date:From;
	b=bjXCW6IP9JO/Sd1AVAIeZDKu78XV3NTK8Kqi2bLYTivqcpCiNKb3E/yrFcUhNOtUr
	 G2+c7kfeQrDjgXmz13iKxfHzAvEjhwKD+OPAI4gjxcMXra4ZI74Hsoc7NeSloa7XfR
	 NN/k9WMiT6fCAhk52p1AKp/EArBVTkIOz76gMNKktHpKi2eekF/6ALu5UUBw47JL38
	 6pb+4pET7Zt6ASU6aEJ1F0t601T6DMH34AOPjM7U8/9Y2W9D03cJCaLMeVFsuM4MoG
	 NolQArV7p/wGhGjX7fd1WoFiX+wmB55I+MvI03WtQ96a/Q9DHPCNuwLzsF9zvUEhRd
	 BUIvijZH1DwaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7F5CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175630559357.13592.17320221770684700797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65f043846e786425793f08cc467dc1fabef30f860eff97a6a70f7c6820309487
Date: Wed, 27 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756305593
