Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB28539021A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 07:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780902874; cv=none; b=Quij8U16/EpzzxVxfxcp+/DSOuQ/nRdF35/WIOEw6lxIhB6Dj9QSmiU5fuoYe2p2eAC2VNuocWIaKqCebQyrvItCJbvsTToXND4/eeiTXoFvh4nV/fHMNgR0pZUx518cwMn3d3fiZDbHKSmi2IyX3dOyJDA2rfL+yMf6xPjhugk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780902874; c=relaxed/simple;
	bh=n5edYvprl2+VPM6dUfpr0hJffb5VjnAr4RSCHRZUsM8=;
	h=To:Subject:From:Message-Id:Date; b=jPwdAhXOzh30+4xxhiyiTTfORPR1gNXzDdD6qecmn7pFgDxva1AP+0ytVouhxMfRAitalQHYDN7+6uYtpQvzMzwzAVLDgSrveuLLWiAnCaJRDl8JabhtA5QoElllp7nGFRxi1Ac3PlF9PPz1BCieT8ZpA820YtyPBNUK60X1sp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOgGA1UV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOgGA1UV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC596C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 07:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780902873;
	bh=n5edYvprl2+VPM6dUfpr0hJffb5VjnAr4RSCHRZUsM8=;
	h=To:Subject:From:Date:From;
	b=AOgGA1UVnVS5CyWWBI7r8HrLYoe9s4rdw4CBFNGYQLEYUnnez3Y5nh+3d7Uns84px
	 FHHER4ipbbnnc9YPczKfPQOcVhWGLUYv3LwHk0zzD+/W+kSqm+ZtetOOaHza7Ssug/
	 muXSpBusgqsNDg+qzM7U/gvfNDhO6KJkEFzktbNN/EJy3Wtr7/eeiVkJTirLvk3IWn
	 /VEN60OxqUN46HaaOBhJ2Fvdj2IBlm8aED6IrTxe2koHpaDCnNGLbTe+3a/RXql7gb
	 sD+VC3ZgCsIVo5QZcukDHPhKhcSSzEQxfPuE0AkxZGCFIISHhz8CRZY0DUK6X6sBFw
	 EJvdyEY9JxQTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC054CD8C8E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 07:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178090287369.12971.7340792870195661175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 898a658ce6d9f3860b39d82ab74e152487937a216c08ddf84a724a75adfb8ab0
Date: Mon, 08 Jun 2026 07:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780902873
