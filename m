Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193A3E574
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728292554; cv=none; b=mlMXZQ+F6vYVGlbKHwGsJAvEz0enTIeZmdqg3GIs7pirdlIBo/jiVopoe4i7pWcctF0r4CJy8I1uImT8Q24jX5k+iZkYZvnriElp9o2xLHQPzm+VfzvHMm96j3Y8GyvbBhJIItChmmBMOk/1qmb1Iiz2xC+sZnsU4T5Be3NEVa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728292554; c=relaxed/simple;
	bh=iFHgcpG6C/fEexYVOP+Qk81x2bQDzt3ruHTsjNpp5Qc=;
	h=To:Subject:From:Message-Id:Date; b=Xph234wQSXLGd6+3FXQt162Qt34CIWheHg4b2oflbgFx0Pz15vgb7BpUWcvZKzQqFZsUzOQ44nlN9NKgmIPpM91XJ3gpP50I+KLU+LOwhc3K+R2KAhRmy09u8WblRrISpTIrWvC6q1Sy2Pj0tG3elAH0DzmsHffQCNCatAahayM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbibLHrz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbibLHrz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FA5C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728292553;
	bh=iFHgcpG6C/fEexYVOP+Qk81x2bQDzt3ruHTsjNpp5Qc=;
	h=To:Subject:From:Date:From;
	b=PbibLHrzezdA3VZN02kcLnO+F3NaxxT2upXOeQvFJiGNv36mUS2JQ84ankKf4Iniv
	 7RRktqnmawF0hPX0fvSjTWKhJnF+3UfYlOa3VDS/MJzGfMecfUqVEovXX6YM9W5vqC
	 417oAc8XteS1exNFi1C4a+qf+4gMuNE4Ag8XDgUwfXunxhUogeWOxrcxnBC8rTa/Lj
	 aALVCOw22TUG2614m5DiQIRIzz6+G2PApYo0sf5ZhWV3Ts0D8i1/8l0hLwlbqip8xO
	 ZkEUQcppuMIzx/QpG5iG8mpLRRA6YogZMqvIsxlByX4j0dGhaTC6vpeo0Jlng6apdW
	 dSSEOMHXO2WBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965C5CFB43F
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172829255359.6090.4626563528572963447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01e35f37b8a66389a004213eb8c6d0ed58332523d74f0abcc45a10984799759
Date: Mon, 07 Oct 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728292553
