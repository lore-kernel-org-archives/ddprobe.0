Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093731F4CB3
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762454394; cv=none; b=OErUuuhoSQhqRIPbRY4vl6mj2fujFow0ancObNn3HmFbxYJjkvv3E3jEy1yvAm/iocOLnzcfQRpbVaC6Gy64rlzYj9jlnocWfwNp6Xczl8wjwpXMWe3YWkF3cpYPS8oKMAxMcySY8PijN8DYSVNfG2MgxJH3VHvbL34ghZYF3ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762454394; c=relaxed/simple;
	bh=JvLo8HsQQmORycWt7tvp6EcwC21aOtJ61FNoN4V2710=;
	h=To:Subject:From:Message-Id:Date; b=rkY1DuWvUhKQjidLOMBlN3wZjj+BtBbnyiIRINdfk3rfrqVhtLbm+LBEl32VF3kfU873cCdcv+a1bNCiSE2EjYbO/dC9U/HVKxVaF8V2HNa0MZ+36KmzxOUpFBIeLL26RgwloJIVTQ6znMpOeWpQJ3cfaVVqLBxQIoNU9G3TXqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDCwa06E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDCwa06E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A763AC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762454393;
	bh=JvLo8HsQQmORycWt7tvp6EcwC21aOtJ61FNoN4V2710=;
	h=To:Subject:From:Date:From;
	b=SDCwa06E1nC8w7YEVGEaGkvgbzJFAVHVvHRO3lxmyasGiCwQ2rSJ2jyxGr9sETdVN
	 l5KhDUt7xWs1xSeRz/5hu4KX7VIbhgXfG+0PwaE50cZrq+eozv5nGoh6YuOzJakE7W
	 vDT540mtXxWfvK+iofK3wLDm/1ynGZCzySK96uTpD3v4eeYW7aRE5VHXYx9Wp6B6JF
	 z/57eWMduJsLA917tymIzs9Vwjk2TU6Culso7NHYduq7m5GJKgmOLDrbfPk+/JCUjT
	 yGiu0Us8HUK+TmaBXZ5lapZL2Pp+VkY5GHeylgq712KXbGCHxPSgwZ8QaFCQ4/f1nL
	 1FWaxZkqnx8uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989C5CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176245439358.7516.16481593429111360464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f2dccd2a29772599e537be5d3f04691a9a7911ab3906372697d254e0a92cd6
Date: Thu, 06 Nov 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762454393
