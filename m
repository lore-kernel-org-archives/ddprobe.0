Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180EA391505
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772485494; cv=none; b=hhrJusg+K1wd6k/nufxQNldojNiZSgSqfkuyKIEGNENNkOTtLSUMrwvZmto3w5VVaEBp2jvik2E2lbZudqq9l9jfboIgqgzwHTPGpmJkpOBcmctA0qpeLEMtgQ3T9huR6vO/TfRMHN2MTfn5VecLcxLLI/wj9LSTKvHZwQwg/fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772485494; c=relaxed/simple;
	bh=QT2+itYfti50lR0HfCaynqCAfues/1D7RizLSQguaJs=;
	h=To:Subject:From:Message-Id:Date; b=oe4+gIpomwqXA60legNb9vCP0KFvWbaUo2allKkGB63xi421+GHnU9vJoGwyxKv4jnEtKFr8nCHCcb3m2Qo8QmjZu392NxFh4iT0RX14emWvht5rqLbTAGZfsH2BbF/yVOgDbmDXKPY2vr4yzM4azrzum6ijrpig98eoxIFa0qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bm4SvMlb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bm4SvMlb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2166C2BC87
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772485493;
	bh=QT2+itYfti50lR0HfCaynqCAfues/1D7RizLSQguaJs=;
	h=To:Subject:From:Date:From;
	b=bm4SvMlb4Xt0g1hk83BjP3AjHeHQdmFYNknwSpPlKsyyYv1ngSjlJNsQyr42haaJu
	 /4sYtITB2kHLTMpZCs7AXg2AhhKIv96DDxSfIAEW4R1/lyBm0QINE7GLFhdZBU0cht
	 cUlhQeXkUn02vv2O9yB0/sFo1bitevGqewyU43SPgaF5lnXoa5PySiIHN0yKbNRCOB
	 VKWSus0eE+dHsKRl6SyuiT8MJHAV32uAoMkHZcGbVyAPQb1tyEtUZiDTyWbC2o5hK/
	 c8dRNu4K4c2vEr8XfUDGdQify2c2K2lRHHzIOsgQ/Jt9Qxm7KJ72bm73NNCf4cLG+t
	 9IhZiorkwtp+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B549EB3632
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177248549362.12733.11743222539915502919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3af8344dca979b27c85fcbf56d92cb09316bfe3f475beb3c3a68e2b28371e103
Date: Mon, 02 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772485493
