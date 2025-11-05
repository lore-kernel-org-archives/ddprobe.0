Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B151D5151
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762387194; cv=none; b=kCGptERR6wWO7jeQnmwSKVt10FK7Ue3JpwucbKmNxL0fp+WhKhb2Cb9s6GS0yjrBK+82kj0GR478oCckYj1x38igGYXyVp0Pj+LKCnlz1zWsRyfyTCjc6i1DT3EETTxjPk+N8DTSW7X7NzFLL6i7JpmilZ1082w+B/fXk2g7on8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762387194; c=relaxed/simple;
	bh=6uQkIEbBMQITxbHTG9MsEs1/+9Hk4RyiFmfQZQ5k6jc=;
	h=To:Subject:From:Message-Id:Date; b=XxunwvlWQUSv62znK0HEgu0gCaZJQO/NgkGjkYIMqUuT+P2htOj+/dJmlvJcvZrdmt27rQK/epHkvRv3cThan7ejLscVToB6r/3cpUdaU4HMaX40d2izgbpjiOGegYu36TtN4/xLz37uqB2YCIuIBU/LTgFxwk7FOMBaWEVSdAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgJrx5n0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgJrx5n0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCE0C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762387193;
	bh=6uQkIEbBMQITxbHTG9MsEs1/+9Hk4RyiFmfQZQ5k6jc=;
	h=To:Subject:From:Date:From;
	b=rgJrx5n0+WEUzbMfaRYzk3IpdVmFuwvzhWwQ2Am6SemThuB9t43InuTQXweUUHeAV
	 S+HNOoIpFqU+sKvIwmoYUhWCSn52Y9buqoi14G3bijBue+QUembx+wLZH8Emg7JsXh
	 Bld+MeDojFxEBPHSwrruVJj6+PswNxrZru60kYNk85Jh9lWNtjuUE6PE0Zgs141w0L
	 0emLzk3GH5IfPqfCA/uf5VQ2LSJFqStmMC9vGW/CxUo+CX2Ci60mUVulQG0fNuOcl4
	 DLy2YhwhXT3Zyyn/sUu0J3laA3avAaurndZp3krLHh43xGYiRILBq1rGTY6zXlkKZz
	 4ga7TfMrG/yQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ABDCCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176238719358.23869.5232503835423694851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f5e8deeb30e38b677a70463a884f335a7dbc6db2f8f389a900e80940129562d
Date: Wed, 05 Nov 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762387193
