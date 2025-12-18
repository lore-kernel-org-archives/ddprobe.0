Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C56323A994
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766078634; cv=none; b=pX4q47SqaiaQpW+sVmS/4lOeCbD5bfO5vCx6NciCy3oPTWn7J927gFnxN/Ak5bvcjwinXdbIU2BxyviNLCzUpY2DFHhOPPJJiM/l3898mXDnarixy5PBtOcP7ayGs9P9te0K6RmOpZ9d2WQcBbXhATk9iU7OXA61cC67ARqqonc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766078634; c=relaxed/simple;
	bh=f1XJOi0lojtCpBuEEyne9iYKyhVmsaep7UOUSPZJUJ4=;
	h=To:Subject:From:Message-Id:Date; b=A2Zao2LvHlqSdKOt5Z3mZDSTniDqie1vcdzYjVCoUBZyl9pV5biJhsRRkRmuqQHU+J9dcQh9a7vOpeRT1RoK/4CSDk8dGGulVlLh0wbFsfImokFRaTGntzg13vXXH5AaYyPSSmZDTxllL2FfjtXkq3h+uGEDJuLV/vh9SLrHVvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJ7++6sC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJ7++6sC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4113C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766078633;
	bh=f1XJOi0lojtCpBuEEyne9iYKyhVmsaep7UOUSPZJUJ4=;
	h=To:Subject:From:Date:From;
	b=XJ7++6sC7DVUnjzRv/8WCE+G0KK8T094QVpDfV96MqzWsrdS2QSTUFre3h6CNRwYJ
	 NrXTFWDrYzKLFGfpsgMoKzMMI44MKLB3Lv7JJyNoSiaSBi3tt1alHoxBD0iBRZmohT
	 6o1IwM3QzdbgiAfjHEl0LVUYDpQ2N0aQT1MwDRSWKz9UqQoTbQqbiJ6SI8hOtI6SAR
	 qnxl/0CEdrLI8N8FgNRWPXrO8KKWVMt4EBhuP+eXgzFlOfsLswNDZp9JeGyBXqCECh
	 /95LSx3vqKiM0Jhruk/XNYLZyLx8R6v8HMb8WOq+WvuZRU9BWe3HYJBaz01wVaKsXq
	 KLg7qNbBePYyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9649FD6E2B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176607863358.4186.13955297993487950747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c410b3c5c090aeaabad6deafb77c7204121383253aa6a9cd41799ad7537383cc
Date: Thu, 18 Dec 2025 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766078633
