Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E6BD27D
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 00:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717719443; cv=none; b=Cv/6ZZyWXLlQgP1MQoNMRj30LJ+aOYWFI5D/Zhz9Md4qCg1EJPhhP/2ettTJt7KvxYZKcrCkltzNKkaVfcYC/8MuJFpFdAXL1O5GlAeLtRp4fXoTpCi0wWYyxpdCwsF5KE5ZmMoiGqcZYg1g+i7jc7SqvYz+HKjAVGKipEWBVKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717719443; c=relaxed/simple;
	bh=nYWLZgTsqGxGfxQYMhOVzbPCAQAn0f5Vv6dnBRKdsls=;
	h=To:Subject:From:Message-Id:Date; b=QLYnsD6MBRhFN2r3nCrGQHh6VBVHDvuuXqvzdOx5K/TCvYvZlxnc5ENiWxKINyuieEvrDJATAt0YTsa85fRUm/jUnj7r90x8RTnf52mQ4vSpxhkK2qDHLaqraG2jnCLBHxhgPN+WOTIGLkgqTOZLLJuNQ1JTHpQfZ2eR413Dnwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=raBumDEB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="raBumDEB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5B7C2BD10
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 00:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717719442;
	bh=nYWLZgTsqGxGfxQYMhOVzbPCAQAn0f5Vv6dnBRKdsls=;
	h=To:Subject:From:Date:From;
	b=raBumDEBu/8E4JqzaXQPWFOL8YULMqWgsoNnFqOCWUi/ELloEAglVbNT5S/IPULDH
	 mMXyiw+oShG/JpIk6oKGbOGT8x8fXlBc9yLK7wHx1DAgKl/UDl3pQo4srtwN2PJrbz
	 S9bCa0EANBtxVuuQukbrNo0EeEledoVBfvwH5oh5ljgfod7DXhd1L7uhweIEQmzhty
	 0j2zj4HZFBIt4CHomGzrUf4Ub+kKI2XK0VS6QXjg5/qATKkoTooRhEvDOAYu8T8knc
	 FNXy1aLAbE2uzlMSVKjX2bw3ad4xDbJbYTKfxJRo+lYJSmfY+ZWXIpKzbHQJWnUvoa
	 PvTGbKDKPlDlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C75C9C27C52
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 00:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171771944280.30736.1005871944536554917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf1d5c0680cf2b1921ed81ac148df4eec1bfb1b2a41d2e63613c0783b8819203
Date: Fri, 07 Jun 2024 00:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717719442
