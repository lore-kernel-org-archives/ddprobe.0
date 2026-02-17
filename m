Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0661A3321CD
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771327494; cv=none; b=TlXlWGVqBmC/aI4al+U6QHrXyiuY8Tt9nUERyB/5Q9qEpghiVFBfHgaeFFWDSkL91Yra+r+AHUC98amkCj+fpBv1U6aOwYThcnMFEFppm4ddsuI4Gj3p7621c/pntTqS8F7qXZXmCjq9nWm9fUR2wlscbA4IIzkw8m00PnOf68A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771327494; c=relaxed/simple;
	bh=HFyUqJzn5RbqaGFBgqDcRhEnoZoABLgq4C23hHE2Cmc=;
	h=To:Subject:From:Message-Id:Date; b=gyts/aaTsTL8CAZNhS00ZeE6JLf2DGQyUMeOKeU40icSCHhCZpkDYeo92CGJNTrL7zWy5Sa/CvUTpmkvMpY75/Il1G1wUhxLSCjzEKLJfGjVWvOhszynIyWDjEAxiExUrXUVoc3W1hIJYJ5PTQN50kpYhtn302x7hj6MBRMWgOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vkf26xFK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vkf26xFK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4458C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771327493;
	bh=HFyUqJzn5RbqaGFBgqDcRhEnoZoABLgq4C23hHE2Cmc=;
	h=To:Subject:From:Date:From;
	b=Vkf26xFKVdWGZ2zS8woF74Lto0qXstbJ6d/sIgEAUwiLx+zrGduSbdO7gExRvwpgj
	 6mCu1zY0pEFWondesRz+s/4jJahiPDOR7LS96GzkDBm6SlPr8qVAwVBE3QWSg4yJmw
	 y82DdoSIWcrYyDfkoBL06x16z8o6EP96mNQiMvrbzElk9eko7u2uKrER3h2S6Meg9x
	 zVzxKBeWLlHaaX21Ilg3Yu5eewudGnEwb2vv8OnqsGD8D4b2RILg2ozGFTski+RlPw
	 WXjjgZV4YHVf8DNQ0idjOncjI+WgrTo8KoV8y04P3Iv21y3fYxxhQQr6jpyMxnU+zB
	 CdOwZ2PF4kF7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942B0E6816B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177132749359.6503.4960098217164850902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 919f72aff2fd90205588bd3fe920de874db85dcd6159ca27186855d059da7650
Date: Tue, 17 Feb 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771327493
