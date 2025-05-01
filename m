Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C10150997
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746091194; cv=none; b=IE+8FYiFYwpovd49mI1P/F5LzmYmItCi68HBJyYIHef/oE6tA2UnxkHMzZN0ZEAdlbi1iqfrCBmwmdtYfwSmThCpdowz5ksCteDZqXREfEKQavrq1VTMtEiW/JsZEUB8WluXDQOOu9XJiJgj1I+VxQkjqMAcfC9oDQ0+xI1bNbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746091194; c=relaxed/simple;
	bh=QE0cx+E/r7ozb0a+qfX+OTCaqq61++cojZLwYfLb3EU=;
	h=To:Subject:From:Message-Id:Date; b=bD3ohpFDDNO3iGSydUFSXMVQEh6oXzDmXQydteXqmhPk51E2MttMhmBatgubHVgvYuLFyBcr7ew8jSPX/xeSCPRkFS4fpF3aIcI7vAIlCZ8yTQfSYrUc8xk7DLhBf3SjEpl5/CjLWQo8+OffPFNxKPJ/zbWRiZ8xiBIeEtZTUzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RcGWJ/Dy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RcGWJ/Dy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05CCC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746091193;
	bh=QE0cx+E/r7ozb0a+qfX+OTCaqq61++cojZLwYfLb3EU=;
	h=To:Subject:From:Date:From;
	b=RcGWJ/DyCM2juSF2u00GxkcMI46UbR0gzL2O+jQwBJD1JQ+kQVtDx0UGhssYFgJpt
	 MHJLPBBS9iuasgRSB4SHDHY+2mI29pWYm/oz/trbHW4tLorqkyLUP3pegzlE/NSv/v
	 nv244oCiH1cO6tYtcxCcAuDXwci8aGJkxe1qWUNavr1PDgnUDn4pacDsw402CRlraT
	 SHAlB1oS6/HZC+AKEyx+SG0YcSRr6Rm6vFMHhI449IYtqrqVRkqsvHLwzPbqYee0nI
	 Oqtusr9lPLkVBJKcRKZ5zTDWrgeswUUtPysDvFE2jKvQVxFnqi64JoTX5dR4GTu54V
	 K3tG+fFOGBU+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E623C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174609119357.12269.7026890219412604018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f05b2aa2c85b5af2f6b5829024fe86e153439d8dd271ac270a86effc591ecbe
Date: Thu, 01 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746091193
