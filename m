Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F60C32FA1B
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 22:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782860314; cv=none; b=PUuLR0e0exX2KyKhRKL6SDvqU5qPudleLrGVluW1XKIVGHsqiqxdJ34t01Wa5Tq3VQCUmR8gGMhyATN5RePjlX5MO1ZHzfKvgPvQ/5zemvtl0aIBLf99VrtzbX4UwUG+dBe7Ik5QzAIhk+KHRJlVZ7eG6dDqCHVzHYhbmQsh1Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782860314; c=relaxed/simple;
	bh=/eXkR+npcCc9XWIRKYqAcBBxnTz7D9AL5OdQpErZZqk=;
	h=To:Subject:From:Message-Id:Date; b=gFL5qSqTV+iiQtLF/jshQB3k982t3ODwR5QuZKDB91qwVEOiWuuG8eIxj4SgQzjSxprO9knEJvKxWrF99YUfp44I+jEt9oGybPAL9JPH5U+4X4PNGV0hQL2JlWXDNuxu2v8csAxheCU86LounXJKmLbPYVeXdRrfHC9JxH39IwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mo3dMPdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mo3dMPdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7EB8C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782860313;
	bh=/eXkR+npcCc9XWIRKYqAcBBxnTz7D9AL5OdQpErZZqk=;
	h=To:Subject:From:Date:From;
	b=mo3dMPdGHGXiLj3DhCxL4ik/wXYOwdWDDnNe/YjZv4EM85NtG7AkYlsBRkmlkLNxR
	 qoidAFwReviPnsbZF6w/XsjHEbq9s0O08t3HjWlmiDgmNOpBgFzseBNkiGARriJA8Q
	 JrtWErkYdEX6WzFOVgxdBkE7Tu2hIvaXc/S5TztUVXk1S8b6pNVKj+nW6MTeHx8v2u
	 Ss19DlweWVu36nc4ULCyFU1dm8X884ssoReiUCsEy+EW7XnxWITIovMVDQ49blMMSQ
	 u1Gvra2HVhe5rJLK19/w1MTw7PvPy52odj+mbObJvRC+SYHffLnxA8ZwfGNxI9PEeK
	 BrERddJHDh9MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6C8C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178286031368.4704.11331284601503884015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ea37f4693078e8c5dd1a684dce86108d9a9423dc28c69381dc0722b254844bb
Date: Tue, 30 Jun 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782860313
