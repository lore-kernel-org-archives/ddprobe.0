Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0693F206E85
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731079554; cv=none; b=Jv4OhIVdyCvu+JMem1Rxau8uFi8+gR3y8Jb13HQPjZ7ybk7tbdqD2ipt2vNxJjWEeo5sx2W/+Rayfavg7PEuG8arCtNXK65OocQw+LBhDwTWUtNDwb7QBheIFrySe92HGI5xRGALiEhXGGLPBLesx9pLY+IKaBMBEca4kYPWYuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731079554; c=relaxed/simple;
	bh=Hk4gATyAu1hw+dD7lE6l6K6lKAT8dRlEMGdwyXLTJHc=;
	h=To:Subject:From:Message-Id:Date; b=FqdvSlJzKQUocm+tU72tzIlXvGRh3zbfJzqqDIHUaqYTGp62DyECH88ly1V8gDFxvs0y+VTVzPNq1SDl9rjwT4Ta5XaQUpidFsxZ+stw6tEQY8/HNrHgvYtPgE5GSo9coCRyH1w1bX8A2pnlPTltB6nu75vrCyQoQD7+pgSX8SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncSE/FGu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncSE/FGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91B0C4CECF
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731079553;
	bh=Hk4gATyAu1hw+dD7lE6l6K6lKAT8dRlEMGdwyXLTJHc=;
	h=To:Subject:From:Date:From;
	b=ncSE/FGu4fjPWIT/rwm7xqNFP17OGgXkRAO/9kub7m8Cy4+Ka8lk5DqsbEqaNtLfG
	 SLCBY2/t6vlwPorkVEv1fL7f5o7q9exe7jSaUPowrl8DmYqPCnhci0aQatGKgRTmhQ
	 9w+9cfsCoEsGUrYBbZhbePoYhG9maFNHUGmVNmbey4miUn3iHlYgVFpB5KEbo+APlQ
	 b3lKm+K/3hJIzBNBDHgQE+dkvQDbvZN1sJdwy4LoPd04oumwwCAh84gEC+pW0JwdHy
	 PpwmHPLTDxTC8TGbB/5DylKhEFt4MrgESbQ4RMjngQtA1hrKcSRK470u+jhlCoNlWQ
	 TqFDGmw1d/uog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E1FD5C0EF
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173107955361.9972.14659382197668677169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41eebb01a2141f20867a34c6d840a13807fc9bc0b452a8e9aa96b1f3edba1a4b
Date: Fri, 08 Nov 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731079553
