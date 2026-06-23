Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09502233952
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 12:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782219394; cv=none; b=d8ejhJQSQXw7N6MwYqLp9JwEVglIF5ReVVr2oms4X6UbyDcaBZLIgsc/M2yCltZV3pHAlx1b6xtj/yM3aq2hP6ULWA394vl9S/a4Q5v4NX3Mqjce1h80rC+KeJJOTHqD6Be5RbIk7AKoTcBuQB5dhG8Xt62askC00TqKAo5lHN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782219394; c=relaxed/simple;
	bh=rQWcw/Jiz4gZVR9HiNzY7q4J0E/Otmd0os0GsnSfORw=;
	h=To:Subject:From:Message-Id:Date; b=l+C7ZKNpB6NKGnL3RiOkPxuQI7ve8eoqO1CW/pR09X7HQzMY9Zzj9D+GhqCP4TdZMHqGHyc8IhcvHenOuB87EBjmRDvAOKj2OTxYARk0yCuxLSYml8p7bvjSvDsiWftxkYd6B1K8X8nbp5XIoXMncgXsazhpPlkwA1n+KTQSjIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCcg55rU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCcg55rU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7078C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 12:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782219393;
	bh=rQWcw/Jiz4gZVR9HiNzY7q4J0E/Otmd0os0GsnSfORw=;
	h=To:Subject:From:Date:From;
	b=hCcg55rUvPefHVkQ6okZOLfbf0IRswsrzYt1L7o8CBCjnarWHidoSq4qEaRNT4jyn
	 sD8CpBsZtfLa4d92MOgnYM90wWonQ4Xy5PumW6AnD4LAdH+QLCR4fSVJxzgTk8oUVE
	 DkImfEUzNUtDPT8VnnZgbJsA8rqA6mQn7+IIRKQi+CpvplowWdgSiHvLq+DRP4+87y
	 OfUZBaeFkYEb6S4eYk2UIiyiOx4aeIkpIy16dfTeaS+8UbeecPlSCA/4U4ofoiLGUD
	 yVqYRmqCM4IcuXPiliwvaaKYrcatDXupUJvAIMMJGS1vhsTxw2DxdsePyC/4q1vNC5
	 9MtYlnxw+xXFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0AACDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 12:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178221939369.20264.12440998219751832860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c628c3d7c3fc06d7b5aa17cd590e307dbdb2872cf17591d13bb0008902443be
Date: Tue, 23 Jun 2026 12:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782219393
