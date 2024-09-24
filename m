Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4181B85F5
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727204154; cv=none; b=ZuEdW9qVJv2NoeFEu8bkUWwglEnDEgCRpbBICXTouWSHUmdIhC2DFxXFVfc2gM3g5tHmIfWx9JzJXAZ0dPGukCUf1IeFtqzXj960UfuYWGU5Obm3ALvC5sPSo0atsfp+7KiQ0gN/t+vRtMsRP4X7n8CJehivL4IXArH72Z05ZvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727204154; c=relaxed/simple;
	bh=eWI5KHqN9GiH+beLeIMiVCHT+4vlPeJemrgoDIlrqik=;
	h=To:Subject:From:Message-Id:Date; b=nfxciAmWzrRwJWOE/T2O5qRvlWukicZ24mIdyU7ee90eBMTtHa8GhgNyZ7CbbmSt2jHT0HdiYrMjRdO9xiO5CrKeIfZR21t445EBZCYNUQH9NPXTunzWa/sZDntVdUIvU50r+FzTXwG50mPXHo5xPA8kFgatr8arKoG1yQCUOC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=luuisIb/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="luuisIb/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4986C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727204153;
	bh=eWI5KHqN9GiH+beLeIMiVCHT+4vlPeJemrgoDIlrqik=;
	h=To:Subject:From:Date:From;
	b=luuisIb/xNJgPbg/LCyxxA87I6eCQWmE3zkoG3bSqfzbheFV4iqAlmNHU5eGmtF54
	 Sc0tq7Tm2MA+2LN3X6s6m8LCmJ2zL+xZ6B2EQ7+nMXRMEtxqkBmX39KK6hMMJqbICg
	 dy4tjCyh406ngEYQKEK3++1vXKZIGEBviEUqYzQfQzxbl+NcxkVxKR75pPfXOe1jmZ
	 4KqyQIH/u2eIxSx2OvEZFW3cfcPKTmVtAqapabx+5joe3TLb/Da+bbY0VGaFUWCO7g
	 DcVtvPgrJXiRB9BmlSrfvpcBDIG9B8NabqYLAwkEG1lMp1ehiRSv4dDPtWsHBSCR6x
	 83dejfQpWeHQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93950CF9C69
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172720415359.15565.12785835200259478476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c8af735597b3a2965020dbc07a6ece7b93b2ce4f3d7ebc2d28ab80c03b9ebbe
Date: Tue, 24 Sep 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727204153
