Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416E61B21AD
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 16:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739376534; cv=none; b=qfjPKSZga2PaX90RCGm5anSipYwcX+jjDoEA5w85P+RsX8A1KgZWsVQab8ky7GY3moH71TyqnTPos2xW8EP2RIGY0QZR51nsUYyo0OvKP56yMU7RCDU51XJwnfOwdwGsOXUjFzG2ikU3QuiWR6EV3dVpORzeAgtlEg7bI5i1Hjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739376534; c=relaxed/simple;
	bh=UfM3oLUfxp5gCUL7nnrFo39Nc9VCWgPJ0oHLOo3HoYo=;
	h=To:Subject:From:Message-Id:Date; b=DkvDMNKNonA7FANiK8xHyKpGGUmkKy8++jD0MubLi5L97msPBaRzLFkxyuV90CBb6j3M/1QonifJBD0nrgM868cMcuoZRVR6TTPGSRFvY7O4tI8WOjchJkxH+3nFVGQ5KfLj2sQ/DZEV3WuLadgYSmCNxslGpYfnrzNpoyV3N5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOHQtQHx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOHQtQHx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7838C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 16:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739376533;
	bh=UfM3oLUfxp5gCUL7nnrFo39Nc9VCWgPJ0oHLOo3HoYo=;
	h=To:Subject:From:Date:From;
	b=tOHQtQHxDh80XxseFnoS6EHzLINYN7ItsICHea2WBgL8gQiHCwqB/RfDudr/mi0U4
	 J+9IyluKYpyfYVPdGR8mNuoGHBxiJHjW8AHIUqXGtrBR0BMw/vYiy5tibA6YMIf9t6
	 JHkAknJ58QmayQKb2WXgdgr0yuPR7uvitceLfrTl/6jwbBX+70OtudOModH0H8hw7w
	 GVvNdRfE8TUZf76XjjVdOlhypAQwVMFFAY44+marNrntJTPSbcVT30bAwtR9jxHWkV
	 eFfmcAUqk49LZZZO8lTy6zROXu20S02mQkhWFicTl6vgJ/HoKK9RP4rr5PQhNTSEPf
	 cLGmZXnDsQd4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927EDC02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 16:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173937653358.22591.12506257135640004920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2a610611c8c8fa6926ce5325e440342855b2de02c7112731a58c7138f9888cc
Date: Wed, 12 Feb 2025 16:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739376533
