Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7F02E7BB5
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770263634; cv=none; b=KuJBv1gTXi/7+x3IOgSnH4/d3mPFioOg0MDNP97FddrLoCYddc0yohTpORC8emGab8hrcdqZPViVGCmctaVaapSqJUPiHeYCi5C+QXY+xzWpvBVWEvxj0AMRez+dYoLF8hCg6Gp6EzpOY8LI30zRAK6CqdUPJ+fF528XjQHeheA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770263634; c=relaxed/simple;
	bh=WsBm/FiBh/7qyVtiUqDHtJnrR33inXBjBt5sUnzJogI=;
	h=To:Subject:From:Message-Id:Date; b=fMd1HbrPdpLQIyE/vjRNcxfK7IyuSqvyUmGc/mBy+wzjpDSZpUdWouLj/x0GS+yQhGUtgiVOHwTuaTtaD/91L+zcTXNLoMbxhEioGmTFKX/6fxpfskfIKqhnbhEzo83Av0vqQ9dbuvCHyFR6ALiJ3Xuxlxc/jzlzG7xlSAmXUbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N011Ge8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N011Ge8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA979C19421
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770263633;
	bh=WsBm/FiBh/7qyVtiUqDHtJnrR33inXBjBt5sUnzJogI=;
	h=To:Subject:From:Date:From;
	b=N011Ge8yBr3BqBZYqXuFfwI/4WYd+7BzAYYjMagqCx3GLhbV9y53aGTDtBXCEo9uE
	 N2BHr4su+F0r+WORy2CUOt0dP48Eo2ghYlhxgUsQI8zbnYr8B+h6rZhfddaHORuGxu
	 PJGeUo0fpBXOas51KhpcIdaKhpeH0aodI9JUPY881UFA02p76a2huqp8JBToF5Gc3F
	 OeCua6+IFBx6XiY/vnFZhcXKOHX6/HWLoEmghL1dpIvIEf/+/bN4ox9pg8bqnWb50w
	 HbVFSvNHdTqz4Mtd+GSnARdk4ft+xHAnmw6AJanC7+nDCuloJqq62yIn6t7p71/wtt
	 VC7z48Ck0Darw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A57EA795F
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177026363360.27802.17923677559846414613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1e439b422083feb78531501c442b981617fd5d78564552c4ab42c14c1588f93
Date: Thu, 05 Feb 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770263633
