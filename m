Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F691B85D2
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729757754; cv=none; b=XaH3ZVfFnNuEF26fBs0YCZtJd/CdmZl9mfH5NztUxEIdaLXu29D/v2ItrXDOsdNkwabgiLUBCOsE5I9gYK7EBQGMLecZ+k8GOXnuLSSlSbdD/oVNVNwSAAlqs/AgkV9A9hpks2f9eybgQFZBPQXZOkPGerVea/VCfnLtpEsHgO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729757754; c=relaxed/simple;
	bh=XUWQVnRHz7HxCtXALMSrKpXpmmfuubfdetPZKtULkG8=;
	h=To:Subject:From:Message-Id:Date; b=Ev7/CFFKr0xOOIpuLiC/E7JIOOA8VGc1/gebpBnV/dn3R+OP/sUsZC4dRl/GpR0ptaZJyBERcYmBUS4sQFCeU2rPMUwnn0dGMdBH7IWFBi+zgpiQoFhGdekzzpA2lK0C1oNTgF1jkjuLdPn9gu7NhVTOgQXT4WGB/81KecDGet8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6gq9yDP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6gq9yDP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C00C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729757753;
	bh=XUWQVnRHz7HxCtXALMSrKpXpmmfuubfdetPZKtULkG8=;
	h=To:Subject:From:Date:From;
	b=D6gq9yDP6bk6Is/JOJ0rW/Ya9JzSvxAT5IytGqtU+/rDD2dCbPyUyucCSNIwkVvod
	 0l2RK6Zu0ig+B6qCKzHM1u7rnEn91uW27qWbhBAQctr7mYkdCNoJi3SADGblQck4+1
	 KHinWQKZGs5Dg6WVrLtZnxKAWcTrUDcq8DmhF7UcEztrORKq09n20cye/jGbLnSEUq
	 iZszXqtdcVvdFTpQh9EV11jvLXmVpXwZSFv+RqYzl300OyVt+2Gngm/kRYVGC4L22H
	 1hy9052nJp4dX2ajARr6gucXF6TmuGKTOtlEfLdy2n0/kEXGHjKGCiZeNO5B6OoP/G
	 v4J3FUaFBu7xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A10AED0BB6C
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172975775364.6081.13189291907708789968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 396a6b255ecc7a7aeff2cc2e50a86428f6654696ef0342ad13451f6451c3c1d7
Date: Thu, 24 Oct 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729757753
