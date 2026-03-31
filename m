Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC7EF3845A2
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774939493; cv=none; b=r4VxEdNaMK66D8z3zi0zRKNPOIMtgV0IjL30iND2WtbBKIr3v9wglFJ9rwyokJTTk9/KdBLhAYT72jxUFsOqbtkiXh/3r9ZYcxWUtutdfnePKw2NYPRV2Ylh9I/VWkwnUQFHPSdOLo87hIgB9nyLPFaAHleoTLiX2KbOxowaQbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774939493; c=relaxed/simple;
	bh=pbXg3S0MnJlY7E72Bi6Yehegx8uUHR/btO7VMH8YswA=;
	h=To:Subject:From:Message-Id:Date; b=uP+Gh//lPAijKmO4ninH3gGKkb2nQX/Oku7ZM+k/Fk6LwxI/yu8usn4kNgPfU4BGy1flZbpPfHEuXVysqTBZ4rfOHhTRp3MPajY63arRHnYyiHiyY85BZwQAB79UY0SG3greHZgvWGOddbJhLlGMTM9FaUPsCyN9KT7gvWjtVgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWvQDxeX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWvQDxeX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA47C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774939493;
	bh=pbXg3S0MnJlY7E72Bi6Yehegx8uUHR/btO7VMH8YswA=;
	h=To:Subject:From:Date:From;
	b=VWvQDxeX5Ne/ZAjgHxA4KZWA+VRptR0+JQnwIv5VrY0m1pILypWFc/epVzae0b2GK
	 25UhseDFdXwYxKlLS0tuC3JA5MbqqUgfKwH8kR4eouSciMf/nFh1zLN8l5ZKlRjGSW
	 L35QsR0ybYjo8V1mm9hIkhxmkfNK0ASLae7HIeoGFYIcAKuAR/ctowL0glrDpQ7vx4
	 nSTbalqkwoREp+/xLzhleQKkfhlzgDyxVHYDPnLoquK0oZ7yM3IiQRBhOvy8HiaK9u
	 k16ZcO4k0HbA2Vvz2RkB6FFtFUYEPbeHWsmuS/sQM5+gPn9YmeGDijYAWTB9UsunPP
	 XjQRtDyj9SaXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D88EFF60CE
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177493949363.25328.2038985178203551032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac7901735f4e0b28de67772bf8a29bd0b072305c6cef435138b521b18d5eded0
Date: Tue, 31 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774939493
