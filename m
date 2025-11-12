Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E162BCF46
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762979994; cv=none; b=KGzfw4jv0VeWm7vWNdoSsMEORnHl4sgPiy2KVzSZRJl/6BfnXFHE6J8wlH8GlFA+cpcoLqYaxwf0MPjajM0Ag5DogJJHTGhuw/PQA1JoRVn8nFaYFp+OpNrRuaOH4nnRIdekTljRikJv4byyVHB2nrSwM+vtrzCVh2vcRcBEYno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762979994; c=relaxed/simple;
	bh=lFakN2FVu+YVLSD7S8U69xHrubChN6HrhTq86RoeYbM=;
	h=To:Subject:From:Message-Id:Date; b=TnaDVvh2N+OuKNPx5SesG8UUTr/Y97/P95ZNse1xkVC7Lc5pJHeXjSg9a/wvBSG0ihStGiVIY3iOuwiEBdXJ0CBxJnZ4+9etg19OykyNt8z83ltWPzImQ5tLDZzZWpa7SqdL7dp+o8Ha2Ey6BT4uMjlUvelUE67syySGK1XaRzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NbE5rNB5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbE5rNB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1006C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762979993;
	bh=lFakN2FVu+YVLSD7S8U69xHrubChN6HrhTq86RoeYbM=;
	h=To:Subject:From:Date:From;
	b=NbE5rNB5jk/fe8MiDbg8KwkaiSr5jq6Y+TgE/t2Kc6Bf6pbAlEFDPDuCP7XJXyb0C
	 EP8zaS8OK+ojotZxWlLQa/0ygOzjvXopTXGk9fF7aZQCZRpYjOrskDQi9r9cfQjwp2
	 xGgbFJfGvU7jeZi2aLKbbUhXKXteYOb4FEsU83rCu/4D++rXSpQN4er3Bk0amo6x0f
	 HhcPX6Zor/9fWKpu0uZm0uQjZeA7BpcsUEbswIQjhaWQuR4O20DdD8RvemgyCB8AJo
	 I1jrvJDhTABu/N0z/rQHrNt7Eml8h9I2N6XEl5jLrbsa9ol0pvCOKDmBVm61sDPMEl
	 9NGaTPLvBpWOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F7ACD4845
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176297999358.19298.16962141475215907559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a329a83f4a2d78d81650a45ab127bb8b15f0e6712b5478946302b6d9c2293cac
Date: Wed, 12 Nov 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762979993
