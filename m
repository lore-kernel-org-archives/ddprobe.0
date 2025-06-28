Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D60125D6
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751074194; cv=none; b=Nv86b+BCBJEIsdt0XXTQvIOwAflWyNfM6HiysQrgXYqpUsBcN2/RumqTHCpfotZJYEeGKhhQy+NWZsGM98Wum8mJgC6v9PHVRK3/A8cvEx9e5r0QisrDVa9qCz0ONb1TkOwh5Hb0JpfQBohaDmdt9ZvsQ/nwj7vqoYmWrkhds8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751074194; c=relaxed/simple;
	bh=bnwX64eQGkvomNCEzTmpqhZL1y4/ndjR+6nz6Jp/0Jg=;
	h=To:Subject:From:Message-Id:Date; b=WSamkqwBFa+7Tc9kSYJX3C1plHp3zbQ8SyPOPACwVn8JTx9Wop7H4WqMkUi62XZacmMaH/IQ29KX+kzpCufgvpQmx/XRNF+kh4WHpqgQ4EWbXCQJOc+3ui7XQ6c8BP97XZthSqdN8qa1T9TgpQjk8ovBFX7abKvfSaDRltUAkq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5x9ZY/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5x9ZY/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCF9C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751074193;
	bh=bnwX64eQGkvomNCEzTmpqhZL1y4/ndjR+6nz6Jp/0Jg=;
	h=To:Subject:From:Date:From;
	b=W5x9ZY/imxCEIVvYo1altyG1NQnL+1f6V3eLImnAIM+e92vTmZE3K95hzDRuNICUz
	 jFNPCIibyjocWk8fDDELwuKg7PUXRkfjZ9cKydfvO+dZMF0l96UQ/juI7B0vclexmm
	 I2IF2uZ3uTXaAmb/a7c4JjEVrcm50SyvexDKG2lDV+8Nszl9JzPgC37uGZR+wTERt/
	 pVONKqWLo7pPY1do5M7ctKPCMhR3cSo/bCuLwAVoZvF2AlsV0plJYVn7sAKwE8SF9y
	 n/hQ8yTrhexdNI9Hye8Imgwi51DdaJc1gIv+EglGBsxCSSkZCKk48nvXl2KJf5UB2h
	 OmuSsEi06QZDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974EBC77B7F
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175107419358.1005.8141599209304531162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19ec801702ae35afa9b55ba20a9a4f7e3fc8dc8b40753503a6e8a6152f01d77c
Date: Sat, 28 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751074193
