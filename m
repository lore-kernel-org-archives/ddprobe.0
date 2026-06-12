Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D52388E76
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 15:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781279194; cv=none; b=tvbDqsb9OEIAnNqwqwCiA0j5czSyt2ijq1gNmf/CbS6vnj2t6ziJptsFXCCC9F73geUwecpvepUMn9gFyYPw3QTYpPj0Me8vZZ9wAjeECRzay0K69KRyHpfQvFXsyeM8CYKKfewxOimGUvkee1tgXmB9zTxrwe7D1OsGE46GgFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781279194; c=relaxed/simple;
	bh=XncFcAqyTddQYwu7fw0ne4Sk48ZuiXVEIv/U359QSuk=;
	h=To:Subject:From:Message-Id:Date; b=ohft81MtqhS4mg2v6RvQDLWtKlF/nKacKmtk/GLY0LmYfR2eSXpcnTHXueOwAJ35bMzrTPKDtx94bQMvCyieIp3B7es2oNNubxK2inunzlEkCGhYMmPuMjBjKYM5znb75P3UKDLjG09H5BnCQ1OSVmuwul+V07skfZMCJDUDWXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NqQ6bjPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqQ6bjPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7F64C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 15:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781279193;
	bh=XncFcAqyTddQYwu7fw0ne4Sk48ZuiXVEIv/U359QSuk=;
	h=To:Subject:From:Date:From;
	b=NqQ6bjPOjuxv2LSYfMaJArHlmCy7n+zHxGx+PMIpzYj5a7uQoUtrdOhBUIuMpphMt
	 lmXHjUP8Up5hshTit6q6b+6U/rrRErfcN+xeDCF1j56AbUQvOaX8EJF4oOvhU9Sb6s
	 rVmHt1Qzsw9NNixU51PY+JAlfWzUBsDi07rVTOQELPKCbOG48IAMv0CbBSaY+in+ff
	 YPgHh5gGvSbIAgKpM3nCNxuVqtOUNfj69Rcd6YWRebavB+LJM/CYmptoLC/yfBqk6C
	 Rp2t5FEzepUSnrhnGlJLEOnJDoh+ZA+R/QjK6fX7t0lalBXdnxuHyChEBSeEEqSUmr
	 Jd/E59hc7OHkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F0FCD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 15:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178127919368.11324.1118385650815806981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67ea6129eb611030ba1365ac02f8813b91aa183e85c7d6b2b3e96601dfce4101
Date: Fri, 12 Jun 2026 15:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781279193
