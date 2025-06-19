Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384DF20E33F
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750320594; cv=none; b=MKiMosHFaax0wRynoHpBUzziV1Bxz7D4aTw5JUeI0rT26hci8W51Pn+8TsFU8GLSQyx+v0YL27nHLxYVi/zkT3MtD6LZITTRnnwiMy91vtbwqUBXgk7uXlOHC3gKLezlYVRg6r0ZyCPODNzUSqXlrBP0WaRod6qKRwXT1g3VuYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750320594; c=relaxed/simple;
	bh=GjE7/UDsQWfdaBaTtMgUDOxSNDub+fSs9ezc6T4lRq0=;
	h=To:Subject:From:Message-Id:Date; b=lh6mCPBNkxEWoVgH5QNQj6RDGQqs4vYlIxV4CQEelm9mrXvv7Sd378wrbMEIJ2Gc9O6/IisDQo8DenKeYPGU0EkgWp/5iKAaSQA1Y+pwAxFT/+Rm//CujpuSM60Ty+aajJkZDUAvQTit0tcjaKVjasyFYC9p3hbtsOMlScha9QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jk0nKXtj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jk0nKXtj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D59C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750320593;
	bh=GjE7/UDsQWfdaBaTtMgUDOxSNDub+fSs9ezc6T4lRq0=;
	h=To:Subject:From:Date:From;
	b=jk0nKXtjiJVERyz+IbcAwQLCnq6CEY4FSu4ILWOCvj8mvgqq0DfE+6Fv01DLNlxG2
	 bVUoc16Lyas6wtSfCDtjKjGbmBsrUxrU5i1E7RsQ1I3Sm2ovntZZw+lTEI5xlgGE0u
	 FRpFWClHy3X8a9URMAHp/vWa3VhIVfTi49pWaUsSdM+PwZ89Ma8JSjiNK3USYUPn16
	 d4voUqffDbDTum4RHSsqbjfUu+iN3wGORe/DV/vUr2EqcZQBJnY5W/6EIMs7VxYHA8
	 +D7dW1pIJaBK0K5Lc1dd+bJDZ3rL0nekrVORD9SQduw7Tr52k4XNLEnT2hSkI/GUbG
	 2OAUTYYMSf02w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6F3C7115E
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175032059358.15258.15693556657773762993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 008065fbf1351647ee2f3c9d4e1bb57da6619c5219850895daea9fe1630e3d60
Date: Thu, 19 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750320593
