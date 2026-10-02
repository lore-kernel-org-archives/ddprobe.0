Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57919348C77
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790914234; cv=none; b=LjivOOcctCu2GOwARGG1FLTeSQ5xyjLKI9986zc2ytVXbryUdVx5wliIJE4rKXAVU9BOvNoIHsaLmBWFEaeo7ZQqZ57QHezybk2PV/iqJF8dbCSmQfA/7+YYrRI4cMl0INUcG07cNMrb44dZlRcdqUaVBp+rRnVNJZZhhlTJfdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790914234; c=relaxed/simple;
	bh=Nmvyp0Kj1XTEJeP9pNiS5o00HmDALCU544GBeqRYjCs=;
	h=To:Subject:From:Message-Id:Date; b=S3fwXxjK1XlCAQpCcb5XskDTFL1/zbMgqKHWZ3f8+QX4OkPPnUf2nDaHq6NYabKB0fV5OxBpgOIzffrFp6JxSGweWUTLv1MZwecWr9FWFFJh+KXhS6YV8Knn/AdgPubBdjt3Zg8dFeyg+sWc+/UPQWg+YWfRCQ0QtIbJmu6VgHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaWnSOix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaWnSOix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08AFC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790914233;
	bh=Nmvyp0Kj1XTEJeP9pNiS5o00HmDALCU544GBeqRYjCs=;
	h=To:Subject:From:Date:From;
	b=EaWnSOixqrk0ryzOpa6Qxq/IQ5QoNS940XjfbXF6ExrrwO1zt8G/n//bPai3b5UM5
	 w+4TcKTzhFI8K+G8IqT5T11Ln035pmfsPKfn+oFQtulU+/yzxLrcVl9mvMbTS0euc/
	 zOJAyuairXLNOII19NzgnBUB7O97ZnPgEsGLyB0jYbBkAdJLdvztVTYofayRLD1NNA
	 MlKEYqBthNrajxB7G1ZBkgY28Yh+Nyq7WfqUx1kcdwkI2PCFSrnngTPXE+g/Js2Lmg
	 SN1NfsG6GpIKrhoQkB3Ng8A/cJuSlMtMupK7DigNbZs1LOZo2orRSrrZAZIIXtTzfh
	 9yA0wTr6ecieg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98A7CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179091423368.16625.2340739499881736795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b68658095e4b9098bc6eab641be63a75199a5fc9a001a4a76e276ecf62f9a86
Date: Fri, 02 Oct 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790914233
