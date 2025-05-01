Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAEF20C01C
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746134994; cv=none; b=FuD1OrfI+drKud6TVZT2H+Z2qd1oBNo0mJ1rwdiP+CxpF8Gly/0+ankYA3XBI1X8Q6hGadbJZQUHCn9VxVJIoqXAoNBEPSg7Z8bC7kArxXsxP4DCM5t2O+iQKoM1COf1KI4X//fDKiUdIxr/YvebGPwkfpknG/Y97a/VplBNGhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746134994; c=relaxed/simple;
	bh=nGrj7CWmqJkH7cWA0lQgMUYL+QNZkVhRs/svVBSi5Cc=;
	h=To:Subject:From:Message-Id:Date; b=e3tI7DAOSD5J1ErSewx9NONj4eq1SpGjOcFwmRgVUc7kJfem7GRfFevNGLSZ5l2iicEybS53uDUxBNtllde5HP9ivn1i8guXA5Of5JSIkFZEFXMUlHAPyPkhy1XZvgMadQGpmwCbkY0CtnxAEQ4OxnldPBIAtmFgBlr98fHt7qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVS+7qPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVS+7qPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AC9C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746134993;
	bh=nGrj7CWmqJkH7cWA0lQgMUYL+QNZkVhRs/svVBSi5Cc=;
	h=To:Subject:From:Date:From;
	b=jVS+7qPeYF/KreK876/kt8H14J3a6E6TaS19qnGJ/CNH8AvXUrScyRArUpxx7EJ0x
	 HO78/IgSKzSk4RbcqBcTlR5cVeA04DqJp1VTxlhj++fysIVCuYlqZ050AOVuvy3Q2S
	 dfeGJn6HtMyAwFTlr3YHVXBdBNL/31ukjGSzbW2l7kdlWraCNKZRzjyPw0mH0EtUlp
	 88GQq4QrcdPlIHEDCnv3IIo8LOn3wOb3QzoouulZ6oXYP0cf7Z9Q7r8l6NkuM4YZ2h
	 d0tjE6Arac9TsNtNYNdz9X0L0tkeKXFVSe/lvlF+Oyy2DqzzYU0/bqdJmlW77ZtMyT
	 jPttQKOP5wUcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E784C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174613499357.28217.8085223772923564437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc382cc53ab08269f7ddef316136e8c8f36628efb6e360e73fe4b8bc2a8e47d5
Date: Thu, 01 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746134993
