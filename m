Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE801C5486
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761397794; cv=none; b=LCCQqPJ2KDZB8B+ilbb15pdQL1X8pCaLrydkUVv8Yz/DUqoimjrnfs8NwDAuTZzY0oQ6w74jFNu+beWLZmyA/V0wrZ8hMyl4GXkrPOi+nx82kZQcYmExVgNV3da+nw6WfE5bCEym9t49gaH5ft1jPnObZUoEbOu1tZSLJ1gEPuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761397794; c=relaxed/simple;
	bh=gQ+9LUBRmGvsRmIuDsYweER7nIWFIAL2QSM2KGYKW0k=;
	h=To:Subject:From:Message-Id:Date; b=WvKpn5FRkpZWcqtJZ9xU/jOV9OjvomkDoYE1mecaJGxpHOg8fEAkeySy0+PSmv8rzvW5fsZjPIeEpX+Y1vMmfcHNwa4vxzi6uA2ovPpmI3QJDdcpOe0Lv3VSfrFeO3zLQtbVHCHQK7fvLGILDLxujTsj2tAZyvxh/+HpM0J4Qf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZRaooNm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZRaooNm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A8CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761397793;
	bh=gQ+9LUBRmGvsRmIuDsYweER7nIWFIAL2QSM2KGYKW0k=;
	h=To:Subject:From:Date:From;
	b=dZRaooNmOPfCreoZDOLhFFqIygOPeNhY08xQNGcFUpopxrdlN/oWtiWkEJiI41Cun
	 dNtk8OJQFuDRyYJF75dmOqsrZ50eiA6n8L85NbCxeQHeTCI8tPMY+pvqwXyHg4YPle
	 RByYfCFMx9hKZWb0sepWtJbohUVl5wtqkB1ebCFANetev3ddxWv5QeqlLNryoSrt5a
	 jLymaLSjdAP4DHIN7/nZzk7r1/Ua5W6B4gM7uhBNRe6TRJn540RiW1s6mWlR8/QXLn
	 3nZYE6Z+XitbfzJM3RrFQKkXKEFo7MJ2+pPSlm256zAZZiQDhLWgOASpJJiYcM6Aih
	 6D6LCvvlbbk2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952E2CCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176139779357.29915.9552257344646045095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfef70e88ef8e863fc0ece6e79b9ea7a590fe751db8798c8aedd5fa4290da93e
Date: Sat, 25 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761397793
