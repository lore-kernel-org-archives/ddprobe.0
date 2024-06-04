Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A57143C4D
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 22:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717541183; cv=none; b=gE+YMp10jfA0+vl6E2QzE+IaEAgXP03bD5Ai27/0gh+jJUov11l21EY/7LULkR9gagM0pJuAa+TOsXkaqCbNmnvWc3YU9Jv+G66Q00tHr8hUF44YpePlk86ggr+PmJaqTQX1tvL1QoZ0NeFGX8caPzgHv7BHdZdqpivrfbSu/bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717541183; c=relaxed/simple;
	bh=v8k/GBItU4wuqFlO8xuLS4PghaGvHaFUoXZMRn9qBKc=;
	h=To:Subject:From:Message-Id:Date; b=Ko4iuUxbNQlUthT4FgoZgJCta3J2Id6U6GQzUhsklHhGf+PE6vfi6B683Sh6/aCSwUWspTPL+5KIGc3jl990TXXkL9c73dFIUItJYGOI5dDQkXUi861PqaudJE6yl7MkWcpWDKUeN7xAwEzGWDN+0OqvGQUlJrmOjbWsCBumCLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=an73YwqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="an73YwqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8DF3C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 22:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717541182;
	bh=v8k/GBItU4wuqFlO8xuLS4PghaGvHaFUoXZMRn9qBKc=;
	h=To:Subject:From:Date:From;
	b=an73YwqWDQ4aYLo1x7wdVDmWSMJF4EU9EvvDOhDWSixqLcHSPvnNXhzNX5ko+QRy0
	 O9hhgKbsbiHi2jKrxVVnVMD87fbosmwuRuCzSLlF9aw/l4Dkg8uUp2d9MGmCQ2QdfL
	 pnjwCzFkGK5ARm99+ExjhYUrNU0KGbUE2u9EglJZil2zK2IOx0FZ5dpFlRjyAOZ7FH
	 QymoA2tpkNlvrJ0CGaOSExC+4X45gpZ5cTGYBsJxHTL/pOKRC6haJpZf69viTqSBTl
	 ziV+ZkXpQqpW7E4tLWBU+C0lKxpoUVqc1YuaGxXJtBg2KbcWaiciaPi20C90ak/Js6
	 RZk8YE4oM2Cxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D68ADC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 22:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171754118286.873.14875785263240165516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc5a9b0e8b11d68a5e3db95f1c7f0e4edda7add0ba959a79248ce78e576f91c9
Date: Tue, 04 Jun 2024 22:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717541182
