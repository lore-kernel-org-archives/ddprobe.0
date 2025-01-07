Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFB41E3DFA
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736244954; cv=none; b=c4c7vdA1pksNBw8L9+EGWTYN3IYqQ7MF7zO8Dn7c4V2uDdt6wlwC8CRKCOiYz1Vr7RBTp7MJ6iTWyiGMU5HbZW6IIA6rA3WY+YeIZ3bXfsg59W0ls1dZ/XqWYkGbKi7xrd3ucUAKTeU9sxLEiUWGhKjZmj/6oNYTZ3u6emPSfEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736244954; c=relaxed/simple;
	bh=JWlJqKdszKDJmvv/Zelcj1QFWAOezVXWU4Mgd72zS9M=;
	h=To:Subject:From:Message-Id:Date; b=h2eoN+Ir/lF2h35wSHwQm/eiyfzyo5krqUDEHZBfTMUsUUkaIRVmDreHoci6mmlPEW2jjrprYerxhjpfna+xCNfa8KnE3JkMiU03W5/OT4A60lgA0vnYj3CRkt4rwFUruYjNbepUBw0BGprXqjXydaAtdKIm349ca5YAT1wh8mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uy5uvQhv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uy5uvQhv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A955FC4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736244953;
	bh=JWlJqKdszKDJmvv/Zelcj1QFWAOezVXWU4Mgd72zS9M=;
	h=To:Subject:From:Date:From;
	b=uy5uvQhvWDKPgsFqjsEYx4dp6mKh9T8B1DVvTPTQTYudNCa4MMDC2SYKuUIvFIpzO
	 CUTLsTNDgDW5CH+sQkDPoM+depQFE7cn1h8M2Wk3Rqs2UiGFSotTRGMByT/AB7vuQN
	 Z0IZL2Oxff3tNkmju24hFzQbOYBwu55U9tArjrZ/GmApetYe+jPMRqr27cWdNIMNaR
	 Yskr9wo6nPDb8w0y60ZEYzb28qdXYzZk+0h4blCrMslrDKDikVf/ThuYUPl76+NYnJ
	 S3MraizdQdtYydJXICPqhxtAkKlHdDSvfnUnPWS54W89dOlLuAyVYtQSBgOztKP/2A
	 5Nv+lThCt4bzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989CDE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173624495361.30477.13042748456246628015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23b5c23cdaed4703bbdba5c4e05eab349286b5b9aa4162a2e19ab613c1759dac
Date: Tue, 07 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736244953
