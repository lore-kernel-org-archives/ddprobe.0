Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3725B134D1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 16:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721060123; cv=none; b=THil4Qy508Md2N7z8lSt6RXoxKrYEETQ5/yCGiGG81bxXsj/LIwbX9ym/PLoNV220JgT6eT/lUHlhwWCZyb7jwgpzJQkSuxDe1Eka+ZbcxR6Sl9y+oUcfYLq0E7LhBXz6fw34gknE8VryMXrUxQGN100mForiVQo5NHO75qHskk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721060123; c=relaxed/simple;
	bh=vdJ8cESLTPx9t1bUBMPbdxuiMiyON9BdC0SSoy4JIrc=;
	h=To:Subject:From:Message-Id:Date; b=TmSUMldxhbn0VbjVvXoktA4QlThPzZYsdBnPa2G2a3qC3Uq6+Q0F2+9tbIurPjWK1T5r1Y5QuxhpwIMy8zSqAPMjwXpb3u2vnLLAa3kadpmSZucIAlvmn1kMHyHmqUztN71EsVxuBJbF1dvMRQ8nNXpKPDAnJ5k9jFzQHWXGnmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0yUnfAD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0yUnfAD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF739C32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 16:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721060122;
	bh=vdJ8cESLTPx9t1bUBMPbdxuiMiyON9BdC0SSoy4JIrc=;
	h=To:Subject:From:Date:From;
	b=b0yUnfADufVhouF+hIlWXQvk78WNGwj12jV5MWYPjfuV5WbnZL/3F9jya3Dcy//QC
	 pm0qzRh9jUEHYahKBzqZs3qmzPenHFX4YSJRcptXKlnjAQrNIoXGB3XzpgQSEBjz/C
	 sYUdXJtTLadDhlzo9fzpPBh1IXDA2rwAWjHT/rnNavoC06uV8Cu0dzMgDo2/twvMEN
	 A0fzH/GfEEYxGqRr8AhRHXNh8/g3n4RFNL7p5v9VPsMgCXLecOT3YJtQm6vYd7HlM3
	 Dy5K1vlVTihzYt52D1KzY/VvPv1l61QgvqdwhFzVy5M2yU9D0YqSWj3irQK7A1ewBc
	 OrDgOyq2W1I7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED44C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 16:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172106012277.31840.7647692731868085862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc8c3da5b518eb68adf3fa8ae1a651b1763d63929bdfa6ff0c3c9b91f84ec5b2
Date: Mon, 15 Jul 2024 16:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721060122
