Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57670227BB5
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 18:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781980594; cv=none; b=iEq8qJt/ImnpQ3rm3zRqrdvqj0AikR16n7jpeaiua+bJc36+Kf0FuCCPgZg+Hsis9DYHKKQU0SHCu4WuErUz2u4CuU06OJ/vT/f8TqpCHVtBCqMiIaHOCsK9AvZDCsKITNe3znWGMd3fmqWxVKcLpp79+xleh89mgg37ml1e+D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781980594; c=relaxed/simple;
	bh=6sBPeJAOizZ/T1/4seIvV1HICWB2i5GX/Mh8ST9M+6w=;
	h=To:Subject:From:Message-Id:Date; b=Ga5oxZ1r/s0SvqvVXBGFB0EIolkDbNVddnFVZAsNyAe4HnX5ebis1ae17DivpcAN3Iiq3Orwj8zTWlNaRguhNMjahg1geylE4nPx0Z3MvZ8nFoPIRm/ZYAFIWy7xHIRDjhMmWYF4qyp3NcN0yxvFrajUWPuFGfgJZ5Y+TSN+Ra4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DURLhJ5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DURLhJ5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA732C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 18:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781980593;
	bh=6sBPeJAOizZ/T1/4seIvV1HICWB2i5GX/Mh8ST9M+6w=;
	h=To:Subject:From:Date:From;
	b=DURLhJ5/zy36Fm6+EvC/XamH+FbCEa4SgiJ9xRzi02Ivsv0IbmAxq0QXNLKxtWQUJ
	 +qkrI85hxKMCwc1CQbbUXCUJZNxBdMTyv9uUj9ZzA2x1HEf+AqqpiiaWuKwqPpVpGQ
	 r+PhfpeYBsD2sspW2h5mxt7ki5duLDzrN5sEkowWqGbCYlnMQ9JZE8Mupl9H/m/sT6
	 peIbuUF+NMpB9J+ep1ZNWhYb+C54O/M97fBIPPqgcdXd184FX9W1hrS0qI0YeR5vwy
	 v99s37L0mOa7MwFvrKWm8HIUfWLxpEx3X41UQpmPM1NLA+uyxQNXIjsZWMsIaADZ2S
	 ZeK7X708npclA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B757CCD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 18:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178198059370.21027.12681512456265572061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6982a2aaaa36741c7cfe9812b3b5dcd57e0daa76771a8172690ed82063b2943e
Date: Sat, 20 Jun 2026 18:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781980593
