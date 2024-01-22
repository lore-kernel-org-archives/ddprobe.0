Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9C4B3F8D2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705952296; cv=none; b=PxC/L8tL/+IbiVKeCKMQPWIRS1B7F6PWKDdrY3M9WDzpJADW8z3hvu6p0n2Yp32o6uuTbpjV1vUKG9oLGPbw3E0PNUwj7MCK9YtNWhW8KhCcPgx7mrJN3unFwQWq6ZGFOYbLjFmPlUDfyIgN7Ki5ySw23w1O+xtJEL9kPSrbQS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705952296; c=relaxed/simple;
	bh=rLy+8m9qqrLIJGhGEbbSpSFBASRR5Pxf2m/ksIpA1/I=;
	h=To:Subject:From:Message-Id:Date; b=T/qPXIkPfDgYvM3IxgyLddzXmojesZ1FSUChXVs8Qzs1xmtEJFvEhlnUnywBYgUcImhb+NEDLInuF1hD6iW+7EkFdBOXRGf+DyeX/QADeCfl5Mf522NzoTPyeysMe2K7zK6e5dJiPK8SP/FcYK88fiXHRpYioCnTMQ/o11sngq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIVVbsH/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIVVbsH/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FDD5C433C7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705952296;
	bh=rLy+8m9qqrLIJGhGEbbSpSFBASRR5Pxf2m/ksIpA1/I=;
	h=To:Subject:From:Date:From;
	b=YIVVbsH/FiXtlRv+d4NoJfcTQvil0VX1DoiQxkYW54OKI7jXPZ+L8n313RAWZ7yBb
	 up91XB3KtceSAeddReXHM6RO2uXDypVtHHllAu38IgsyGco5J+vwjbhh4uDn/D1L8n
	 rd297mdowDcxdzNZ/guBt8yKacEAivalmCIdbkUEN38ChvTtumQ5GPTGM6LqqM6Dtq
	 epMsl81F1h3pMtVpMW4xkiRkJmesdgmYjwBLIveRrdITlcHICSUAM3SEenl90FJQ2X
	 sLjaGLGkxAuB3r3T6jMx25DKLTcKI9V8DWruw0zQ0EVrkFNyQ0AQ/Bs3yUrIj7M33z
	 jyAg0LAFHempA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B078C47DAF
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170595229636.20407.17073628530114914511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a484392b2fc4bf048503b2720a6cf6973064b4ab4af1a5e53df57bf937922d4b
Date: Mon, 22 Jan 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705952296
