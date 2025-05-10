Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CF9BA27
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746862794; cv=none; b=FskxOC0QNVG+MBv7nNRxvZg5Dql/r0pCL3BCbyLsuxaxCTJBbStvU6wVYZh8jJgpiOMBEhoHJY2xxG4o9ad6L+FSmQ3cTx7I9dqB9v/lWQ6HSSSKBB8wp0tplKOhN3ijnLbKz4rXBrgPOLuYGl/RH6RdNYFSx+9veUTlzgrzLDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746862794; c=relaxed/simple;
	bh=Tye0MR60t4SVm0eoC/iCLQkioXI4hMsoAxeK3pIJYo0=;
	h=To:Subject:From:Message-Id:Date; b=mxF6yt2oE52B39wyCUlQKUh+5/zwQF3lS2do7KLxMdwbxE8GUfLCMEm1Xt+dawoKNQOc+M7SKDVsrrToyAwrTa9JL/M+C48ptmvBe5TtcjLPqX2M7Pe4xAW8KQzT9FHL18BfzO1ZSGSabDXee2uZ0denbqBRubeJNypdQsuVhQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqYzlzMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqYzlzMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B27C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746862793;
	bh=Tye0MR60t4SVm0eoC/iCLQkioXI4hMsoAxeK3pIJYo0=;
	h=To:Subject:From:Date:From;
	b=PqYzlzMvAwclsvHmM9XIDIUjoieZ/t4U9FYzkpyWyA78Oob/T6xUfXnhuwAVoZJfW
	 ShbJI8DIzhPF3NjjFL9AmB7bB79a/U82nNer4baNUygS9bNS55f+vd8aLbFRyc4akL
	 Ta9pToYLWnlRSTPyY2N6+bRwAYq8qOkh9aV5XlyhLUSoR2DYydw1i7JAU+N73H47Al
	 FQ+gWD5KpGsEdPf45vXmeR0965kAFq5WQGT99cGnokTqQkNI3LLURNCU4z/kG0gfTu
	 2x4JQ8H6SUnASog/QHkfDHfG3ydf7pjyLDIFFo1cwO9Cr5q5X33YH5BP5iU6whCoxb
	 ygiEIoKz3Mk9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945D6C3ABBE
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174686279357.21951.2323034407728185435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ed4732d84a5076bba80e76f072657ad1a008b4cc00415d279229884f95ea7d
Date: Sat, 10 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746862793
