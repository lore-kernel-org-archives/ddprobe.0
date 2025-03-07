Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4774C20764E
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 11:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741347534; cv=none; b=ci81YIPHgJCEkZYEh6FMYSthMjBoC9kmhf7YjpABOyM9yPArfPu9eG5KrNYcA9Nn2GRaoh8vcpKD/p7XTfHu39TEDOHfrgPJ1aSR4DZ2ZE+CAfGqVNRI4GWlQ31sMpLv+grIEEjAJNDsXdyDSMGAuhQBe+Czip7qFqGqGoFJZdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741347534; c=relaxed/simple;
	bh=12jVjhQvd5KQ2zpiVuE7WsLPIYEZkw/QZoUc6DSIcvY=;
	h=To:Subject:From:Message-Id:Date; b=d8Ir1Y2lwD6J6j4Xsrk6A2mw+13IynMgehHRK/F1n9N61VBrAcxjDcYXks/ZJrxKilr2y/aVd9r2bBKbJqW1VGsXwpkXLBeTHvVJVSWAk4blxJ+HeJtrCFqSz8IOIf1bL9gsD2bmAwoil1Q0mINkdTrCCK1Lj+R16sGP4P48Jto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKvIUQK8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKvIUQK8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2549C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 11:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741347533;
	bh=12jVjhQvd5KQ2zpiVuE7WsLPIYEZkw/QZoUc6DSIcvY=;
	h=To:Subject:From:Date:From;
	b=XKvIUQK8pvYtxysWANMQc2LW+wb0W+U8B+z/2oKF/ENZT5JXSR1PM09lCBV8H+uf+
	 A5jqtdEowJMXMOqo6BFT9T+CywrnzMlsChHdW1L0z3IrNYhrZlmUwnolI5KHOrwtob
	 ltM8CrXJlS2HuMeusXtzDbaQe1OEpbg1rFW+XPMyVE592wETSdCJcBmBmwLuUSYdPf
	 ko9OTJPtoxuq2Bft67LHPq1t5oMOX5343V69nRsES+FgTS6GzsZ0bHoKlk1eu1V3O/
	 2o+bzpC2VAcG+S0t74dgBLgYBJYy3zqNV2d5F8bQ8FH4pHu4RlPghybHnLGCws4iT3
	 Ti9Pnu3+ZgCzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C967C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 11:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174134753362.21896.16844009202103118104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59845e8aa6ea6d26a200dc7c5fc3646635d167c049709f7d8142574db5d9a049
Date: Fri, 07 Mar 2025 11:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741347533
