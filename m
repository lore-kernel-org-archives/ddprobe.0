Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF74237180
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 01:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782005194; cv=none; b=OBObV+fJYlGf2Dy9koBYZp/nCeYIrbU3Q6jzgRNZGvQ4dFsBu1FqHN0eaeYcUcc3FYgubQc7EIkzh+/cd3jv+7i/CPjrTmlxX5zv/NrfTz3MLSqkA/5sLKeZH9C8xdfWx7uNNrWaACHfPE+rjS5D7ugDHAOJBkjxJ7dRe5lpUJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782005194; c=relaxed/simple;
	bh=KlcY7e/uzgeLn3RAiOdBI86cqqvU7usRJSxgUEPG1pM=;
	h=To:Subject:From:Message-Id:Date; b=DWsC3MYsr+CkHGcQj6uBXtbPd33GsK2FqvEFdd2dOrySMskpAT2a0gWTvhkbx8qoNGuf/Tt5ZDiQqPUdM1gIarUPdiv5KlioV+R9M+5VUszjD0L57XiJjwk/IKvtgYjSUaVKqwgbdR0Ce5fwkaN1z8OPR611HgKnBp3Qe5x3Hsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p39TxOOu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p39TxOOu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0849C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 01:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782005193;
	bh=KlcY7e/uzgeLn3RAiOdBI86cqqvU7usRJSxgUEPG1pM=;
	h=To:Subject:From:Date:From;
	b=p39TxOOuNPCHRj83SSsZcgHPyMYNeJfUXlv8N7seNIQC2JWSDk1mMMdV9TNteFA1E
	 RuoLGDlaUm+gbx4amLYKhinFokS8DkrJmeIEg+RmmJjUuIAU7X1CQP+XvQaPaV4sYx
	 aETELedckl4xLvsWnI/ORghlHsFyc/kK/Vr2PFQETJn9L1Vy0kkUVI2yBa3uXXr4QM
	 rt7Lt8D8Fg5Xcewp+BJ5cz+gcJO3j9f5SN+GzdJFteMza0aH+YbWd/uKpu3IbeTZzP
	 IewLq+8Sd6xdFdHZWW1NvY1XNMI3UATZ1/CMeY3WNzUvWs6oHu5VyBFpNTreNDGY1h
	 fWERzSyVS7wPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDBA6CDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 01:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178200519370.8945.13392303781850063031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d068294f8e8497eb9ba09439da343c31cfff0fb7b2bd3bda2d6e456c8da1a972
Date: Sun, 21 Jun 2026 01:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782005193
