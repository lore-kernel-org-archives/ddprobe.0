Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216504C6E
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758434394; cv=none; b=iT231BuJitRgCeBeG5oHJrVKKFCN8+OQA3fJ0ZjYv/m+eQT1842qspvctAjHmpouDnnUPtv3zHKyvQCs3zwziFxORxOYlCF7YMZiMz3CbJq77Kwc6bw0S3DhMwQUlxgiTz3jYKwHFV0GpSxgiYvwT9rPFJ7sw6BPugGoa7k193A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758434394; c=relaxed/simple;
	bh=yn3xIa7QF/TSbG7hdP9CMxUJtSuu6+6QsdT962F2088=;
	h=To:Subject:From:Message-Id:Date; b=f4iegpA61W5rErrSjWFxORlsQsiTqeb2oS29EkLqWQqeWOUxhjP5f6zH6kQhmH2AdB35ieKfzQ2eanGSB6JR2rwEsQbqeEViP/taF7SBto3jMEdXKgk15Lc8pmInHDjbWdpmvxkkUS3p3VNkgNwpfUyYgnuwF+Jrgq2bwzNm2v4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xl2Ejg5g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xl2Ejg5g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B4CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758434393;
	bh=yn3xIa7QF/TSbG7hdP9CMxUJtSuu6+6QsdT962F2088=;
	h=To:Subject:From:Date:From;
	b=Xl2Ejg5gRkL51CrDfgBR1EvaQwZOliCn93xWvorxJtMmVwqsR1YDakfNboh9NYey4
	 qPOzxQKS71o4til2os6WD9DEryLqwQo1770jEF0shQygjdThXT+EmluDLVtgRTqtIh
	 k5VEQZIjryBizn4ZUUU5d1tZBDXOpy1/617X/0RNwjB5fQS+CmeDtYAQG5XmAf+HZu
	 Op0mKK3vKeIr3pMqkOD3HmGUSe8U9d9ltfw5fGF9YkaZnonU9YR8H2b0ArM7uX1L0S
	 1p+PXwiJzs4wlUdf9D0TPKy13ZtrLpg/suXMKQVYkv21NCewUwOlB3FK0rGR3EHaCe
	 Fqkr0IQt5ATcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917C4CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175843439357.1889.6469900784930919604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 035b8967a4566468d8c70523d70917dced33a666c95d496ad82608f359783949
Date: Sun, 21 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758434393
