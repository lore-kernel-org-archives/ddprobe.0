Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC24175A97
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787873434; cv=none; b=lfRwQvWhJ0/bTtzZUKxcR73SzoICWq48LJ6mcnI7Es6X9LXLGMGFaY0DvZ2Yp/emYgt+4ExUcWMf2t9rR8E6HeqO3JhLWIA+TvrXnsHAjT5jrToHIkKNsGGTQW2LBs2EEIBv2e3Jw6p2RtmLlckYsl1qOaoZywv8zhAaGxQ7Ybc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787873434; c=relaxed/simple;
	bh=emyt/H4FEvzXJMd4mFCaTBkqhmrSdHKyy/B1FM7eAAU=;
	h=To:Subject:From:Message-Id:Date; b=eUCeWDnzfi/8KJu/87cvPDEBmOLxLlUyeKHdDN/l/3QcEZMFFbmIhj37NMBV8NtNyTjKbPYkjwMFRY0Z1Uxo2A0hp2duUn1IsI/MCAl996zOcUif1lxgxh89W0nMCTGgxaDkmdC/2Uho2b8kmWEk/aJ2O+RWfeuWAa7jKruyNOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tn6+FbI7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tn6+FbI7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29F6C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787873433;
	bh=emyt/H4FEvzXJMd4mFCaTBkqhmrSdHKyy/B1FM7eAAU=;
	h=To:Subject:From:Date:From;
	b=Tn6+FbI7iTceUkwe/OvAISjqldDdoWhfP2o7bFngr5iu+oVoFSr/daxcKU0GPqpmW
	 WrqLC3GY6jt0/cqHltKdiwdl38Caxr9OibeISf9MwwVG8rVvrpObSVbUN9/q0c2gGZ
	 19ezAsFBZDhiWSwBEX45tpA6gH3QOLKpNo30w6/8n2ZTP01hccbhSSB2H5CWLAEVWg
	 gaAOspT2Y68E1itHuqqb8fD6sqsYtJSo0Dr/CkTNmXIcSj/N+0oQVJSlvmb3P1iSpL
	 FzdN9khM0hGZOldO4pFQ9H9NAv3Y49SVcjqFWjhh+BBOeW6OqkBJmzgp7wmJeRmgfn
	 0XZcPqZriWj7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB040C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178787343368.824.1839159575589452578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cd8e71569d9ef32fe29a278f5f95b7f5336981aaadf6e24c3add1c528bc9b94
Date: Thu, 27 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787873433
