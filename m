Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1C128695
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762378194; cv=none; b=mJXWSuHHBei0/1INkKLyNKt884oVHR2yNxvTC64KrR61JHnzXSmGsFms5jOrjLyB5MrMA7MNj8LqyE9THNpOGjezKfBqrJhx7KNOpdFNgqOYPOg0NP2dEnsshu9POQSKoSKAfsUs69w7HdigGBJmuJqrzruQFSV6kB5ZHPq7i7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762378194; c=relaxed/simple;
	bh=Xw1eo70SC20Er3k/DAhKhAvDtjhCugi/gN4BPOIkkfQ=;
	h=To:Subject:From:Message-Id:Date; b=VXs9wP9rCNZQW4dMIy0QNKoMx6tyEEjQkIrPsGx+q6ywUHh8C7crh1xuC5epLMjLvLd80b/92TVns8zpxTmV58jbltiEIncuk4HdESicXweRkG4Gs8M953SCA/m917SB2GB/v1H8zKxCN3Ii/t7aw3stYiz5cQMVQQw7YXyzUWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/moeSxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/moeSxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A310FC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762378193;
	bh=Xw1eo70SC20Er3k/DAhKhAvDtjhCugi/gN4BPOIkkfQ=;
	h=To:Subject:From:Date:From;
	b=q/moeSxS6jh6EInLqff+ct1S4H59KaC4S42b3YhVidJZloQnDS+Gkwod/DyJbyGwd
	 u3U/zB5XIyp2aasZCWqzUb4+q3jr834pqV4ZZkdotAx0Zm5JGx4LyFTZcEGhxVlwph
	 ZwD1NVjhPoRT3TWy59SHdSjpNORRN7mpiDjg/230NHaZ8nMYV2FRZQpsjbI2bck4vg
	 f8KtrYsI11rDnwfQRFkCkOcxUWk/aHmFefyb6UjdFsT3qaq5CTQBroAX9xTO53zu+v
	 ooxBBEQomSerL8B5TCBq3gPRxwdCE2q4IQPhLNBWYbEkzhUe2Cc6mgef8cfkKAI3/6
	 Ekbg/rGkA4P1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EEBCCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176237819358.25368.3743451195788210857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b968a8125a4faa048ac84c4aebd046e92a8adbdb18004a8122deeebcbacd78b
Date: Wed, 05 Nov 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762378193
