Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EBE513C816
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754250594; cv=none; b=Q440bVBU5UK2FibMCO2Ia06DeA+Kx2Y4RRWwR/CcwtvYASV7uz0GMRSkEE/oRZ8+6e4y345GNLw2o+J0G92GGhMRfIQGjLbZbj+W7LNSwHyWhTFWVsmKNsrkCFUokC6eaJZOnIy+H7fZYy+4xcFEiP+ZzC4gF79bx0st3/8YzbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754250594; c=relaxed/simple;
	bh=70Zh8NwGgVlQIS/kOwdmFZ9SRddoywNReCxFyDLz/1k=;
	h=To:Subject:From:Message-Id:Date; b=GqfZKhz7KfIRCm6tBTRCur8LDUCm2jC/J+vZMD38m8JVuYbGnfvfY6KExJsgIX+CPqkx9Kb+Hp9XNrKeFHF4rTYohX7PAl8n6MeQ/l7wspjf+8Y0et1O9UmlY2LddIEJbNIicyJh7VpfNbHAS0UUg8pmsrBYCdAkzsX+xbyNaDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bpf7+4+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bpf7+4+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D84FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754250593;
	bh=70Zh8NwGgVlQIS/kOwdmFZ9SRddoywNReCxFyDLz/1k=;
	h=To:Subject:From:Date:From;
	b=Bpf7+4+Y05KZClAyOnbPCJrD/muhpytkmSDGXVc5Z70VaVdjq1KQ9vumu7X3pife+
	 xi/qw+XDkh33WOOwlrUlr5wwfJZ0etOvA1mhozk4yfAqdMummDGaNaIz3OwvWxvfyk
	 MjcTrrV03nG40r98qSmUqdxqp473dnAYt745n6Kjze+AQHGjcL+gOLtYPDbUsQW7P/
	 OsFJJjL/TWFjiKib8ku73F8k/5osekfC8122trEJK/BPr9d4oAKPqrddt5yKLMcD+n
	 vJdG1XVfsXhgENCeH5lvyc860770dmimJogvw2tuwYLxUED5zJJkapT+jL70LclXU+
	 EF0Lyy7zD3KPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E887C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175425059357.15019.9356785072080160479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83dd0b875ffb8fcbe703e75a494159b6bbddfafee8d82eba72082430c4ea8c4c
Date: Sun, 03 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754250593
