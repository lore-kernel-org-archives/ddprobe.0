Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F73B456E12
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784832034; cv=none; b=UOp4hWUedHRixybm5S6jfBNPfW42WTIqIO9aRTx8ijgJsC1E0OpxTy0jFPBT9av1x8r1oPcghkcH+6axk7RqD59JPvWW4IavzGL8jPabry7sElDowXUqNHXudu9agVDA/t70EQ1OrK3SLdRF8O1kq/EAMELnDKrHO9My8ZFVzhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784832034; c=relaxed/simple;
	bh=enxLnNIWWjRcpFs5LTXxtjbHFrFq7i9KX5SFB+owyXY=;
	h=To:Subject:From:Message-Id:Date; b=t9cKuKnhcwhlkUDH98w90Vsn7m3YcuI9EqIlJvASgzVnB8dN7MTX769e2MKLDnqbqApw5tYchvMHq+uzV+0TA12SSe4x9ZbPwwwFnH0h3+wOziMIOS99prNQSQ2+H/n/BqvcovtKLeC+pSAr9oGP2YJSelQMvuVml4l5Vtsrbes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FG8xhjZ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FG8xhjZ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D365EC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784832033;
	bh=enxLnNIWWjRcpFs5LTXxtjbHFrFq7i9KX5SFB+owyXY=;
	h=To:Subject:From:Date:From;
	b=FG8xhjZ33SRiukNpA2ThkLKSJ2Z+jEM7f9yMyggbiWhu5CB40NuDAUXlcVjsW1Xkt
	 D8Gnx5GdnoLu6YUpNqXRvaBQvVsHx27yQZT+4hraTZiNE+oAUy5PYNjhYGTaiUZJPj
	 yDWyY9/7dS1FuRzjx714IiJhf4T1axWJnyxZN+kWkEJuRehCOnrbN3oVbuju1YgdiG
	 TI3wtd3/htrVwN/+Mfy2qJYHv4bg4X7NYOROBTjYplWJf5E5mN+QC7FRip2DzoynBG
	 FwKWQtZT4UcTr/6lPO4NNpdNxEOsQ8O4Ju6ti3KjPK12NrEF0Egwys3KBNQFNCimQ3
	 z16BxoMPgvIAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FDEC531CC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178483203371.11379.12135917808053154281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0c284ea8e61358cead194024950a251830370a7e41297e32a42a7d6463da601
Date: Thu, 23 Jul 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784832033
