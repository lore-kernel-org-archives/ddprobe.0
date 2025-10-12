Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309E179F2
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760258394; cv=none; b=VTKiBS6pPcikgZS2AhDBKIRuuzeh/wZndhrGsXnyiuBS3qRS7SYdwqKLNp2XJg8wYRM4lzBghv4zc8FP326q4f1toR8Ya1D3UyJAPuuIifl87fz8TexG9MeGJTPk5S1AiRyqdf1n6Z0UHfSa1JislTf2ARQIiKJNXQz+cBxGGyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760258394; c=relaxed/simple;
	bh=6vFz6lLq90BxVQrXt9X8kB6p/3w/hpkKtTuVLvxhSPg=;
	h=To:Subject:From:Message-Id:Date; b=GjiIwGNX0F624S5w6CWAK0VGiUgLOEetgn7Ky86VVGXRlUEka1zsIqzhUXHcbtMizsAKGp48gPm876IOEKmJOHNg08uwlBS8ukXgxjyIbRuidUxVXzJ/+Zqyoe67BxSWt6EfpQzRkyIBsQhq/OZrP9eNPOZUXrNnHMMBBiDwRFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2IzLO8k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2IzLO8k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F50C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760258393;
	bh=6vFz6lLq90BxVQrXt9X8kB6p/3w/hpkKtTuVLvxhSPg=;
	h=To:Subject:From:Date:From;
	b=R2IzLO8khmrn/s1FCFPRPqeA2w2xo9v4aFeedcu0p8Dz4I0BPpE5X6+tYxWLgoYRV
	 tJGDWU35B+PgY2Wsa++06wRZdto56UTurJ0//DhmpEWp4CXIVROustyLvUxWkOj4gB
	 g7M/a0TEiDu236x3RXP9um/jUuK18tHhTNIYCG03aUVBpLD1rUzyt4WKD7mRZrbGDT
	 DA7gfG90qXIPumEJZ6mqaZzxKTqlFBAN/n90wblxSfwkO68w07gZvXIh+e4fyHyox8
	 CF+Xy2OyTNMeiS1y/f144AtZRB/6NWn2tLh5Vtihi9s5kgt2b5Nj4nJufzjYBKhgU3
	 KR9TsiGxe60Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9471ACCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176025839358.13267.7887198818896047650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbd9c6262f7846f746c4a45e08feaef549188a2e80711d7c8c65a3bbcc849661
Date: Sun, 12 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760258393
