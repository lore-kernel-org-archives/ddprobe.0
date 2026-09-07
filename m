Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380E872621
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 00:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788741034; cv=none; b=dZBHIffjC+vR/2nrlSnS3DO10D3G0trKvFQ+WX2XP1uKFzcEnDIDtd9pmrSvAb4MeLzIfGoMsuVVx5XjW1lR42zqCs0jNJU2xOcEcocJ48tLueNBvTncuOChspCyzfhGuVRKf6j9CN+Vo2daSDeM6imT9A5/1ihLFQzUJfzOK4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788741034; c=relaxed/simple;
	bh=dge+bn3iaFVW5Mc8ZDYgeWd/ZrUT1NzwSZxt82WuYUw=;
	h=To:Subject:From:Message-Id:Date; b=CpjuBA3gZxPXq9yjbBODyLCVYajJ8lSBmRWC2N2GJIOfhcGj+fR6y81jyDsopY3qlR2hUJBqFGzaxjYHF5jAiV7vdHqBiXiNk+IIfKD8b2MepHSjspNEQ/5yoB5pZlL+NRoK2qXTJR39SPWrw8/CSFwXFx6PYxNn1FZGmsFX2ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lk7gGerr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lk7gGerr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C54D1C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788741033;
	bh=dge+bn3iaFVW5Mc8ZDYgeWd/ZrUT1NzwSZxt82WuYUw=;
	h=To:Subject:From:Date:From;
	b=lk7gGerrVURcysC63yc24AW/ZgOR6r/xFNc9Bbml4v62no6TuwhhqMfq/sl2p0+Yv
	 Kn9vN+AbvdcgoCw8kfL8tNVTZx2Yq9uF91iMr4JcYUSPJT2ipfhTmyb6I4ualmpGJv
	 52C6hx9WoyDiwhUMdiMmzmmSjoRS2v59AtV7WbIMUejr+9FjFXPOIFv4dEjRglE1bd
	 2TZBqFZ7o1QzZkmr6XRBZx5UpXdqsz9kWQugi9wbwlobGCN33rYEKeG7yI/sbchIhO
	 QDEAOpwhMd2FL+z+6/b9S3AVjJih3juEJlavjhKh2Eykn+CKI/0YePr2iS97F1Awwj
	 vmmfLoN05bsbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC178C79F8C
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178874103369.29493.17758300534442635616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 602382021b1aa1734f8fc9ef3ddf8ed5c31acbe8997564257a0d64774332476a
Date: Mon, 07 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788741033
