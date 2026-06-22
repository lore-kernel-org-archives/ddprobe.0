Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF8334D4EA
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 20:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782159994; cv=none; b=lZ9vkbhrpTecmNdkR0byjJjuq4SP7sse6GBSHEOhIvJf76swjPsiHUuiDCrRLAldefAz9bq6NXBlGxhRMA/VfjH9+yOgx/HxCv9shg6/OnVZ3YkBLkC8xAeMqPE42DALh9Qkg5XXHvEnkx31W1eXZWUI1btww4nAc/dUFZycvEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782159994; c=relaxed/simple;
	bh=NHoLzHCL/vrowk97FO6DKGnxY1Ey0K+8dAJEAL7FuIQ=;
	h=To:Subject:From:Message-Id:Date; b=qaaKPjP50hccnghg+6mN7/f20++I8hRWCoAhYCkRUrV1gDHmoZ9SUxVn6bgRcrWe/DjPEO+aKFK9hyQzvjBc1YXEzH0YkDOoFkLa72tW5kSjJcSA96WjjNKcLzVKGFdrCho+oLPCdTxNlNHGVyBPwkGf2Ot+EojaFVZFRIGm5Dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIyMYcAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIyMYcAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E42C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 20:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782159993;
	bh=NHoLzHCL/vrowk97FO6DKGnxY1Ey0K+8dAJEAL7FuIQ=;
	h=To:Subject:From:Date:From;
	b=CIyMYcAsHV2jLSbSqMbyt7VsPdWNIpWoAivmPKlmBso48vNCQDNIvvfjQH/QGb7Kc
	 pem3Wj8CJKZfGDX0OmL14bY23LP5cnzHHjnhfSxm7mgyx/5aPZ+PLlz1v1JNV2UYIv
	 0uQQtbnx07YVc9n7lUMH6Pb45DhYmKupE/EYLTuBjAH7EedtTkbCR1x7NC1ZRIuMp4
	 KkU7KH/eUeAME/r8oECRQhHnLpPA0cX1mDd/rAOHefNW900LYCINoOif6Zyt+I9ild
	 r9TRJki3PoPp33qllj3YS0iG/Qasmo7/ShI6PoRLYPqjFT8e5fC2AscByCjzVGCoS4
	 ABOXrPlaCJEjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFF0CDB466
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 20:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178215999369.31124.9730628399146503545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5331726a5c0caef820ad3c9a9170c70e5823dc6cde7975716a55698112058946
Date: Mon, 22 Jun 2026 20:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782159993
