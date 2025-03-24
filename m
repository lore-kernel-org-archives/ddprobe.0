Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E06B19C56D
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742800794; cv=none; b=iPFr+8zgJKASVg87CXU+duPh3ByGjjtS9j75wavHQXaft3f6PVMa3CaWDa31FgY7QnE8Vn0CxHA06zbkqaj9DQzjxKo8UHwcVJA5bQPFnylqdZ90MwFEX+nEuQC/X6ETAZcfQsuvTJ+YSqPKHJ63SU+b78/9I3CDhs92fCgRL1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742800794; c=relaxed/simple;
	bh=l/OiobYycEA68+bYKSyw8Phxwnsqcipqo23ziDoagJE=;
	h=To:Subject:From:Message-Id:Date; b=V3ggewjIEJ/O6Ln1mxJacSS/nW43YnQPpWjLBkG6MsDGtNcmlyCIbl8O+nw6G5kHnDMwyVhd+DaerslXM9n2VZ7lbprpcJyyt8JWwW3Rv08ToWG9+Z85mx+5EQfFXmUCUU4KhGXK4NsxzTFTBfh/N0kCaOC1Q8h8e87jEhSz1Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1tgSGkP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1tgSGkP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCD7C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742800793;
	bh=l/OiobYycEA68+bYKSyw8Phxwnsqcipqo23ziDoagJE=;
	h=To:Subject:From:Date:From;
	b=a1tgSGkPYs4tU+T/MQyU+CLwOzuxUqHitLGS5OqAA40jGcIrEZhGD7Y2FZHV23yeL
	 uX06kjxNyBKz0//iF9eOy8SDeqz2q1Zswn6slBuydh6qZsgrfXD1TbQaro4Ut+NTj+
	 BSESU3KxlDS8gkZ1gxrvZ09It9cRs8P8D3oNIfHCN9zNzV9Mrg/7RLJXgEHfa+v0w2
	 XRB8STM0YpNfS0Z41eX34xzYzlTZsTh64YDZMjXqi1fZ0cUi57wQtqfDfnfAEI95sV
	 +9Yoldin6L+G7nFMK1F3cuq8jgp0s4OouEeI0gbXwo5strb4vad1/moNWF0goW9r4N
	 Sqggo4Ls/oqsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A140AC36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174280079364.10554.15075930253528021431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f30bdeb905f9ba6fb81ac812c472256bfac3d6428df85351338f5c2647fbbcc5
Date: Mon, 24 Mar 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742800793
