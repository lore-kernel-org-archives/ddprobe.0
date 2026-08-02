Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63775489888
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785646234; cv=none; b=MpYo/TxfyL2cZjlgvmZjZv5HeNFy6OGS0pbabpPF3BA0SwON1bGfBsQanCxbPjf+SDkP3VPIu5tI573N+69WiV4yF+d7tWVLpjz0PUCefmaITtkied4n47In3e/QPDEvMfuZwO+lZjNm6Dq/47YiPKDyAHYyJ1opkl3t6DgwG6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785646234; c=relaxed/simple;
	bh=K+sLSKpfrRMHklgLAjfwUSRH9cg/WNlPBLF2vdFz/lk=;
	h=To:Subject:From:Message-Id:Date; b=LpeiOLQXL78ulWD4/4blg5pjbo0jEhi//xxZQ0/j4ZeAP7MUvwuAiiiyKkdooFUUfALnbWUzcM+DWrcjSteL97iPIEu9RDQvT4bNQXvOOPT5zKEJEvQ37KWTQFGFOTPOZ7hANVM1sxg1iFfvEOx0r7q4zDG8eW8pMpdCx2Ooslg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELkDKY90; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELkDKY90"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59C6C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785646233;
	bh=K+sLSKpfrRMHklgLAjfwUSRH9cg/WNlPBLF2vdFz/lk=;
	h=To:Subject:From:Date:From;
	b=ELkDKY90AlwWJ0uxVYiywfsd3NncuZtqnbdw6Fm/iPg+mNBp/u96vxdQe9j9LcQ07
	 4mek6tdnz0JQv5xwgZXMQzPikJ4/yPAP5K+rWhgnA2mpKMk9bAODIrQ210IEtrKT/r
	 j/9AiL1xOACaO77/HULBUa7HRZkFCKZEd5cFCRz4Y/KeVmUi+fk9pgnwHi3IbSFsiS
	 gsCg1dvWjuCTUcaUTtla96nYpVe70zYWYAyQUUQGqlqwecbOi97TTxQIpuEcf9GnEZ
	 PW/fL7zOmIZPSVM4/uh/H4Jmpy91KOsy1njY5sYXuD1XmOa22kw2suF+l5WMZWYgEp
	 2yEdJRl6WdBJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3D2C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178564623368.10844.11579260318698869279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8546910279f44a0c9d63fca39838bcb346863d42275442ec0af125742aaafc41
Date: Sun, 02 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785646233
