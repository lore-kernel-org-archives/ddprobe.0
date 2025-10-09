Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213751DF26E
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760024394; cv=none; b=JcKOGF4jfT/T7VlpL+MP0PjykYbHLLhzQQTeIma+wWo95mypg2tm+6zwBhJrqLI6j8gCzzOInSAwxYbjQy+LUlkWcFhjwCHxOrlZTnECAcXns+VvfyP+FB6ykbS7yvzaXLQxwIQJToFG9n0OyoJs1arvjsvrCx3Xztkqp0KhbNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760024394; c=relaxed/simple;
	bh=ATu/V+DxpH/L9LgDiMA9VINm2C6aaayan49Ap6jWBa8=;
	h=To:Subject:From:Message-Id:Date; b=cxQylgkOEt4DNTyvqfINVP+oOK8u6JLF0a8L2saLGrWeTMKTqeuNLlOiEiOdOFs1/5q9r2/QWruaA2Gc7uoj9I92akWfaor9yfw5L03NkBkpejgl/iNvRGDaLJvNIDYHutHmbu9gjOjNT32nLXUyHrp1wtYY6IrvF65veTiS6MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kpa8KVfl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kpa8KVfl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A3BC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760024393;
	bh=ATu/V+DxpH/L9LgDiMA9VINm2C6aaayan49Ap6jWBa8=;
	h=To:Subject:From:Date:From;
	b=Kpa8KVflWSqoLaAzUWGh74F4IZ4imTrl4E6KRTSgYdZxvQMsukQEQRowZRvXcnEkX
	 o5UOIEiBLw9z7yA/ymONxsINM7Lsr46piQcVoNzZWySQxQP+KKDFoWl9ak3crIuRMr
	 BLulj9pM8sYd7tINCafW+1zV0vu5bpfVNAcoO7rhk8NDMvDH6OJndJbwBvP7m8wPxZ
	 oIqI6PZd0FF7OiqIMIR5v5mtzBqznIYfu0pXYNP5tqI7jTaGhNyI9pTesFTNUy2vni
	 QzO6PBo6T6GT/PAFkM8tfgpoZFSQ2W8+peMjTcmaMVpeFD1FH/g+5J13+1G+vNNl9i
	 bE7jJ05yjXrow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9459ECCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176002439358.30205.13875235390254196791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e26e3b3b4486bb70d0dec003c8d2cc552fda5f41683a71dd50e4e25f84a3b6cc
Date: Thu, 09 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760024393
