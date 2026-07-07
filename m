Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4853859DF
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 19:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783452514; cv=none; b=a/NTQrFvhlBvPW78dwgAnAxZRqlTpPDVDHWnZKfQQYhCLf3Szx3+Jd+vNPJ3yEH3HICb7/jwlsu9NQOVcp0sodUFEw4BdPOzdy2SruYxJgSKowy8QUdU+Sk6YK7MTJE5KTOAwXyIraKvy6hz3H7oGh+LqtIRDCGFMYxKSIPHEl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783452514; c=relaxed/simple;
	bh=80j4oznwwtOz2AxajkdPClfSY+kbyCIxfuc4uwU11wc=;
	h=To:Subject:From:Message-Id:Date; b=lxsGrQCh1m653uCVBc2aZWuHGa56Ff7ADmiUC4QO2S9FJBqGuo6mqUQKRG1BSzzkIu6zEBDaS2AtRhwjWo99RgsNsidXwFljscwUMsD4BMDDCCFyYxlPcY66thUDsDmwMFOFoZaU7DrL3qAXFAvVTU77gu7wiX6iZvjD2/ztaNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ky3vcTup; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ky3vcTup"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8ABBC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783452513;
	bh=80j4oznwwtOz2AxajkdPClfSY+kbyCIxfuc4uwU11wc=;
	h=To:Subject:From:Date:From;
	b=Ky3vcTupR4le1zJVQbeOYK08EwYkMNaKNbmhOHXfJ0z9tPJuWszCldZCXWpCsjzIR
	 IGBCExj+ZQY6HCOvN8zanXt+804n1Zb4TcPMneyLWDp3iy2lUdFONHb61cAvUbkao7
	 3jjGuX4QzS/Yc/MZTtNhIdIJSJR8qo7k2bCzkC3c+2zbvBcJALT17AIRUrEJWW1swV
	 S2+eYJAv1aVOjTXQgOn+TkXcxYHHrKSAZ1q0SGOR0fmp2cOfaW5OvWNAwlS4ZTR0CU
	 NsSWLlex7wOFfDktMpiUMCakF4gMoH7nG/0a6Y1YjZpzFWvw7XCvNRcdj60pZDNynd
	 uyrleXJK1iY+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8950C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178345251368.32276.4422117888100518593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee0d2e00502565158bbb1657bf5d5acb79724fd0f00a0df676b87e4f7cb31490
Date: Tue, 07 Jul 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783452513
