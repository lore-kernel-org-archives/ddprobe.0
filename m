Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316772DCBF0
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748229594; cv=none; b=umdd5y6Ob2WokSdOA/k+tROhuaNwdSYBbckb5TU1LEV3t0a/v46G4DBJcxTb8hfWL4OM3f+ZS7iShXb/LBUnRAZAVNGgXK8LybPtbkdHCC1Pn3odt6zt719VhUz++80X5DpVe6f6uY4mEUSLutGVwSjm4b1G9HYAjAD/d14ngR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748229594; c=relaxed/simple;
	bh=Cdfl6A5YMnQh74690FaCOUERHp4sVT1+J4GiybodShQ=;
	h=To:Subject:From:Message-Id:Date; b=THIjhtKhoZRs9grs1zSYryazAyGAS/C7mxIZDlWrCsCS57VVdWVkbl3kv8MHbe6zt3ZMoAzHdsze1r/WNltfYHDNA/xBLH7/qnIjS6YIVPMIYsXhVYMLdfDl9MNs1va+UGcUlfmyVOdUyWqq6hekbI35UgvkAAV1lAufV99SGEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuGHw/2p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuGHw/2p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40DBC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748229593;
	bh=Cdfl6A5YMnQh74690FaCOUERHp4sVT1+J4GiybodShQ=;
	h=To:Subject:From:Date:From;
	b=NuGHw/2p6HOjIFzhxzUdJP6oOOTflXELsFSyMkQlXVqOVVa5fcXd9LQIdeZiYPxps
	 HVnIPYXgcGedd7u+weNJn+/PXxg5593sRIP0A3Z8KHVi+Y7LOLN+GY77rqQwNKIU/+
	 D8rxo+NYtktPdi2PUHiq0E41ohQEA/dKEijjumpV/vloTBm87ecc3DKA7uHZiWKN74
	 yJP6PSOdNTEthtYSLadI7eeVQd9jpLIa0vM2cVns/OVPrZnreBrzcYZ+Ivu/G36NOo
	 5VtDOB7eoEYexsK52Y7jh8MjMJzdVrLIdGPNPAAW5g3M0Xl25sIsTaVyp0OZDaMbkc
	 GKp7yGuNMvhDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94440C54F30
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174822959357.12192.4996216047896473691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb11d2f9de72eaeff2f0988773a3b41082ae51bd3582e20b1ec35dcfec1e9ad6
Date: Mon, 26 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748229593
