Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDF93BD236
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 12:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775649934; cv=none; b=M8fqBQAO7HPkKhfIprQNHsgy8jk/3ZDDPf64WvOqdGW1NhfEjQd6KK9CSg0bSE0ioweEfH0fhBr3Xmli+/ZJkzhOi55UtYGO4X1UNL7KhkIWGVRKjGNFljRJEFzD0rE0YhfM39o0MG4y0ZDd1Inq0u5dbkdmZ7NVtwyQjn+l57o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775649934; c=relaxed/simple;
	bh=8pJ6j+bkbLLyqljjzeQ0W5rPDXkcDx9VCoBm+dvtTYM=;
	h=To:Subject:From:Message-Id:Date; b=p2l97b8SkkjJC4lO7WpjHeLitidve1wOgM/Re3cqYz1BifeLgWxsQF/A3Y07BJulhj0CFtpkCNleHZOIaJuD4YT6xqHsqx6wBxrEvxD/eDSQ4b57gkcLPLpaC8cf3tXoJqpwllGNSKNwG0xO1yR5DHh8gTltNLUcLE6z0rmgO5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPC7UNJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPC7UNJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAAF9C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 12:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775649933;
	bh=8pJ6j+bkbLLyqljjzeQ0W5rPDXkcDx9VCoBm+dvtTYM=;
	h=To:Subject:From:Date:From;
	b=WPC7UNJVXMFga7u6utsUxds+MYX/RRPOLqf0GMFyJlLMCnH82wzV3cIGrx7MoJ5JY
	 FD5V946ln1A1pbQyBdBBvgoas8mpDDq12F2E85swJ7pS9qRawoHSiv0bq5JPrrHz4u
	 ARa70+9NBoW1f38idm3ZL4MZFUuqgcSmAt5gHZ+GyYuaDfQR+79bUydjL2q/Der+b1
	 k/oevgAG/qfuvfgZYgvW3oU/xH87IRPK9a7ffN5Ek+zHvj5HSHaJ8oljFpNnzZDOAB
	 LZpRo8ydLHkzV119Czgb/3ps64VQ0n5kKMfO/X8WW851I0eerC7do22TjcqSIqQytC
	 yPGkk4/O9IYEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4441073CA4
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 12:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177564993369.16592.11687964650592281610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e181cc16485d572ab9bca6639bd48ede8eb441dd5d2872c3ead5b7772d26cc69
Date: Wed, 08 Apr 2026 12:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775649933
