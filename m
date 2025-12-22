Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1E95FDA7
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766397834; cv=none; b=VRJNKlDtO1ylSR1JuW3+jpgM3T7UTI3n9+HzDOcTyYbOkjoAkEqia+wHmaoif/uF4eDkII6LFCuOHhA4CbL6VSvcAKGEo3/apJuJsgKKYso2m7kg+gFI2gTSBU9wLqtdZLtFtI5HSj7MlygBJc+TVCw7HzsCHXkXWdl+IRcrHNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766397834; c=relaxed/simple;
	bh=kPBTxK9wXynnAwCsddhYGWLsn0TSKdk6QSrvMFxSxQc=;
	h=To:Subject:From:Message-Id:Date; b=ZscePNDlttfu2IP3mx2t83vp1sHMceV/oP250GvCpQ9h7+PZ5ktBMFnmo5m761mTnJtCgSDwq+N89pguHXbnjygt/zg6ubbju+J3d0MazR+wo38l9+uNiUhUCuB1rjXYdmO8aWTe5hqu+4dV3cQ5vYwNIe8yNBDjz+sga2E/P58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OaWJZzRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OaWJZzRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CA6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766397833;
	bh=kPBTxK9wXynnAwCsddhYGWLsn0TSKdk6QSrvMFxSxQc=;
	h=To:Subject:From:Date:From;
	b=OaWJZzRkHzsjtix+yrcU71Xudlrubft2Az04FSMQPxRYxaLStsVByowTQ3l3urVNv
	 +enMfj3lA0aEF4gKWCLgpCnhJXX+Zwy1CZ1RBaEBuUtWQkmDwrDPddaUw2JDyfuwTn
	 v8bnejvo4enlgBYRpqVyFqSpDaG4cxvUyQach/fZ4M14MjLJ9OVdGkqPqRU/Yqpd/4
	 WsSnVSAYP+Kz1Gh4slkCDuJd5ufzyDv6/sLzzxxuublGaKXkgOobzRs2T4ze5uWtCV
	 x0DR/WOl2yo7P9q1blh2NFSNvoaFjHMvLA5HqUdx2+nOaUM3M7xo8upxUjy+F4QRqV
	 T8IM2Pu3F0RYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90287D711D5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176639783358.22936.12079966582106522009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57f58e26aaa53f5f90c758b37c22e4c4351666322ff730d73814a53162aa1423
Date: Mon, 22 Dec 2025 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766397833
