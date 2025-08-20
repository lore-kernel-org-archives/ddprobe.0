Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129EB22173D
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755682794; cv=none; b=ICSrZ7YJA+rKi0TL+g3ibKIN46nnrYzDSZt6B1NCZ1wdB0+4WcVnWJEn1nNh8m1YLj17X/YXl/gl/ylns7YpQfVbyUXXUIZ7L/Ik0oT4+bl88jFiClq24j4DkrHIES/1w0DzHaVMoDiXulDmun8QoDmfrWRSsXfNyP9BhXIXl4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755682794; c=relaxed/simple;
	bh=jtLCZeCqSS1oQuUvfqBfJfX1pbGULFgGwkS7HJR88Jk=;
	h=To:Subject:From:Message-Id:Date; b=EnMdlS6BPYejqVcBD24dmrgZCyY8MsKkYfVrt8dkPlsA8S2F2s0VeBOrn9Ah7lxRE8oHtx6EJn4E6ADaHrqAa1m+0TzD8Wtxa+/P+58xHvba+KcI7imZadqfW6eF2xez4NHBKLr21eK6C8dnCQxNRryUUIqLtVA1EI4SxZY02JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldpR3g3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldpR3g3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F773C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755682793;
	bh=jtLCZeCqSS1oQuUvfqBfJfX1pbGULFgGwkS7HJR88Jk=;
	h=To:Subject:From:Date:From;
	b=ldpR3g3PS3SmmGoWfTzleHmLDxL9AhZoR9sjPb4wDR4G0q93idYiIDcpS6RMdZQl9
	 +f1B5Lsc5BWqpXQH6wp9QYQArGW0o5Yir92otfQOItDTQv2rJ2/FCBCcTDc0rvsv9a
	 eSQ3KxbP5o2QAaPKMM14Y9qsDKB1pPFA7mTophVEBW3H1Tx+jTZYUxlAd6bInvEZbZ
	 w0yOCRXsnTm0l4/Qat2W4Wrz8kVBYc6X9fI7MoeT/4/cS9vIl7OLP8LfUXN6r34HCS
	 fczjHk8Bq8P4oyTFQWxWIH/jSGlDrbJMtvVGyaC7UeXGpPBxixC4CC4XrtzYPOEwjZ
	 zUvExy+rJA0qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF22CA0EED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175568279357.7373.10121061931687547182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6e8a94518e93793c53cbe522cff9b42adf5fa822c352aec249e9307770197e0
Date: Wed, 20 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755682793
