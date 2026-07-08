Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5D62E3FE
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 02:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783478914; cv=none; b=axOjcjuNhQWhR8azxP0oabCIhHE1QIJUFY7xzTBqoWTYY1NrkQrcDlOomzQmHwMGxh6MoQh0sDNabJMSRxTt7zoTBvZEuSLL+XVsno2e3q4fI5i3gKxetVA29RzT0XH12oM/2zNp3z9ZyOmBUYfYALgWSfGEU43xh70w3xDBFUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783478914; c=relaxed/simple;
	bh=/U97S2dFR+6+SJtCIkp53jkGaes06iHqG4EXLg4yc3U=;
	h=To:Subject:From:Message-Id:Date; b=BkjT/cpAzbX4KdSv08CyvMHAlpBbrZB58+H6GJbh638O17aQaAwy3XnV2IPE/XKkSw/tsZ4NdCmnrVsdP9uaapggdX6JLFk+xK65IrngOF6XCJt39e+oF6fL0Aeasu5Ss2hZSaGs0T74IVzarw7NIMTjp3ybRSYlpIol79dg260=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWgtR6kP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWgtR6kP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1168C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783478913;
	bh=/U97S2dFR+6+SJtCIkp53jkGaes06iHqG4EXLg4yc3U=;
	h=To:Subject:From:Date:From;
	b=QWgtR6kPB8JgcBK0aD5w9uMfP7Fo9mcaD4owRW/q6o5f5YaDS/n8eX9WlxlxPObEP
	 ysoyGLcqi8Jevqvx7Cyb8bHrGKfg9QyvCeNlPj9fhO0aK0rBV9ngsIE8mOyTfAcHMy
	 MPd6czZbiEocgQ5jbaIX3ifQpaeBcRxSSefyGYoHjtBO5gih7qIclwZ5RuGfwHqBFL
	 5JHPFyi5Ig9JAkl6TWnfkYFQDi44MpQWVYsWyrwd+zQxgApxBj56CIZgmzAXzOGQ6p
	 SCrW+DgzEGcBgxUvsZHGZT+Yvw8V3RUgwZf5hcXqSITJGA3K7RsOnJ9L2WRBrttRFz
	 3LTD/Q7jYtN+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECB7C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178347891368.32745.6364638749801085378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b23dc5c8ca65b437646db2a5ef497bc0eec1c4b78b4aa9e1e96938c84fad0230
Date: Wed, 08 Jul 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783478913
