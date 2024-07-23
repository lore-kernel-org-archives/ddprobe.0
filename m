Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252F910979
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721721954; cv=none; b=XGNdARbI3uJ5tyBjNfanUhXjJlkz74Sr7vBNb5qOTWLXbJSweA27bZWWUZyqBmhZ/UqbHxTfCTruF6L0YQ09jBee3EGSK5aOHZEjsSLCZb3cT2MmUyloAE2+2ZpLCX+meavRwWIM5bBBkpwFcSEYb/7SGkhTU0g0qW3/qCbOQjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721721954; c=relaxed/simple;
	bh=5GZ6v5OoPsLaVA5BLeGhLl+bWtJxwcPRP2wFUjdyhJM=;
	h=To:Subject:From:Message-Id:Date; b=Zq6Z8n26HPV73QrCIx1mAUZP6rwUq2EFCeyF+KmQGSH/NKoDsSoHZO1tnWgB7UpQ3tZufxUuUJqBQsQ5kmFbUBx8s+mnKxdLR38CQPJyr2DwjD0IUEma5TncN4TN9kiBE+ldZJcMc7SWAmZkH+pYCS5rZI6IQatPAICFqAaYfpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwvOo77v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwvOo77v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B899BC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721721953;
	bh=5GZ6v5OoPsLaVA5BLeGhLl+bWtJxwcPRP2wFUjdyhJM=;
	h=To:Subject:From:Date:From;
	b=DwvOo77vovAO3d3smvQrPtbLMUR+CeZ614tMxqIETwlht7ucI8IfIdHx3IDi4TtgV
	 ZJTnR+MtvpMboGL6/C3pXS4LNb8Q1Le52zTfk5huyjb8rW/gih7SCzHN2M3nHvqyD+
	 GeFW4SStM1+/B5mOlXsyLU9HMxIFoUQ7Q+Pknz6vX+/bbjq/XRzO1oS518IOpzXLlQ
	 lZHdPxEhUwUpSQgt6GoiqDxmzpOU6LlTqv79YMWSlr1LZFLCAmiVV5ldaNevjPYDre
	 KszX/Luo7JtLD8hrp8S0jZss+reQ0G9cM8Oj/p7lGFuBi6WjXzzzGFahPeLJH4OWtn
	 wT7xG6mtuRaVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0201C3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172172195364.14891.5481949006381166414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 183684c7209047b7ca28a8a5a72a392f09d53227f2536d9ce893809eecf0f251
Date: Tue, 23 Jul 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721721953
