Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249A964
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777515454; cv=none; b=azNcC13om+9bNgTBB7xJyZRiGdmHceiefDV0apxLyluehGLG8G+tBN5W3d2fHJLCrOAClDct36SASHfydcbcZz3FYgJuU8u8zHqgmy5z9cfoEBVg4Pv8PwV5xhHDgB/9J2d1evCBSwrQpOUuEtQYZWCqlzauiBo47XpleU6zi2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777515454; c=relaxed/simple;
	bh=0HCKGi4Rtxtb9AE62He4fJXjbxs/Tr/lOnIDcSEyhpQ=;
	h=To:Subject:From:Message-Id:Date; b=XxG634JmHRjIeb25eZlwZHAcR7nklk9RMbkFBt0pZ2iTS+ePp7tPOtrl7Vw9f8R8xVRZRMjv6/9GJrvMqJnGo2mFcotxJJoZxYVzRtW77u5XvT1uULLcqsoxWIWs5ACVj0eIhVX6/Q2YrlJaHc324tCmsKXIAmiJwWvoJ/vERno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCLzNQPI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCLzNQPI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C166BC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777515453;
	bh=0HCKGi4Rtxtb9AE62He4fJXjbxs/Tr/lOnIDcSEyhpQ=;
	h=To:Subject:From:Date:From;
	b=VCLzNQPIcw6lyrAzaD12CExi9dg+pk4oYB3og2N9vDoH79XKuuf+v6ijfMGDDb1/D
	 txaNdbTW7o5enlEo7eR29loxW725jdwbsdfZiJye5fesd3yuWe/lx3D2QzX9D9V5EF
	 90tMN1FB8fPVhLd7Ym+U1OPmf7wcJHmV9cgaODdj37S+MOjDgZcYMA6ixdBDq67Qw6
	 RJtmrev+sEX7ZXhw6tRVvJJU2slEqxthWSM+w3xgW8nwURe2OxU+pG7hwKc/gzIHcC
	 yR0IhQUiGdBAawzbJCR91fV/OYbJ0yF3DpVoCVCZzsC2TSk1SL+pb1gNddeFAh4wtn
	 +ghgvn/ZmhK8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5C2FF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177751545368.3855.11791303221513090549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4bc1631d503dcd7e5972502f0345c1ce6e3ca9e75608c6756e7b3e067197fd7
Date: Thu, 30 Apr 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777515453
