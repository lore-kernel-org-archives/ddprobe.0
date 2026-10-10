Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341D937CD33
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 21:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791666634; cv=none; b=S/bqWGraeQsIrDkzxyQRe7B9Ncpdwgp3F0SL3bdrqjRiicvegPtQsEPRkXY+rDGKEh+5GAl5B+MrkwtvQmJnJV9r9F2Qt+J19Q4iDQsTjpt1Ry2UGTqpsCVm1EXovG09CLF3DXl+w+jQvSjnPCYEFJ7NDLCjS95VO2Oxm3/CYYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791666634; c=relaxed/simple;
	bh=eSF3w23FIfTJva6bNcUyVwUIvxyxrt+4OoMnJFF0zkA=;
	h=To:Subject:From:Message-Id:Date; b=lBDZxhqKkNH71NDzjWbx8tX2smVnEeqjxg1h/dw+LC4JLUo9kqsFoJ4OQaLwTe0oaBLGNnTIPYzdeWrWJwumq/Qenxxi1wDA6FUkCZ/985X0EHu/9wzjvqVqU1JOAyZmNR6pM40ABFTO6L4OXBw2DazkBugbHCPDMvBXW3DAx34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGvUVdV5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGvUVdV5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F2DC2BCFA
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791666633;
	bh=eSF3w23FIfTJva6bNcUyVwUIvxyxrt+4OoMnJFF0zkA=;
	h=To:Subject:From:Date:From;
	b=PGvUVdV505iuQH5sLyVCmyr3KkELDpZdQOmNwwbFWXyx1WM0Xm6EhP7RTBU0k1g5P
	 QFq3k2AuIKjsbKe7Xc/t/QIULOdlKWZVat2RfaVzi05aJyueSlUyn9D3aI8kTaYTgq
	 tvz3WCzbycpn/T7UfjVhvO0PqRmeDGfOT6ycie7Ao+zXEy6cQWaKhpcMPBBsC0oJmj
	 948+W7I9TbN2lcOeQ4u2grvlTGfoLy/UCJDPUz/VPrKxMJ3AlwppuXX3bODAPEhSCW
	 pDjV1lFr3hoOgG345DfHILMg6jVQ48ayit/ozlAMq7a/oExMocAyaxhHKVEShCohG4
	 doOVlkVdf2IMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB288CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179166663369.463.8996880356160876791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad9aec2b311cbf665ea6e157666731980f8abdc5367330f10ae9cccde60d0cb4
Date: Sat, 10 Oct 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791666633
