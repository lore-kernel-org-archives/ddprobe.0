Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0F31DE4DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769172834; cv=none; b=PIFOMr/4vKP6CwL39seOVss883TPGKaDzOYqBO1pKV91j+Ccs1NefsythlRIiIbuI3J/Z/BhYISU0Chy+bG+w8HMy6Cn9uqz/GJfImUyqvVIpHFxw060lC5+pySIoiT/FlZWuUTbSBK1XoKDTdbhQkgdBTCMuDJxh3G4hWvzShQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769172834; c=relaxed/simple;
	bh=YsWxpMcTLYw4omSmi+m3GIfpG9S1XHXUx2JLGLJt2nI=;
	h=To:Subject:From:Message-Id:Date; b=XpfjYCfilSC61D7OcIlGSIQMOS7m7OItfRhBB+EWJ6zDdY0rg8OaAyudk/l1GSEikMvJ1JgWq6DDb5TuGiYEvitzlL6/ntj5i4TB5XMxnKhZu3bIFsrtswxoQwRJA6YkWuDZaBXUmUw9qR9dvqK5ZeMhyEaJV7zZ0idlWSI6prI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwVAJYgS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwVAJYgS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF42C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769172833;
	bh=YsWxpMcTLYw4omSmi+m3GIfpG9S1XHXUx2JLGLJt2nI=;
	h=To:Subject:From:Date:From;
	b=YwVAJYgSY850UhYWsP3KBHC8WioAyGKAytpO9wO/NtNbzS67bKKntyTN1IcAK75Oe
	 u4TWITXJWbAwl+idTmBHywNArNoDSijcGJ8ebMc+I/o11InCiyfFm+isu+gptOH6yT
	 V/fXSXI1eTCySGMzIZUOJANS5NtLDZumnV6Iq3mf5kSjS5SVoTpModQDUWOkUSe6jg
	 JnXTqCGftvGmZZxEt92MNuC49nxjiotAZFgwPuPOZpoqqshdkEXv/pG0SQi9o64aty
	 JuXTdk0qANcCjAP3xxTbABw62TO7G56/tpEYVUfM/NLBKrqlcf8+QGbX7PffffHjh6
	 47A2WjBEu0Dng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B3D74EC1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176917283357.28446.8164095154761052416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43768c2c1c4b3808bd0528271ee17ce33708a1ca2d54ef9de07271c4727d8340
Date: Fri, 23 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769172833
