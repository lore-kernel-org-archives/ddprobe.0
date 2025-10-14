Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A49323F412
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760421594; cv=none; b=JOeTEfG5317BNfEoViRisjJuozKYFItEYXcR0RqDG4EsWdXVb/s9PnGUVva5vrj1Y895TCgJQlD4gYKCqKFmiIFwpmoqWUneYtY/sKZdnHv43OZH5RZ8LgenOO0s9E8rvk5jpJutLzk63usepuYyfFKiBOYEHyLWTlueNBkUWQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760421594; c=relaxed/simple;
	bh=QlmSJANY8J8eHy8KZA/UUqYMMV53B9cEa/ottwl92mc=;
	h=To:Subject:From:Message-Id:Date; b=WCexw+T+2l+Cq7gPVudwcMIGUB6Oo+mTqxbcvVmT/dl1rw/FXhxkSM2FNNkpqqZ8E0oGqz3FsKoZMSKcKuFur9xIQ+BnK5RiAvdtZ1x0RXOBYtmmIO3vzY3lwlu0NX/iTWJI9MSIN+yIZ/kZ4JxrnW9jYI+ind4jkIVb08t5XYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IsmqjItp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IsmqjItp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32A2C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760421593;
	bh=QlmSJANY8J8eHy8KZA/UUqYMMV53B9cEa/ottwl92mc=;
	h=To:Subject:From:Date:From;
	b=IsmqjItp19MIENurLOkN0QtnZCoHXG8IDkwEz5oqCKpZLVrvQszA0rwnr9gAAXylE
	 CxffsR18ZyHeBRm9DpomfuvDRphK25rLZYRFSfj4PLCjXErAytuR7rO4hxZfFswKif
	 uBzrPocsdV1xxTgkCoLDc3/z8uvjUspwAfcZOyplV7MATSlM+oPTOROLiJz1bQohku
	 Y/d0t9ILsxaUS60cgmYZxhCcHa4rjrb4BnscLOP8fnD0/j3uWGVrYN7gVtHhUp0cfq
	 yCkYUKGqne/pI41G/U/AySCWm+qqZOXPw7Zv2o33LJN6LXx2UgS1jzc9B2AtbVWRI6
	 VtguLwGjPj/vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914A4CCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176042159358.15645.12371244463517470941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04c91665e9510a0c17481dc08ac08547800c05e85dc6a5f6138eb0acd7ef20e5
Date: Tue, 14 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760421593
