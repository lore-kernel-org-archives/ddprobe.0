Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341C422CF27
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736772354; cv=none; b=U3LNxuHKmmrpWQVHHUNdZ9DPURBQuobvE2Ui1ZF4qSihEEbe7uHqwX6X5Z3ah15uwxFnCKPg/wxTch/4SiF6rGW/gFK51s8wZoCVdUX+zmcE/07/1l5wPuOh6KXVth/q3YH1UeIPt+4TYp3u/ouaAxxps0DLj2rnvavBcqwLejg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736772354; c=relaxed/simple;
	bh=VYutk5bXl1VIwnlTxi6WDhB6k1HGassM5uTfN+0tn1I=;
	h=To:Subject:From:Message-Id:Date; b=NXyB/6DptGaDsPKVdBLyGaQniIxuPSt7gq2t9m9clPJEceRcdaET7QimeAyUhfsXMKwGFFXyt9n7R9s+Ds9QokzC5OQOLpzDCNTWY0NobMujeaAUO/AqN8orCZR3EXAX8RjxtoI1Cfto3nyyp7OMCX01x3Yi64keB8HmcvQWmak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWIFEQ4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWIFEQ4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6593C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736772353;
	bh=VYutk5bXl1VIwnlTxi6WDhB6k1HGassM5uTfN+0tn1I=;
	h=To:Subject:From:Date:From;
	b=VWIFEQ4bVES+OpNob6JIHnC/f9n7Dpph1FkrKyNVQ7k3tj/ktU4jkN7FCR8g/U9+O
	 Wq1mktiD9bO83VzIN2iIN1EDUHZrHdf5PjpalNebYWcQBEK9+y84nkYLpukJJhG4PW
	 qKED/t3INwU8A5vPMKHXZIiavHBG2+KKYQv+xjsNUfX3e8uzAsBdciGzCwTdq1+bwG
	 qy4lAz/+/SWHhKZZU+FB6vXxNShmrL3pn7zZ/1xEgTRyjoJu2UIRqdZUecOlDSSB1g
	 0lDYSxyWXM7CYOsfCteyKuLpTWm1FbMQa46R8TFhLSIl8eZDiJx1YU6bh1SiA/VTKZ
	 woMk5KJi1XkGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A8E7719F
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173677235358.9849.13135618179157207972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be2204cb12bb45126ddb25d213c431ff7303d2f71259ba5c613858660b6d8680
Date: Mon, 13 Jan 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736772353
