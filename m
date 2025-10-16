Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF9D7260F
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760580594; cv=none; b=qsrFZy+lyKVxHJYMPIe/Q3Kg8m8sxx5vgZWzEAP03NkFNyJCdKsskQODP8K7RX4pIqbBKGSMVEesT1s+yWT7DV/dIBkaWQjbXQZFX+dQeN9lHFyCGco1Er12nm6/cHGJRTgqoErUiagkrDS5o15L6PF2QN5JEKFcacZESbaMnuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760580594; c=relaxed/simple;
	bh=mwAGCbNitFXiQojz7GCUVjkoAJQyiw+CGcHdsYSLEZE=;
	h=To:Subject:From:Message-Id:Date; b=FZoz2xPggsxflDMgAkRawQv1ZCtC0WLggQFHFNpU2LoiZWrOfywwozfIv/aGKjrlw9WPPLzdJBXAVdgwjccS2iszBPJH7J5iuKHn7ennY0K4y2DvH0pFBm1VGuugcv/fsOH4ET95TKo9assASkIPclEknd6nVvnFriwLrMIul7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAUkuSr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAUkuSr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0456C4CEF9
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760580593;
	bh=mwAGCbNitFXiQojz7GCUVjkoAJQyiw+CGcHdsYSLEZE=;
	h=To:Subject:From:Date:From;
	b=PAUkuSr4K4D/fixqrIkumQ/SY+H6qzyAMWXUL0X11/XlY4Hb0m9Tq+usmodrzJr9/
	 2yvqXrJOA9BreOWdwD/vsTtnVs92Qndpedbvt8OatRZLygapzKhwKaG8UIDVulPJjC
	 p7vkWVLIR/Wt7SaAWaX8pn8b7aaqBkg/sL4X8IG8RtT8g5N0Lu7hxJaChqTwGAxfc6
	 5iIB578iAAZoAPfig/JR3ADl02OkGuRYX5ZkacpiCxIeFZfP7adxeXXoYCxgdSWCgW
	 Mi9QW4jwBlaATVIxbrdqmOuUD8q7meiIshq3ROuMrUZYZU3INhdLOBpG59YWvvqb9q
	 n2eDUCor82Gkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF12CCD193
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176058059357.10946.11280553929741409002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b878315c170ebc5b1cadba4485e27b0f9e115fbc57eadf39d7584587847bd77c
Date: Thu, 16 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760580593
