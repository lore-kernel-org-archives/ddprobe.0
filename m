Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F7F2E659
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749121193; cv=none; b=o6/SACjvjO8R7ghXx2iczW5MODeYXdlL8NHlUE/IiCu2PkExF0YYEcrWD3jBa0L1Ux1lSYFG3+7mrG4xDdSuo03MuTnrJR6eOcd8TdVAVbwT4+Ubw9oEg7NWHTniG98JSFMrEDCedszW/326ferufQVygoMeAaeJd2ZjuodtSzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749121193; c=relaxed/simple;
	bh=p6FRW03zssmQCH7df9iI1kMTjau0WesSv1S9bim5HW8=;
	h=To:Subject:From:Message-Id:Date; b=MEH/FkgWvlHUuze9DdpJKS4ErTuh/8alVA1eeG8Rygco4QbcM7sbUs6kz0Kg/MvExxJwv0trvyEbWzTuyIKSNRDeYASIxqnG76PBQHNP/slCHvviuBAbALdhLucZu4qD++DLuVLO7wAe2fmOW6U651enlU51fJA7NAUG6giPhUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTOzPxOi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTOzPxOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8DFC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749121193;
	bh=p6FRW03zssmQCH7df9iI1kMTjau0WesSv1S9bim5HW8=;
	h=To:Subject:From:Date:From;
	b=iTOzPxOiUVFkjxByK5WjZOSDLv+DsqNtU2t7wTsSazFO+0DCcr+BeOCRbwgpdedwk
	 NwCc7XkWe4PIicLQK/yG3Zx1Hipy3qrHCAIRwP+HC4ldr6qjLRo5qo8U/8qETiEvJ6
	 Clr2f0jDvwOR9r9vToZZEfn+u/js+Y6w9K/mUwgXNFS7/pMMVm/+QwD5kpK5HhseBB
	 KxcrSeM4avU2rgINSCXdNr0DbnaEOuAzYDVDsxoZvoPjGNqcRWBJvnxBQigP+ta1tp
	 mxaFYvsDS5cKzZOnLlzsCaqz9tWgRt//YvZmG4bNzubgKiatrggEgWyL+0ULKjhoCO
	 x9QLHlw8YOAXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F43FC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174912119357.24053.12293414756712065017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32554ebe57b0e4d3968b13cfb641257fd8f66784dbad6f9c74aa26d7b8eaf53f
Date: Thu, 05 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749121193
