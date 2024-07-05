Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C4A64AEF6
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 05:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720157723; cv=none; b=mNeFjkmuWV5lSBwGqV5NZotp3aATM++L/MLeBmA/mdrOYXrmJEHDh/i1jAPlLx1D8GhnKoZlSaCmPy5+4I10kPjP3urP2p3P/R7iN9ophAW/sHn6MT6lxmTeoF7XTBM3XHZ0c4piwk6cfsEBdL8joOYzi349KCCVYKvif5j8HUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720157723; c=relaxed/simple;
	bh=fiKTBl7dnKK/Ja3X0B6ct65pKoxE6tjMD4jtlvy4k7c=;
	h=To:Subject:From:Message-Id:Date; b=FFBXe1WYB3V2UYc4yI4heC9zztVWeQvsfVC4q6Cp9LQwrXWI2t3+3tk44RepSzsgbZ3ccm8G5qz7c97IsT+Bx1n8gpX2a8BzLFYw8sWFVcntx7Y5v97zEDzWfB6+F2w64oWh4Pb84aBincbn4K/lGKd42T4Fukjtz8o4TgTQ6S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUX4J4bQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUX4J4bQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D99B0C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 05:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720157722;
	bh=fiKTBl7dnKK/Ja3X0B6ct65pKoxE6tjMD4jtlvy4k7c=;
	h=To:Subject:From:Date:From;
	b=UUX4J4bQdXukuvEJOfKMexpaqn3dQ8ROydWJuZMAB+Exa82HkcOcqwzQVToplyJM8
	 7DFZnhUnovYF+GQLsOLQkbpik6gOjzLAK9GCQmV7t4Jcoq6YWGnCbmWTfMrg4mtbHT
	 ECvMWa05dANBomzxJ1ZzD00l7URlg3SE73h5nZAOnEN6PhGKBo3VLLYwslSQwrfFjz
	 yXOsUQsk9qNtuiyzTq017dpZ8CWoyRqXQ2kxIIFRomVaBfYXDlVX11AAOMDSMjBnti
	 a2e3+MIVAS0RgUY3oI+g/7n/H1j3C217kVzjHeHF5kUtDnzXWVIohuWCWBenthYZkR
	 9R/ZRERCWGKNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C26BEC30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 05:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172015772278.12880.9285199245340373175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 955f9c0133f0b33401637fd2856e8d7ba5d5fe5748e4ffb3d910be5329ed2599
Date: Fri, 05 Jul 2024 05:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720157722
