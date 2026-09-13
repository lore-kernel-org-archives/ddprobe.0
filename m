Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5937E2BEC3F
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789269634; cv=none; b=DlLcThhnbSo8SCSuqw67oDxaep53m2l4Jw0fOvSt+t4/lQOpa5oJFpZTwsUBS030JjFEgXKDT13TCzUtxIsbcvfyD5XLvcSKqaLTC0u4u20XgawRzlmtk1lBSSJ88tislHuQ1YrTSAwoQPdpBFAVCGnv2jkPAMuleiK+bHKLgow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789269634; c=relaxed/simple;
	bh=kh67sVe3jM2gxkoNafhaC/GcDezosjjgDPJyqAMF2qg=;
	h=To:Subject:From:Message-Id:Date; b=qpptFWa/oWHJY3j7166l+rRDoIFcn89D3CfF5iaHOokik0XsgFeyQIMAveGXnu37WULLICBBnxNYABinCkmQO6/ZWD5mryzHaN/HwsTreaoWp7nrPBRvmMI9IpRpSv37cbHYfCsLHugrQiJbm9N+BXn3ubmjOykcqMRBPehIY10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENtUFW8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENtUFW8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6962C2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789269633;
	bh=kh67sVe3jM2gxkoNafhaC/GcDezosjjgDPJyqAMF2qg=;
	h=To:Subject:From:Date:From;
	b=ENtUFW8qlWOIcqjJEz4ws0lur+JRXMRMuPfU6muh3ezcKXiPz+7t5er1dPGkuGukf
	 S09FhZuqVZWB1QXJekCBOHt30e1Nz3eS5H9WlIxBIFQm7AprzgUCREehRFQRtqGsQc
	 UbWbN1ORMSlZZRN6No81DpLqW3VjHahDVg3WeqUSTFt7w7yRdW4DnAKt9aGE/yaRL+
	 BylgDSmHe4Cdoe4ZKRawPhk7SLLwokEUC0gmdfx+xN5IB31ejTPMoGZsWJkNAgbuKY
	 eWU7WLkkRRPMI1SfN6pgHqI4m/6s/mOqp9xlnkaL34m2kSO/3Xxq55UWl7Edd+E3IE
	 7CbbOdoPaKOuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D4EC88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178926963369.510.659671310933430701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 470a096f541afda9f8a9bcb1798c71859f09245e59bb85b702475361871d504a
Date: Sun, 13 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789269633
