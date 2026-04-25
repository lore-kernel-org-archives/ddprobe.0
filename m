Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A45D1D61BC
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777104454; cv=none; b=ssgQnn6WZm6xgp/VeI7xjSg+/L4moelDKixMR/oa4KgeuCbSfyMk8k2oL6Zecek2dKMDXztT112Vc4DvSFWJwnSaRGtJ3GYLL622FYuXdHExar+r3NfyJlcq7bOsztxMsW50hQBbsCTb8tkwk7RUd66gII3Z+ELhmg+KPBjeLVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777104454; c=relaxed/simple;
	bh=FiN2AuB/S2dhjoN0Zp6oOxicDexA9cBIFpAAVrfp8LU=;
	h=To:Subject:From:Message-Id:Date; b=XAdIHIgEE9Bd6uZMPO+hDuz8MPTfABoaMggpp/rs7SBXXhMvNslt43YT+8f6f6g5NkYIBGqA2ixqF3gNn7ln2wHs+epnsZAl776sWxo+dtNADH9TRU+TLABqicg5OGkdcvcYra9PPm0+57RnTqnfYhMtSJAIiPGSFup5F7acbWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBZT1PfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBZT1PfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C155DC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777104453;
	bh=FiN2AuB/S2dhjoN0Zp6oOxicDexA9cBIFpAAVrfp8LU=;
	h=To:Subject:From:Date:From;
	b=jBZT1PfCtb25uyP+oR9QhLrYlDP41ApH1cC0hYEro5Rchy+KIBsnY+osu7zcW1qk5
	 tL4lst7ns5z8pWfnjm8dO6bfboFL1gD4+zgQl1xsKAYbrqfuuocpXtHTEGz3sNhAqk
	 QbrLfbt0x8a2psz9u0pfdVCkHRDh+ke1h6o8Zf8wG40XDHxrafaQKFp0wcwsEUj+qD
	 d0yw8DdauJ7E+qWjyNmHviSw7EPnzteaMgcIozIPODle4+WkDZMXVmW9zgPWCtrPMa
	 CdRrhn0u+lrm4vlFIKVaojupFS3aEO5WaayL8C9p37Q98f2TquFsdVVqfxxq9s0QGn
	 VguSQvdV32fuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5AEFF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177710445368.23553.14152234539102790197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc1228ae86633c79f1811912b9c526f2cdc3f8b298cf85ec9b42334ed436bfcd
Date: Sat, 25 Apr 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777104453
