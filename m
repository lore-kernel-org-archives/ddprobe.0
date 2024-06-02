Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6587EB64B
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 14:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717338923; cv=none; b=Wf9qEPHyztmYjLXHXMJu3CIcxnPz6150rl5HHZg0xAcKSNSiK4Gl01utA8XSCAwVHEgO40ixr52xolg6kb/dy5DXfCAMOHsA21r8KyDkIsh64K6wzB/z2+OnSfSg+8jGh5Hb1Y/nyi/D2jYOius14f+3gvbZmhXkKpHlNM/YFBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717338923; c=relaxed/simple;
	bh=6NHE9+LN3LmCPF0F3IRkAW3he2VntpeiH4dgQaKdpII=;
	h=To:Subject:From:Message-Id:Date; b=J567ERYbSATvO61rvTzY0ZVbg+FbyGGfzHhSo3+wddRHAocWr+nHh4uYpfo40j34duOyGOJjWex/QSsIeSy2odvZfWRyHrpTVYXnO29RVAHt1EQFWV7+0NJj/89W2JZlYeIb5il9S7t4Plko3btjrf8I6wyoaeSr/qqMEa3zR5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=is11dX/+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="is11dX/+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E680CC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 14:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717338922;
	bh=6NHE9+LN3LmCPF0F3IRkAW3he2VntpeiH4dgQaKdpII=;
	h=To:Subject:From:Date:From;
	b=is11dX/+/jWqzChCL5r1wOhTgXJk0VsM2ED1g8M5d4vPb43JWRYTLJvlP9chU1SeN
	 0Kj/JwRVb1g5hJce4tbSeBSJuGL/3YsJs26sosnFkgA/dH+iSDQ+37rEOi5HSzOu2q
	 yCNgOCDRbPcOZlvZ8/JE537Cb+PugUNG1tQeSenTTNLuWKteZs6q3Ap9CYwzD4W3yT
	 IZxLKYTDNPv2/BBY6jEliUQ5W5HKsGC3lijM9b45Usx7vgNPt+jmd4yXbhjjHooPmD
	 McJ9ruT1bqjl+zRGDqaRLJjj1kSZItyKdIqnVJjLjsStMiNC+aoZ4sd9pNgRFlJS1f
	 ZWAcJvl/uZLdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEBA7C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 14:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171733892282.31630.10323540294814939882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd560845dcd6f21240e9030a4f23c30a1ec484f04b0f8569a94dc8e47ed3ffca
Date: Sun, 02 Jun 2024 14:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717338922
