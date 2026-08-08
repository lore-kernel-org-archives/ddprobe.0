Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7B423ED5B
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786198234; cv=none; b=cMsdepnlEv4i9J8/8SfnZK3m5SuaKlaW6euF2+cAKjcWDuGk3jC68R28VwE/zsQFQ01mzi90FidDpek2WefXSSZkTKcAEmerlDhB9cbA10/jxol1hY1wf7iNp0ZVlwgHF8+8iLW1KgyRWBfNhqwXFgvJZJA7TmsprfdOZzO2IYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786198234; c=relaxed/simple;
	bh=AUJMwxarmRLDNZnG8LTvHOodJPj4oHtH6P9oh4A+eFI=;
	h=To:Subject:From:Message-Id:Date; b=Wx5CppEfHFSKkAeYFIyJKldJ/Ox5hKxGNaeC/tqzfElgVHy1n9PlbvJGBUkprc8k++9AjFF5YCtcaVKVebREabiVkMDaUzQ5VhOketD30gjS6UfnP9mjxABCK8rhdcBoYkl6jHR0z6RyhEM1ukCqRLSBXwBiy9qhh4YjPtm/xqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hi2HlS4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hi2HlS4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EB7C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786198233;
	bh=AUJMwxarmRLDNZnG8LTvHOodJPj4oHtH6P9oh4A+eFI=;
	h=To:Subject:From:Date:From;
	b=hi2HlS4YrEOzNNeyJneYmv5UJjbTl2Z4eS52zW4/knvyeDiTH/HcDfjk1+e6o3JsF
	 6CGCCL7etoXstaG9XG3ugyt6kaU82LhubAnT06ufgG5YRqymXObrIs8oittYji3Sp6
	 VXC6ZyDQGCejgjCdV8a6a3yejyIINNvtr4Ty+9KdDPqlq8x9unI8IbBVYiktJ1R7Eu
	 ek9smq0XoOqXpnW3kewI38oI46q6eqL7UWRBkf+OVrOT1xfRSwTDKH/mPMCwizKbJL
	 7y6U8UERhisMsy53CRG5M2yXX3tuwQTnuxWaTeQvqXtiWXpoXm0SxoxMkNg6ZyQCeR
	 gZEY74aiCg6/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEACC55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178619823368.18675.4251816407252362236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24706433184242a42ad5eb5d62f426cf8f77af6cd99584b0c7a892ab76f604a
Date: Sat, 08 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786198233
