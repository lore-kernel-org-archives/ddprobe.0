Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7697221F0A
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768320234; cv=none; b=sCmP8MT/zl+If9ILrVMY1yXXb+PcDAFPrJqyP1Z1J0C1ldeLCdIG1rNknJ6XldRI4iO3HQTERp9cBCAdQpWTFyey+q+2M1YB6po7GUCGrPXamR6aBLG2BdSyyvVAbkRF1LAcc+WH+ujVG0XsGXuXI8L+G2uOKmSdm3EJ0vwAN2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768320234; c=relaxed/simple;
	bh=1ZtqQSltHb4NMqoz8kuQ/ysnYUcJN/++02M5xL4WF4o=;
	h=To:Subject:From:Message-Id:Date; b=dzQz39SP9qa4McjsXjgDYnfUJaSKTRKETWYMScChVoXd2XsVk0Qahi6uPY5NT2VMySWeXLkmt+M1ADNmI9WmdNPPaiMdU08xjglDCK2uYYBuHYodJZqafuxWHtAen0ru4xtdck1gDan3iTCbyLUNV2nztJrfu8ruRjJZs++RJdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6m4lnDy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6m4lnDy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE35C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768320233;
	bh=1ZtqQSltHb4NMqoz8kuQ/ysnYUcJN/++02M5xL4WF4o=;
	h=To:Subject:From:Date:From;
	b=b6m4lnDy5LwL5wIcMom1NIt/YT4Vdha6skfnA7mfsiRhnm9LMq9+iIXPoqNlkcqAU
	 ur5Eyprg6XtSVihzTilmkmEbOo9xyzvMtRO4sSsZamusgZ89w4FDqbkMYi/j2AVQLO
	 F1K8XHr2h5BOeIdZwnPN43WZBSku7F6UFcI63a37q7rmmxIw9TLrPUnfgCLZEY7O8T
	 P+bQuK9k7gSn8H3T/bWXTgopFWLzUiIZjCn1FLi/06tzOfQvfIbBglxdXVoSKeWPId
	 jBiAYQq2pqsYDtipKckQuxpe/oO4XNEQYvG+6SaiRRrbu7Bt4QUtu/F+KezCV1ULQU
	 y/DmCpqGQMCMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FABED2F33C
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176832023357.27704.10011584375893998487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab40a2562822bd977d172772dc583b0c135550ab6912a9dd82498982f4116211
Date: Tue, 13 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768320233
