Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F0A13C8E8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 00:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764289974; cv=none; b=tjlqPxJ9xESdKKfcyylptblgchTgrT66l/FM1o5bJGVOjMIfLJt7VKgyNEKIQnWcNI9AjzxG/wfltC3+uIPRBYj+ZSml+PP/FBCYaHdVDTCpYtW47vvWFJP05fVowp3sSbqlU2Ekl3Ksk0yWFB5ZrHSTnea230QmGtUNT5YZl+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764289974; c=relaxed/simple;
	bh=3JkTjyULu0gtnZydAGtwjdjey6nKa2rHkLk5G2hS8YI=;
	h=To:Subject:From:Message-Id:Date; b=oUn44q3StivrWD7YcwtIjAMiDGy21YXiycQX/R2nXInKZ/hjBtF2eWJFmWmujjhjCRTuQA5rQSWyofY54QhKAzd4Ah48d+ppUJqrj9mJ248EpIoc0UTvCrSiFbOy1+MIhPYWMaCbTj2OKP2GRQagMJEoKL5R5b/n2u9mj0Wlhnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qA0dD8a+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qA0dD8a+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3D9C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 00:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764289973;
	bh=3JkTjyULu0gtnZydAGtwjdjey6nKa2rHkLk5G2hS8YI=;
	h=To:Subject:From:Date:From;
	b=qA0dD8a+LeJ16wEH8NuLy59ajkqK/xM0zwL3wW8ZZLqehnU3pOxcW5J1pwnaT5gqy
	 Y/JPM3kXH8bY8DUuN2DNnY5d/tVIUtQqdUVKmry067+2AQkMdgmw7A6QRrfcQnqX9q
	 vn47Ps/5rXcanpomB0+mlEP1ooXWHDR7X/TjXk557RTXSdDsSdLodXzHaJn18LnmTd
	 dTEp+RDMThlZKdCLvlWVsGoUrhoq9k8r7X/ftqKs90kQExudgRlZyRuSRhDCbL7qDT
	 FleqoBHm+P2RIOzyEXtEDyh/D1kqf5NKkBLDSh9PvBS/DpV2RwvmoCwuPcT5444cr/
	 8O6aK2s3qMHfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99210CFD2F6
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 00:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176428997359.15722.5226382904809317030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ac811846704220c2e4beaec272f59a4cc5c54295d2ea71b096d1875d5ee57d8
Date: Fri, 28 Nov 2025 00:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764289973
