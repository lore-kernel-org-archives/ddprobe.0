Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86E2018054
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 23:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717888643; cv=none; b=a+EQOqKZi5EqZCMATPBhuvY98Mg89Vy51vpRELpqJUl/UlaUJtqjrJLrr9tyPlkPIKTNn0Zz8QyIKHfM95H6EJMdR0KbuAcbzZPqTw05vszHbaMc60EqIWmpL0HSSXjvVPdpnWzTuPwWlzU3cEosOGvg3ziVhBRWmNY1FD18h4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717888643; c=relaxed/simple;
	bh=UUG9gPvLgBml7AklPHdPLaDcOp0h0t6u+bGnin/el34=;
	h=To:Subject:From:Message-Id:Date; b=nnm1a7+/yJOmQQpqx44GHq00dUWAyBpjSDDfDe9FOiTGWpmaF8XsEOoB/+uCUGT8BT1lIPBZ8VNN5QbHV4uOYPrTp1L2Iya/j+fMvVRQxkOkkFJQ54zdRxxBbMv+5qgLGNaeCHxOd0q1hu7U0axlqMw4GzJdGmnNRlY4t6j/hak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLXS0S69; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLXS0S69"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08A03C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 23:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717888643;
	bh=UUG9gPvLgBml7AklPHdPLaDcOp0h0t6u+bGnin/el34=;
	h=To:Subject:From:Date:From;
	b=XLXS0S69wjQH+B8zWNkF1oaPpHJjdRPMVEcc9M+3PgUPFVj120OqWqXjxlUF6ujPI
	 qbl0SRfGRspkkQGzcqU9L24De64HbZquA94X8/ISY4zmwJzj7yhv//iV8itZ2MOL6c
	 7ZNtlTDqYND84xbx+K86Ue9GThh4bmahJ9qUq8P5vFsbHkkc/gV/OnT8AVGi6ThaAZ
	 CuEHLtPlM9Iijl1c+PDq/ibfWaJMn0EVc43CNstMu3RszvaH9WQS3B/FStlZ3XtUga
	 An9yPKBv7BJ/gZmPjjD016aun+oPGE5aOjNDF9ULXJeZZaM7BOIBNJw6W/CINGYsjC
	 jGYfft8n/DC+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD7A5C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 23:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171788864285.22928.14987635389194036568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b18a3a883b42bc2bb69fe9478f98e20181ebb3e84dfa1a7029fa818f29aea8e
Date: Sat, 08 Jun 2024 23:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717888642
