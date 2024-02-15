Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257C21369AC
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708019897; cv=none; b=rXubS/2/WEMwPxEEZxwD2mOnnh2kbh9YDNxoLwLSgM5uHuoCUyFZBZJuJhFgqgp8DGfdgqkE6iSRdlvbC3bAYHSr7S6hwFidADwbQL0HncyNJIaMPp87eZ5NiaMuWAiAms1VJMoiAAsQv5XBEpVFD1vVgaEZfmnWttxoZgmCeZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708019897; c=relaxed/simple;
	bh=m8uMh3sen1xRXY9j/TlO6N219Wl+FHkFnd42obCwE6M=;
	h=To:Subject:From:Message-Id:Date; b=rOpNbxTY/9vKNOUrDnkg9M1mw2O5fPjKd+eMN5DCvD1EQFdL3Eo4VG8LHrt+1AjnCy66GLPOlXoK04b+uoDJ8d81lOGuM75ILXw5U9CfZAw+ZsIjwdeQxIwGeKKvaZHv4/ShaVySqiL31tCNJ6tsYvNfPpoDikNW7RmbsP20U9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hl+QycNb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hl+QycNb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FBFC433C7
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708019896;
	bh=m8uMh3sen1xRXY9j/TlO6N219Wl+FHkFnd42obCwE6M=;
	h=To:Subject:From:Date:From;
	b=hl+QycNb9FpPMA02MdWmh/BpL5PVHeKmKbcvK+l+kMcYQoUfZkjbuDhlaDHFG6S6D
	 CyCzNu40SWgjl8GgNKzmvC2JR71qKeBWNSZdHCoB9+rCZjWLm35VU0mTO7cTskzVk7
	 HwNfRqIgKVtwFwJMQNCu9svMlrNAuU2LswH9am/oQYVOrOVnnvN/swZw0SqOpjWaBc
	 rJTfG4MX+v85hk/I912rL5TSmB6O5BSdZQjzqte48sxUCAeirXRbWxn26guLPAwJHQ
	 Kqdi1IdWVCkFCglcvUBQ452n47DRlX56Gspxhu8z6AScUJI0GUDiF9kWWQ38ChmwUJ
	 Qsl0EOfjXP0DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8913FC4829E
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170801989654.4919.6250200119186444970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab10fcb297d11c749247be3091f5df049ca3770b17e4f357ad996f0d1dd1f4d9
Date: Thu, 15 Feb 2024 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708019896
