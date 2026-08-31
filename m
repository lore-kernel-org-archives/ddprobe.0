Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5F1397937
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788210634; cv=none; b=eF79Xl/1cfUy21PxXgpK4oxG1C5Xm3AZoIRBBiMDDj1S0lnaQFbA/c1tDwqPc0FpUZ6u9vYMyWT4bZ3X171p0SDQAmswUFl80Vaj6okb05/+MGgVtn8wrspBPcJU9BI9z2WSUGx2td+VbJWJh4Cj/yq9uJHNqy8kfOwhMaRDCKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788210634; c=relaxed/simple;
	bh=rkf82Z3zvB/6I4XQgFIWhl7bAGlmJTxZUdAx3yX2RyY=;
	h=To:Subject:From:Message-Id:Date; b=A7CLNhLF4xnhEblf99BSFJGT7K/SICX6TaYTfO8wFJM5T3UmgpEDJmGYD8AyULWc0iYuZ0WswKQAXsQu8sKfvkovCD0z3+ybh+HTqIPDmQU4c4euMRz71NnryUXWuYyFYDePwe5v8mIZpUIY7f0UymcBz77P5rrKm4/Xyg+6iSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKBfrKUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKBfrKUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9FBC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788210633;
	bh=rkf82Z3zvB/6I4XQgFIWhl7bAGlmJTxZUdAx3yX2RyY=;
	h=To:Subject:From:Date:From;
	b=UKBfrKUsecU+gr+18xQPif221ZMESdOiJfi7FyOHGVkEdOOr1Qj+34A+/65vkJSYi
	 ddihtYSwRcItlzsT9cba5UI+SDx92Ekakimvw69MmQtM4q8e80RkbA7LAIas1KI2J/
	 JlCSOSrxrh+vDDqi9FwEpR7NJXhgQSA4maYfN3tbXNRAW6kG4I/jxSS+rk9s/rCq2N
	 ldSnmXcmjw0TbbFL1oJCzmHkeWmGSPHMuBcOmxun61mzjGyOHXCyEhRTh4ro5NIV/W
	 iTre+eRGMuFbwHhAJO+ApPbFJIUludZ1pS0wGLPlwar51rHRSSxBB29vH1gV8HJW9e
	 JKdXyonbqid2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE51C61DFD
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178821063368.5149.15626915525550373143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f146098b67781f92ef0b0b9614ab3ed6161be810b7f0862474ff954edd6b8a16
Date: Mon, 31 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788210633
