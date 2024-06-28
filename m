Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BAA15099C
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 09:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719566063; cv=none; b=P4Wo4ZpmjZmF1sUti4cSrwMXN9yuQqoJAKEjTIsQgJ/OYOnbu/hJ428hGjJJJeQT0D0B/fc7LUEeAJCqiHppTaoVoi7ErCWnnNQCKynwZL0+w3gwi7UWSju9262G11a2ZGrYEKm0Mkq9Q/1x7L74tmO2vCiq8J20VdcsMcn5yxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719566063; c=relaxed/simple;
	bh=RRJX+sQ5lVQ4/XhVekpgwNmo5ujul+qlc+m8VABVF08=;
	h=To:Subject:From:Message-Id:Date; b=a55cbfizMtNuUFqhCsMuAwFRaEUpzGVIejyzQM56umAjXMau4Ty+rWnXSAi7KhPQgWoU+Vc7i0odmDddYzUDYEnJddbau5UKVqGJKOGvpV43akGCot1HtNBrkvdwzXmGb1N+6epNmca69wWvMR4/kNEAwM8Mm4oZNd1ABseJsmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tuww5OA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tuww5OA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28FAC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 09:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719566062;
	bh=RRJX+sQ5lVQ4/XhVekpgwNmo5ujul+qlc+m8VABVF08=;
	h=To:Subject:From:Date:From;
	b=Tuww5OA4janVPr+r1K9YJNjUwj4xdmVoaxgtREcjoEwK1l3a29LUKvtBgK15SyOfQ
	 nsuSm3mb3hhdnBg+HsYDukiuEXBaHua5OLoIjJ6SsWD1KQP282UQI54Dlop3l0EC2B
	 7S4UZ4hukQ0iSPDjwpb1ZL7dHzL8PXoORq6E1MVSibKyZj1wTFu1EjLLGZ6Z/JWq7X
	 4bhFfGVbZaxTUnZ3Yoyzs5ASPFZE+XbrKYSdUnTEbopAsZUFaEBH5MFRTwRBRxMEUg
	 8f0VUd2wb9yiduXju4Pj6JJts/94omCwogBg13eXUK7k4aV1laQ7eWrR2eLBTFNRCA
	 ph9wocS/abIkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3692C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 09:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171956606279.21769.15654115871667043954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67a2e732cdb97916e35f36afd1f8f6d6934e052ee0775f6aec97361430054acb
Date: Fri, 28 Jun 2024 09:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719566062
