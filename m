Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427D33A380A
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 07:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780038154; cv=none; b=SL2LAyA50NhBiacOfTYhVPg/G8lHf/SBkz51RxIJoUxxmcxhc9JMKbGEdnkiW7eZ3QbnzFVI4C07Jaa8NrVjXuu8BHhHZzIAcjMpXIj8MAc/GXcFkdswfaWeyilBLwoTOCaScIHhrtlpCI4PDTvJKnc+uEjbXD7vC4VYRRwNmPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780038154; c=relaxed/simple;
	bh=XF69skaU+EQurgAn9hEBtSbDtRG8BXQa6JxPMbLAhCI=;
	h=To:Subject:From:Message-Id:Date; b=ipXLai7ynMIxkiJSdH80qehqJv8+rULUYQuHvi0NA6hyl9mVioGKwDdv9KwCXUGsf4+8B+F01PuOC9pEfqwOu6vKHBBBhwdlUmI1De7dHQjQV3NdEKrGkG9B5NL+TUlMsSJ0v23ZPdRX8w0jCcOjmk9Q7xmcQt6JHBu5QJ7bb5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHl4weJu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHl4weJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB23DC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 07:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780038153;
	bh=XF69skaU+EQurgAn9hEBtSbDtRG8BXQa6JxPMbLAhCI=;
	h=To:Subject:From:Date:From;
	b=HHl4weJuthUbVHgV4n0IvAxx3CZWWFYb/Uc0e+5uxj+s6sYlHYRLq58S/Tx4wzkWo
	 Vu39vAHGP6tisPBy+2DMKpH3VQUAYGBhn6mbxZ5eNSyk5PQBFs/9BkLQNsmgIcvw5e
	 bgoS+FCBeb02T0ktjDS3rGDT0Ff24ffKkvPQdC6XNcxiIRmuKikWM+cC3nEqNPeE91
	 AcKabzRfbYh63bdMDD56hKwjVOA9pfkrZX+VRa38KyW6lH/n6jLdlYmixpjGejgJo1
	 mkOQalZzhd5Uu6BtiwX/PlrsFn9eQxOrjzuSUvPQLlD08CYRJGgmaLTOqT3k8jwKp/
	 UYuP9tGcUKqOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B7CCD6E45
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 07:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178003815371.3402.7438743035037885828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52f4f63973726f31fc849b1f0ead7d9415443efb97b4bb8f4f6a093b49a51fe6
Date: Fri, 29 May 2026 07:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780038153
