Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5884929B799
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792375234; cv=none; b=fOf34SPbNi/rmGKYNaUUr/GE7Grt3V9EZTqZREX2cCqX6QB6MaZfF1oGX9fveKsB/JMXtW26JOUtFAucH9hExH0OYl4CkQjGO0zAj37OGHu0oX47Ilb+Fit8MM6Dnys+ysimiy8RSW/REOMgFp/LoD/eM2bmdpJdDyJyQTBgzSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792375234; c=relaxed/simple;
	bh=sIt0+kzPkquIkHFV0pdVOrT6duouf3DTRl7cwYF8DQ0=;
	h=To:Subject:From:Message-Id:Date; b=iwm31PWiT3LBJJIntftXIk5KptM5qR+UoRuvJNKYkAyRAPp7vOVDOXBZrByZjHbuLJZYF6AA/7PD75ZKBkCWG+zaphLhODCwpUBzy/3wZ6v7nV0p53NVvMBUswxVDJ6q3R6l1x2D8cymhn3HXPSEcv7PIJeF7cKBxtNEsFUNB8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dW4bU6AA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dW4bU6AA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB982C2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792375233;
	bh=sIt0+kzPkquIkHFV0pdVOrT6duouf3DTRl7cwYF8DQ0=;
	h=To:Subject:From:Date:From;
	b=dW4bU6AAIUPakn+NyoWfnrsaQavBrK50ptHH8KPFIpty+PcP0FnqUJSnfswSn2Des
	 D+fFi7G8s/v2cF4hJuY5sYo4NoddnOxVlL6pw+nNn1/n9+X/d9OM8uzkvl/YjA49sv
	 ELQftBg0vbMBmsNNb1pyC0rqPcRplJrUG3QFxDgpsCMgfAwl/B1BSWuhzHpu/vz8CS
	 O95pKNIkN8uB1PTjvl4gZyfa+f7VglnxrB+8JuktUvDnpHaZl9+93zOdc1sZtyzgQl
	 D2QPXveVf5alpVOT3367cYHD75WGMTCI3ygX0z3ghRwgKJLk7rSqfD4aQZ5RKO/vES
	 OgvS6RuE/JfYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6ABFCCF2D4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179237523373.5534.18352294946689936452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abc8af156a1625e7300062a57b7e9c3298bad4d276493977f66784dc6f48454e
Date: Mon, 19 Oct 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792375233
