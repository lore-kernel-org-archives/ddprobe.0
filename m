Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546267262B
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785720634; cv=none; b=fJjiKr186RsBhQUVojbxYKS9ukEz4IlpZ9zYZJjuGOW886UlhXLfN88dIOcTUt2zwiG9W/AHcqjRBu9OKElujTXaIFCdhC9R9WglFeRAgL1uf43Y9Cye7DirpFL0T9JXCGOG46+tVqyXuNT67GvQaZwk0yUydgDYR1NmZKrw+3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785720634; c=relaxed/simple;
	bh=zM/6lXM4IdmX4NXaUen4efJONecxpV2EdnTs4k+3eOc=;
	h=To:Subject:From:Message-Id:Date; b=lAvZiHD4EHc3kG2/cl0wlapSabNMQp6USp/8VwytHGabNt7QaGkvfDj4RI+Gt53VodMLZn5RdNT5fDcbS+fDK36ANgGe7GqgzMkB0J5982LcEu4uuuSrIQzZyWjIr5/9nUScNINgtTqweH1l0qlaCza9XJ/vxDaCtoANUEaN7Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/wBWgZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/wBWgZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA743C19425
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785720633;
	bh=zM/6lXM4IdmX4NXaUen4efJONecxpV2EdnTs4k+3eOc=;
	h=To:Subject:From:Date:From;
	b=K/wBWgZhv0qkR0creAZzi984Hn+xqysOUuzuSTu2jgYu2kflv9HoOp1LHySWiG+Ku
	 cnQUPwd6uYDkxa259rJ/SwnvPcqCVdekSCJu8yBX+iwN3pvEs9dnztOZFBpe0zX0SJ
	 dCSoBrvra/m8M5IMc3EnSA8F0SWcSkdrwNosgdjaHUIH5WSRYpnL5flKzx+1S+HV6J
	 I6HVnbyCIucxGxRF+BPq4Le5qrqdCagvtUfTR064r/evzUpiBUeW+LZPUR/XE2pPQG
	 uwFkjXPoXSqw2hqt+Q84GB7UES+DTQtsOazveCOptEEJyQXjrrYYjZUDMbD1jG+x1z
	 gWL26irvaK2RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8885C55162
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178572063368.15652.6430677922764187715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a8f12478315ccb80750383f43092cef1969f893219226d5b655f680bd5efcf9
Date: Mon, 03 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785720633
