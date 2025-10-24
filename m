Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180B43016EE
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761303594; cv=none; b=kOnwPxx3x3Ik+DMn+LHJvwnjQfrsplVOAe+4nwl3tm2o410tpM4n2vgaqah6DWgIBH4z7mDX114xONKNmTy/9Ho7ZSUW7AJVIZGgF75VFiFmrsNBHkzLRcoYAgMiTmoGl6LXDVJlwZZX56OYo+av9k4/8nhUXLbr90zU87Q9dh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761303594; c=relaxed/simple;
	bh=z0KcRMuqX/TaFkj+d0tNDv/5UCTwXymF27/B70taZmk=;
	h=To:Subject:From:Message-Id:Date; b=Xg0wTd4mgnumwjLdijTyJGedZ/ejUZ2ZF1b5mM/J2B+TXb2AfeA7z7mnTmaY7g8Lq7fMDOmXak+CmHUnwvvLFGFpOl3DyqCQmWYIb2CEPZAF0GHCjUP+AzhCuQGwMa3WXQfRi7e+tOU5V4EEUf5BaWkxniF6NnLVA0KDkwQLX0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=djgY8U8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="djgY8U8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB4FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761303593;
	bh=z0KcRMuqX/TaFkj+d0tNDv/5UCTwXymF27/B70taZmk=;
	h=To:Subject:From:Date:From;
	b=djgY8U8WxEhg0hHIWHJqo/Y61vvC+GYMb0d/RFzMEDv2V3vIZ7haNjX2r222oSPkm
	 0U6DTpx5A81+dIRQ3Uhel4MCvhradOXDEciYEAAQd6mdybFMkzCQ/+3h4c8hN8a/Xe
	 dYxzBCSXD9vyIASvAR37wSdkZx0YqEUTOG3XQpwqMbng0D0ZEfKlcuoddrAj7XSpbt
	 WlKeNfQ6L+TXjq1sG8KgElaVwiWQaTsz6SU3cyd0KcAUdtYII7FqJmE2hIXZnmIouR
	 P/OMHmjfD7WwODynsxICFdXTMHoyO/UYQf3kAybbjRzHJ9PxF8gBCLEuVfy7GSxCKQ
	 JYhrI3GlzkClA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB20CCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176130359358.10222.17531984358542973765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e462db6b5dfd6904c3247b2b405e32cd79ea934db160d81b509bc5c5c9d151c
Date: Fri, 24 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761303593
