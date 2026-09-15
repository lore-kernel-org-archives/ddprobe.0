Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A61C49553B
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789513834; cv=none; b=hJULI4DFKt3YZns0AFxxliOs8WQYRpk0qmCCDPXlovw/0xTPRFE64DWR7x5IlgwekcFHc3Fw+1FguNFJUCD7s7o1sY3tpCiJ0kr67BsdqzixcivWNwoNwimIRpvteKqEQiqEk9yxlzRhW8SqL7dJZS0ft/Zy887dKAQpswRbeVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789513834; c=relaxed/simple;
	bh=cdOezQDe5jjKlg4INlu/udMu/8eMxKjnycT0ocml1L4=;
	h=To:Subject:From:Message-Id:Date; b=hVYl3Rwc4C1froLBt0QncTPWZLSZVkX/uUQZLImaLhg4H0Yx7TLop0UmSHgsr91cokRuFJqLMCNDch+Tc2u/WstyuldCiNJlBaajgI+Rhm/ohY7LitKV9Q5pSQKw8aJE5Agaci3vmxhfa9G7EZkxGnwDtojG9FU3YXs54Kt77rA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pp/wp9Ik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pp/wp9Ik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D832CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789513833;
	bh=cdOezQDe5jjKlg4INlu/udMu/8eMxKjnycT0ocml1L4=;
	h=To:Subject:From:Date:From;
	b=Pp/wp9IkMDcwZjlCJyEk/09yVhuzfyrS0OFgKo8w7sFvipB+C2IUQcH+LtW7dPNaG
	 pw2PO88S6TTWVNfFmp0poogQ6omxVkbBwNnKT3B1ZciBsjSZCK/vZKGaZ8S4mBzI9L
	 bXWR5TtBrueZ1WoX7cmC/W+9xNN672d9AmZWzb0K4oTG0k4EnC2ljEcV6FjuBjQRWr
	 7aHk1/5OPHDlkM5EzIlaGI3Ex80/k4YW30TgaStwYzF92+JZ5UoqL8ac5zQtBtDdpX
	 XiAoi84WXL4iZoaoEDfN8RCP/VoZ2hPSF7QUkJk/Dpr2WaAh8NUBNVHyDKhwoLT6WI
	 7a1qGGqcyXUvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B327BC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178951383370.8512.9993258483544895985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f03c2522d6fb20c1217befb3edf6ce623510bad2912a075a07d06b2f3db2b203
Date: Tue, 15 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789513833
