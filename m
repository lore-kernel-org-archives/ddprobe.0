Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9613FB0E
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727685354; cv=none; b=fGlEMLF/qkd/i9nBTwvNsLrarE5C+7hJu49V5Fh5SEquRfcpcgAlk/HRx/icp3SzI1a4RVBL8Rwelp2l9ks9TuRl2Ep2LwA81EO49F+dgBy7qZgx56l11Z5ZN9kGvLBNkQH+M8GPpkdoMS5tnbPLhA/CRLnd3tCWNoQ/k8hKsY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727685354; c=relaxed/simple;
	bh=wb1gvBDWgZmRZTmgHLpR0p93o1x3qU89YPc3Lemp2ig=;
	h=To:Subject:From:Message-Id:Date; b=UIvR0BETqHgqJTM0Fc7FMhhnWOlk08l5rJSJ6yy7AsFHVjTUks+ApGuBegv5PlHV8KcvQHlwwSuywgt0u4J5mYf8ALy+1nKmAALeyC+ZsF0pzhTAB5xO35iP0RLNs1VIENpyI8XfurCtDfQAOOqLkMxgG5Cww9rx3rcek1SBhcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbR+uA0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbR+uA0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBB1C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727685353;
	bh=wb1gvBDWgZmRZTmgHLpR0p93o1x3qU89YPc3Lemp2ig=;
	h=To:Subject:From:Date:From;
	b=ZbR+uA0U4fBHJS1g9G12ad5wXcOlqJuytUtGr23ndAzIXu3AljiPsCqoiH0COx68n
	 S1HeN0l3mNqiopayHEiM3gPiZWv/VQFABYHO+rIb85jdZ1bAJXo+y4n4TIdpO2KakB
	 aY09Yd0VeVCsB3OREU1wimNAbxGOEcBMFTb8U9N/B8HsCz+bQW6Bcdm0FQzzCrf3ro
	 nk9zEIeYqS+7hhKGGvgxhoU8CJFy4/v8lKKbXzjpfpvbjA2/2wWUWSMvg090y70RnC
	 ybKkVv/YwdpbFIqm0hgBiUSKjfq2YRftxWz9DUCtM2aGJ5qEef1wdIjhUL+jdPfM4y
	 0G3d1yvL4043g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F87CF6491
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172768535358.15161.6658524033042731714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a28cb4a1303d6b2f684e7fca77d9f95e6a745ef443178790d305abc1a64315b8
Date: Mon, 30 Sep 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727685353
