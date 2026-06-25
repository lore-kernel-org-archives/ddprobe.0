Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3FA3E7151
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 14:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782399454; cv=none; b=uEidsOm6VVlNMOK0OiZUbc5SMenEVofSg91WUveRydLnNhU3ZzfoxfwFASfExMcr3oxd/EsL0V/IMNjzq5ccSwUwkBuVAl/DWkf+JV+pAlL5qJzwoHDOQpUvFVDOtZHIbRqh+CW9NJW3Vi6FiBM3A2aE3huBVUhZwQxnnlL2rWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782399454; c=relaxed/simple;
	bh=cNPbOpRkT0aJSV0wyz9PFpsk2e7OrDBfq48DXHIQ9/s=;
	h=To:Subject:From:Message-Id:Date; b=QkHjSB/gBg2j/vilhIQZ5h/kGSpasijtRDN3mJRZgGngnUlLjN+JL90xOJuyCFbOQHwS9HpP85pxK1wXz7ulcB4cza2kIdftIwti66VnsKM7zfZYW+YCHXjSZ/mmHtYTKBwKck16qYvlZDk0hKUNj0DPTm8aLWBrKWGX7gRZItA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjvgruY3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjvgruY3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DDAC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782399453;
	bh=cNPbOpRkT0aJSV0wyz9PFpsk2e7OrDBfq48DXHIQ9/s=;
	h=To:Subject:From:Date:From;
	b=YjvgruY3oriFTYh8IBDEskZaZunAM/mXVxcqGtqZPX7UCiLlZn2lZbjWP3nwzsSbG
	 27QODUsPX9Y1Ese5Y2Ekmc40oeo9V8B7MfOnSafDj3k5cQxcgEUhudRt6ctlgDF5b5
	 6XcFN5gjo3ftPra6sfj6C7BWGSxNbkexDTW0UExXj7m8IyCbqfVsIWW5rHzFI1EmT9
	 tvTLcHOtrXOL+d9IHVsM+ENqtc+bN3qSKeihHsWQ3HzfudC4v9KjqDQpGM/QRyGjej
	 WRMpvCziYSXaICDRzl0V7v780wppRmvOWXMJlHPyXm+zNJhiTj5FzWoUmEzwFy+xaz
	 4eLSlyD35tztQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F47CDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178239945371.22066.17778401869284366375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c3dfbd89751b102daa1c20665564aad615dc7f0c222a2533a5f2c3435dfda70
Date: Thu, 25 Jun 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782399453
