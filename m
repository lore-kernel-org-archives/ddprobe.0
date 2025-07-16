Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223D8EACE
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752626394; cv=none; b=cvz7dQyNpzrLuNfxqRoeAWG1NYzJUseQ1TZdgZfz7x6VZWHOoQSQS7KCofuab83P0ixji5Ekg3t7T/xL2gnuKtL0UfA7x3TLJPAh5Hvt8TPh360yxH5AiQ0FaQ+Ij9/6wnpokWhbVIIw9lLEhodIPAtfg7N0UhVuAjmPbgmDI4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752626394; c=relaxed/simple;
	bh=qq/B985SxjSQQ5707ZX6gO8Y1aPOpRyBMWDN2Eg9aLI=;
	h=To:Subject:From:Message-Id:Date; b=u5M3j7+60LL7TMl0OLnUp+NOrFXo6s+5xKXQ3tlRPUMnSksD4mudb0cYS8V0v+OrrgPFgO9ePkTnvegnk1ehmTeL8I5XRKPCTJB3IItBVMN4nIfGVvj0aZKf2W4G/xM3Wac03dGIUBMj5KjPUOraWCBm7ycJtZp1W6x1q0f3VQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBdGpw+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBdGpw+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA14AC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752626393;
	bh=qq/B985SxjSQQ5707ZX6gO8Y1aPOpRyBMWDN2Eg9aLI=;
	h=To:Subject:From:Date:From;
	b=TBdGpw+PJbkQcwc1RfUiQf9XNBCciE88emhHpb5OhVNKEOOuGBK28eAt+tTg5nUtL
	 i1CTGGmym41UkN6EFuHx51N1pGeASPAXli4LVktgnfAGfwsClW7piY6HGH6kAEBbpt
	 RZAMFLMdovClb4PXfXFkE6bn3VHIDv6QXN5YJHBx2WmJYQz2Py1CplsYSiMjOuQYQx
	 MGtR3lkumXySIfOto29xC3ANTMLfRTaFNXKDqB7H7uGl2X7Clk/XH9RQRDhkBhbOtx
	 GjJUjkJR0kf9h6KzQZFOJu0KKAgo3F/nyo5Fha4axyqZI5c+0qmzn7MktkP1kJ+WfD
	 8dOPf/Zgs0wTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9741FC83F17
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175262639359.17109.1584749570321187622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82ec889712cc8698657894f2fd9015374ba93783923653cdd4a379b9bcc5a271
Date: Wed, 16 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752626393
