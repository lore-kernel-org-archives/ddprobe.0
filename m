Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F5B33987
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732442154; cv=none; b=fSqUE+TXdoOMCnyJsNUpla2IZr6RSPow1WWuScIn6jKryILoMPiqjJu31w4ZgL4QcrAGdx3v+MtnjeTM4wK5jEcc7i6HLVRTp1qPa125Ag5VTavXeIyiRt9BPip65uikVTepz1UKiTCm5KFrM8hLiof89HvNkPK77sVYRF3MCy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732442154; c=relaxed/simple;
	bh=jemKZynXBMp0BCJzCq9JRGDBbPdAvA4bHdjDJMRDs/A=;
	h=To:Subject:From:Message-Id:Date; b=ff8rf0EiKBnbvb4g+ino//opfU5UDWeQVnu1iFE4hpzC/bZVI4Be6cXKUP8ZSGeZ2UTGhKQL9t2qr95NKXTeagujIFSww4y1gHIUuUTPMQ8yFraLf8lc8lVKWrH/g6G0etquELr+4MPueD+QDpn9O6ELMla3CPWrDEX4lejvC7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWSzbbKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWSzbbKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E99C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732442153;
	bh=jemKZynXBMp0BCJzCq9JRGDBbPdAvA4bHdjDJMRDs/A=;
	h=To:Subject:From:Date:From;
	b=dWSzbbKUH2cqRZ7+Shj5Z39TqDMaURI76+RYa+yFGx9KE4nhdHlfNBLhBwk6f6AtH
	 /lMH/bE2BthbToNvFvzDGitiDTOR9jDZh62Wz0V4s6CqBFrQ5PydGNl8T5LrIsN2UN
	 gv3XefTHyCAgVETGywLE0jSHcrSLemPMEeyAcOxcpJeJeMv+7N64Y8cu6jP/Ief1bd
	 MtZHKFALK7yhugDZp7SoqM/v5/Z7c48jZ0u/PwqFafdCjjFpZeikzCRrbCZU39beh1
	 SAb2wqtRESmruEYYURsRUKBQa5G31l0JtSCRwW0y85RDF3yuhIiVnmrLjeTlSwT6Dh
	 kRvI6RYk3229A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93558E668A1
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173244215359.387.9762536587280132585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d8180671463d20c11ee478d319d222c32c1d95d58e8908820fcc990f04c326
Date: Sun, 24 Nov 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732442153
