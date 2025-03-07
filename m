Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616EA21A44C
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 20:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741381134; cv=none; b=KQJzL/EPIPu0FSOcIFEN5v2JE3thdCDjlhlZoYCqfdcXXde3IgXWPNZxVHuxnJp5AS3V6c9r93PCTsTw4Dm0/SOjhnLQIQOr+3Lxz1oIDzDl/jqBiUGWMDyVxbl+5CdErrKPi/H5bN6WRYHtQyfHU698yNp7Els63SuvruWzJrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741381134; c=relaxed/simple;
	bh=yVn2mps86tag+/AmCEje62WoU5uxkXsmZyO9dcjoa3I=;
	h=To:Subject:From:Message-Id:Date; b=XLbTWJMMbI0aIM6hR5ajx5i1816vCkTdV00j9BiZCq5hfjCic13A/MwndJIMDHrac5UB1gpjWWOr2PgpEi19x/jwa4iGOLQwXbHWd5itSp6H7rQFkM5QL5tsrUgH9zSXFsmPHKpv7Z1xFETHjsZGqDCgxltE1X2SWIItUXokW3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TehD+MpM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TehD+MpM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B49E1C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 20:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741381133;
	bh=yVn2mps86tag+/AmCEje62WoU5uxkXsmZyO9dcjoa3I=;
	h=To:Subject:From:Date:From;
	b=TehD+MpMuO+Y23+SHaosMLxc4aOrBWgzJUxhsCYuPVWkzBuiMNnw2DwF+Cje5Y22l
	 zwWnZjKyIloQxcP5vJrlpB2Tms944g3Q6+GwXPM7MbB7PBC0FPI4mqZNGCBW6Uh4Fn
	 XnUoM606F5NojrZVjXdfOUF/O0T86aVm6utP1mrsRbivJ5ZQFKRfBcOYKGpjDOV8Zt
	 lJTNjaXpaMHJ1iC18nsbh6CKrR2J4UsC9YNw38gyUp2qdWhYM+EH9KZx/BBtwIhkS3
	 sHXgHW7r4kWwaaQl9+8GWRQ2GAnNS1WTHD6bVUD9qnfvDN1z7o9ReuxuZDsk8w0dA5
	 qLyJP3PsRNHAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980F8C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 20:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174138113360.17085.1081509739435815343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 206ffb311a7f74455aebc5d06db3e78ee3cf8f0f30c36c2859d0b786063de27f
Date: Fri, 07 Mar 2025 20:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741381133
