Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E73142047A
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788353434; cv=none; b=je5CDiWI+i8JVUtjsC2YVGWKVbbyUFkgcS/UAV3+BqFTIxE+mpk75Z8O+VgS2ZYyzpUukw0Ha6socrL66+fqrVnfjsaGLJ8F5qJ7paJHulfDRSBSQ+jlzFnrQeOtD1YnDg6LqLyGT/WqsA4+cf0Kd55eQmEqR775fE/WzqeAQuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788353434; c=relaxed/simple;
	bh=ZMdscGSernFPQUe5VBBpU1uBtQLuaVs2bl4tcWRrfC0=;
	h=To:Subject:From:Message-Id:Date; b=tokVDCynMw0cxtJa+/C73ijYrvnuJLf1krt/SRJt7pspQRM0MlERTEwqIdH1QbgNghwjgh1vCHEoTEtmFLtNesWG44uQfmW9wzsNPo2emuilkQFDWNKdFY76FfIzC8En1IbHBbacvetW5QQy95KlSlYtu6cQPUGalnMX3TFY+cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPeGyamJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPeGyamJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC46C2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788353433;
	bh=ZMdscGSernFPQUe5VBBpU1uBtQLuaVs2bl4tcWRrfC0=;
	h=To:Subject:From:Date:From;
	b=kPeGyamJqa0iEgaFsmjjEiLPbyzWTeFC/WlTiPLI+zocMeqtRfSf5aVg1oNL1e+w+
	 zuEs9ZTSNWTfG9O3Zfq1oKko5/cHpB6EDmEWgfsEI7JiN8jk9R+lRKdFMnWi0mahmR
	 BIX9LwnyNRzOoMVOVX0AX1swKysi5d5v+XFoLSKlgeBqJ3FWU7/yJxKIMuZwiZo/gQ
	 bHt9qnplx1hMS05xDpgqVDjEveZ0D/e+bFam8+x52Im3a8LPU9eU25zWUz0r36uAkE
	 a9pxTKh4NO9feqtOZfjahz4V1DVOTSl+RatBwtpNwiXJAnEEztAHCORSl6AQ4TpkZC
	 WqDEcJtcKhfPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB7BC624D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178835343369.23563.7561473869024123610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da39cc6ac210e9a2a1083d36d83178da455b2a8535d10a2c51dba4e894dd4fb0
Date: Wed, 02 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788353433
