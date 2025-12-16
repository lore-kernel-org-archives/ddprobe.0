Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4EF31197B
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765899234; cv=none; b=MhYooUVk+C9+HvDGiaC5qqypcGCuAeWplo70sGEW1h1wXmwHVUAYK+aSKSRQin0xhBfruv0TT6IvcZMYP5lztsnmuQcTOAvE+QKnv8lifr+OH1w3+MHnbDqCLcd42Ui9n83kSlEtcnD2piv6E02p0XMbjr+CgDHs6T/N/TiYYJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765899234; c=relaxed/simple;
	bh=Kfz8B3LO8StDfcstBxGJMePe+KWa4WrqIC3AJ4V0gm4=;
	h=To:Subject:From:Message-Id:Date; b=i8E6FQ8ctYmPx+q/kBgVv9oWuMd3OMNeO7CM7klGDgwfQs8iXjlsAWpdiB8sUIS4Ypkrlb/CDeRCJWbrN6V2qxu8lm7JkKdltbJwpQ1F0yIVVRu82OGMoehhEm3FVyIDoEl28loCNiksm0s21CvTuzWJ3MdNeYjsW1SysfYH0Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQI8EtdP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQI8EtdP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98F8C113D0
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765899233;
	bh=Kfz8B3LO8StDfcstBxGJMePe+KWa4WrqIC3AJ4V0gm4=;
	h=To:Subject:From:Date:From;
	b=CQI8EtdPm1pEnbY63j2+ZKUDE8UbZZmBN9tcwwPU1Tej27itcEzC+L8AuNlBIMPgR
	 UyHTZS3asyITQLaWWkTYDXBLVBCqVmmWXJfVbZI4D5gkXBa42EImqgCExHEeUW2pvP
	 086FwSa6cnZhsIrQ2YfARJgwy0cl/txzaNdpApzSMWFZZylOklNKj9aVokUxYlRQwN
	 kGvdrD5spBaFX5SEo0iNjwKbOH8KnP+QMrTXnf0rK3Va1KiVaQ8VdUHZPhQw1Q1tFF
	 3/+4JRCNKsW19HgvGw9RuE3bSktF7S+3uEUiGTXxutsvD/hmGgfnKL+9Yn3NCWGPdB
	 jOZGT0IsQVFjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EC8D609AF
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176589923360.19425.17185518099073945599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b9508a66e2063d40646d6a5888ca15e265316e2f731806ad58a111d847c5f93
Date: Tue, 16 Dec 2025 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765899233
