Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58865185B48
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788394834; cv=none; b=gQwrPoYeaSVa7SPW9JHEaN3nEJY9wx/QDb9AJ01fN4kfv5DzuTSWk56gYer2vmD5cbuHiAVKpFAZfnUFXWPiQBK1tt6bRJyQWK5Kd/LUTh6eiaZ4heffOKnTWtrCedME5P6qnaK3bnfgJg378DJNCrl5e3gXuMzQjoBrTdoE0bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788394834; c=relaxed/simple;
	bh=8pCyiva3A7IEM1Z9f/SS9kOfwn6wlr3S7cSy1Fe8dWA=;
	h=To:Subject:From:Message-Id:Date; b=T+GvNsQgHlS0PzEuHQijIw62Vbo85o7Xj28uG+aNAnivBy38J5W2Z5cFx0qK22ZRTVZPwt2GtAjvsRhtlS0EHFNl10YJvnBVP6koU0OjkGCUn8jzZ52Nk0sf5/R5L1h4rD2IF3xpC81cCwVoZrVqmLdlFKXrxWnMtOMOtcfZOEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emPAXMuJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emPAXMuJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7D0C2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788394833;
	bh=8pCyiva3A7IEM1Z9f/SS9kOfwn6wlr3S7cSy1Fe8dWA=;
	h=To:Subject:From:Date:From;
	b=emPAXMuJoRFK3CWjsdcbRlbsV7iai7AyE4E6cdO3b1c+9zErYa0OhGsuvNeOIl2sD
	 HnjPUj7Oah4Bp+WSGpFMPWRfskQ3GIZP/v6zbL0ok02fkC0UDAChDMmb2jBQgXIM7y
	 fIWML1CIeivig3RA/E1dyPwx2crGjA4Bo3h20TGarjSL9nRfahmx/vboQBiEp3VlBY
	 7rT9f4AxPySRgG1gcXazHji8sDCJ0IweBRVxzSvqT9+X2bl4VHeMzUce3z6gPBF7YM
	 bTJykAb15DvrBvH8ayVZdpXw+Dx01JQnVxP4Ay9DRvNhH/uFs0Pnaa3C9VBl6wTAgX
	 GqK4/tFWQb9FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA720C624D4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178839483368.22902.6709836199817268269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b7ecdefd4f6de4e0135ea6c7db6bbc2ae472af5e505397dc9056d288fc9c2d0
Date: Thu, 03 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788394833
