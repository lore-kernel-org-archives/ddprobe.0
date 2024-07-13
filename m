Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 934271849
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 02:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720839563; cv=none; b=g3U2+b2KjlDM7O88Y22BRNBq+14dg/aXAwmE6iLVyxnmFZ5bA/DHsoLdXkr52muW8pJNRiDwXlhZ3zV5FpfZt40wKxioirju3eLcpnBm3vYlcCZvcXeO7uZZHJ4ALlbg0BTELoGH3BJsjzNhNqi04zMiuTH1OWd5bzywHxQlHEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720839563; c=relaxed/simple;
	bh=vudetQmJNGXg7vfvLMbo5RDTpssXusUYJ2wYHzkCD9Y=;
	h=To:Subject:From:Message-Id:Date; b=FH9jaEvHkZtF0XFikz4zdPsOX/5ttccXLm+f9yT58I6yqfFxlEb1ugo4Q/wWZ8HxcKOViyFNQNWqV5sOUP1fgijIOX53UAGEk9coIJg/tMlg7AMZGvEVmIoaF6TqFVmY19U7uHTpoyO9Ra3A23Z7mYk/mMlmV+HG/1yIALYGrTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ym7WSh3s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ym7WSh3s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFB4CC32782
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 02:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720839562;
	bh=vudetQmJNGXg7vfvLMbo5RDTpssXusUYJ2wYHzkCD9Y=;
	h=To:Subject:From:Date:From;
	b=Ym7WSh3srPY7GjBZj1pdKPOfcQlVj1hWnEgKRshguEXkPVgjNp6lJvGv2CVKd2VFV
	 pctYXTg7kU9Pi5ro4Gi+YzbW+4SdICCBca5fWqtkdR4uUKgeyOpygGI/13k/iYaNds
	 wuBxHcJqS+UjMiF8p6XTlrFEYcAs1gs3SWp0WeP9UkJDSL8rF7rvV/BJ4iiG90Phnk
	 lTswbI8+V3IrErXXtWp5iXcH+Q2m5fhvUuxaZ7N6BQmZMPSxSDfT4l5cVv9eCq2qbE
	 EmXNJ6bmXYxRTUTXPUPQYGcv5lmVZuw2rP3OBWHlDdPMOjjckkzpdk4FbOW745fEkK
	 jPVtvXEkfr/hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7024C2BD09
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 02:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172083956278.11132.7232899226980083127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daf8a80d624b991a978d06b1cfb4255b5b0beec13f8850090930d1b4a5305a98
Date: Sat, 13 Jul 2024 02:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720839562
