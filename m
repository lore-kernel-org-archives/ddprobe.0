Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B91767DA66
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 08:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767859434; cv=none; b=f6TX42OuRfPrCSwEBqReS+PYP0iQKrnKJ7TmKsvKmh/RdUN9Z99glVcttCl4O43kCNSo4GHM3dgFOvMvG44n29rGJYCh9k8lNbsBdKmXtCta9lB0yL8l4yH3S4ycg/NONWKH45qw90FU34yzLwx32wpnjG9M5IXMvS80qbRLV/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767859434; c=relaxed/simple;
	bh=rY1vLSQHc7NQc6DGaJXblMLK7qGxhTptq1QcKq81z+E=;
	h=To:Subject:From:Message-Id:Date; b=lXfyykwr693+8fGeAPiX3miNKtUDZFd7p92fmYqFxKT4QS9PoI8af9eqe6lYXII7+S8LgUqMuFfug/98eztai1DK+Hb2XSbBq4WnLWVqyiJVRet8bntvOzjH4tARkuYlHAt6MGs2Q9hR2IBBqQ+/U2KYNN6fgcrrwJD6oJX90/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJB5DkjH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJB5DkjH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFE6C16AAE
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767859433;
	bh=rY1vLSQHc7NQc6DGaJXblMLK7qGxhTptq1QcKq81z+E=;
	h=To:Subject:From:Date:From;
	b=qJB5DkjHHmJso2vvAhPJeCqJ3ps0VkOz04MBa5lDj8FLRX5WbguCYBRgtojz5Cb6x
	 HnIZ1uP+3VQy+SGp+kdbzM6/lhpz7AJ6nGW5OqjbkS5SzEKEShiB4unCoG33tbbTqu
	 b+TPrtd55Crw2sIoE4qAwwBsDaVb3TtwmJakjzrE7t4GRHuq8hxfPnuf6iHP9ROnM3
	 IaUywviegfZvfvFEovdPRJtLIL05HrGzVgXl+x3HkcBEawI1BST7Wlk9go05PFbeWg
	 7CbpiFA+k43CjnISIcT7a8aBS9zOIDNUaFg0G2S50w6moB2uNdQ+kDnN42jm6h2V0n
	 yX4Eqg4LnM5Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF50D148A3
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176785943358.16085.5162511249030494152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcef48e92e9c109b4a4af1c40c66cf9ae4e78e23266a02a678f70126aeb98d73
Date: Thu, 08 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767859433
