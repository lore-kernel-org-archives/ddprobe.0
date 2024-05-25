Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599951DFFC
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 16:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716653063; cv=none; b=dVk10qeNarr+uZVyBe+4YExmp86u6jeMUVhMPGNNRlJERJgcZRybNxRw1AR54IILmvkAoWI/U2/pb4v5zEfi0te14IIFhhP4ml8k+Uem5ykoqiLdI5hw4OkYtlm1y68iQ3gGaT9xPH/bNTyZMGauqSnvQ68UFvs/B2DEiWskQEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716653063; c=relaxed/simple;
	bh=YX9HYwY1oVlKdVkRNl4kwlZgyh2ndEfqc7WQmRcrw1I=;
	h=To:Subject:From:Message-Id:Date; b=RXxPjXyZUKQQ/LT2ZrWfMgXTRAGTWqPGXnlWDaM0Hp+D0/Rz1zbjHl+IrRMEozLEE/Y29tsOT2AaVZ6f+UdDjmfvr9dO/cPESzNlGXTYRYM/f+VAAkJVmezKFSS1CntItOVnl7FCV59XNOgDx1R2XW0RogvP+F/rIQ/GjbdYvao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lt62mSgG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lt62mSgG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D317EC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 16:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716653062;
	bh=YX9HYwY1oVlKdVkRNl4kwlZgyh2ndEfqc7WQmRcrw1I=;
	h=To:Subject:From:Date:From;
	b=lt62mSgGS34bzQA19gulyIU/RQZk74pH42aV9FyKFoYnMvH8WDLAVINUBdbj0KcKU
	 DQM6EF4CUO6jI2iZzaM8ZsRi/IXYVsE+/8Boe+nwTd33rdjW7h0PsgSHKjiD63zs1m
	 NNT/Ny+CEeSlbE8wiyVTZoaCs2i+ZSrFbzLTKU+YHSoTCakbqMQ0orq5oA6aDK8etM
	 PLZRH2ckvqj2yfV8R+4JhtLDzwoAgmYqz2n6x578cCQ97Oz9+L0+EqXYseNjVBA6t8
	 2wiPumKAgvHjOOcVwvHk8y+ZCDkJrJi0Qbzj/oaBKD3mo6U5b1Jhy35xq9EORYKR+g
	 THcbFjijkX03g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A9FC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 16:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171665306275.24145.17587865178339836039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff303906718a2439c916cbec61c845bd943f6e7fc1142b91bdb37493e32cd8ee
Date: Sat, 25 May 2024 16:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716653062
