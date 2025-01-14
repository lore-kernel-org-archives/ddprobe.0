Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284B622DC25
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736852154; cv=none; b=CIw0amlhLwlkJmSYPij/blOkyAgtrkap3P/WFvS9Pl6pmPrzafpW2J4ZZy6hg1hFYosDVg1nF7VtI1lJcmhXoVAFH/R4FVVofoUHjgAh/yXwoNHJqEeYHPtQyFTPqSWL8KOO7pHMWnCWJo5iNm7ZVEo3n/+8CtMpfj46hfFCMhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736852154; c=relaxed/simple;
	bh=rsNsKDS2XvbZitzoJ9D0tsONXkUJBcGMO7bDn4Al0tQ=;
	h=To:Subject:From:Message-Id:Date; b=oxoVrj9AWSW5AVJ9uL6w9kYFcy8gvOsyawY/dZgXkm2eciqFBfswXcmhu0+msQyk1zR8iAjdQZJWr2lTVHPIVuTSdZE/kriUzH+LxEM8sIZGx3FpHX8pz+PoozEP+Ymn6xX6S0izhbSzxWD6W3prhitdWY7leDz9LG5AEwFt2WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qW8uxvFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qW8uxvFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9381C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736852153;
	bh=rsNsKDS2XvbZitzoJ9D0tsONXkUJBcGMO7bDn4Al0tQ=;
	h=To:Subject:From:Date:From;
	b=qW8uxvFAJZzc5q1uXa39iuUvlXCzvbteyryIrQTxDpVJHLfkPJkVq8PJcxDb89PxA
	 K6JjjDzJKheKRnxeWHG1Pw+2+QJUHW5rd8OyHHUDdM49S2teCF6DPau/+oFAOLVJo/
	 rEkRzDTiNvy6IlrVAdXB+yCaR363hb6kDU6353ipjtKUsCrZCkX1YhRl/qnn+I4TCQ
	 PhuZRcehPJP+qpzS6bHwC1p/U+2qMb8bZJgcip8WAoGj5yzI2jTFlqj6pEMNpJsVIL
	 t0pt2L5n/XzW53QJ0B7w1cOlDv9yGqDCC27QIfOkZpm6ycq08++HohYvJgXdd62cxq
	 DGyIB11zlHtoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A32E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173685215359.4755.9257606925887851914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a5feb5fe500010d505b7f52ba758b33c3a9ee263ccf745174950512de020dec
Date: Tue, 14 Jan 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736852153
