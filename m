Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7161FC0FC
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774313094; cv=none; b=ohTxG8JSw9XnLr3rqUfhOMLCcR0/FSP1vN/KYmFQDHr99RT4fzAslgThp8owflu2teShKZ/RgPFYZnw5WsF3cgjnGs/xTAbYAs/i+jlswMzPiQybNgJvwyCNQlf6xTo2Mwo4FAPitTTrPc7aLJinWQ4Z/Cq4BO7lVWhsJIiRfss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774313094; c=relaxed/simple;
	bh=25WpbZslM4BcfAmWB7rnJfL9P7t1voLdveE1PgC1J28=;
	h=To:Subject:From:Message-Id:Date; b=kJoDucKG9DM2FYo9EBHNkzyokuEJG7IJHr2BRDR5+JDsjcieUplC0rFCh8zJQQtS057CZ3Qd/R3DKbFeihQtRl7koae9TgmfDkIDgPW+dxT6MKz0QyRxl4F0Hp3TX/QIvarNrRsVIRZy5IyHtMEGuQkXnTgeF8p48Kh1ktLiX6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vF7+TZTf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vF7+TZTf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A8EC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774313093;
	bh=25WpbZslM4BcfAmWB7rnJfL9P7t1voLdveE1PgC1J28=;
	h=To:Subject:From:Date:From;
	b=vF7+TZTfIvg0hsfkA6fTTYLYphIYxjMpOfWDgqZU/CgV3wUaAeZOPWsjPyKbzIn9a
	 OvgSfbx5kPTr0oC9AenjIwtZmdQnBXdu9lqP5ck01w760d1n+Zlt/OWs+Oe6Eyf8QE
	 TwpMwLshft68HVZ30+wiOQKyIlCjqCE0Qyv1vdOb8PZZzSyBJPaJdXXdBxEpROtAzN
	 rP8yyzvnE0vXsfEQE64zbXlR60drObNM1zt9FPe9wtFgyhCeu8urC40foBmfjDi1m1
	 wwC5K1KrGBnIGqE38MgqZjF36feFdcKeUf9qo4681bX75m64TnGJfIw8Vyy3Yp9+eP
	 8VFXCowWpRydQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916CDF532C3
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177431309358.4040.17718131070054369840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ff2dc5839b160085327cdc5c512424cfb4322ec2dce20e480454af97f06ad2c
Date: Tue, 24 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774313093
