Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9BC261B96
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766547234; cv=none; b=SKCjqT5KUOaSsCwKzwuAsF3wbbHp9q4gjAnFkdsJLKT4fmhWD0RpRrgflfH90iYZYWZh9ftl3uSLSHgcAsp1wpM1I/HoizPjIgKoXUnU1rwJXo7see1cELbYytF0j8Bf181AEtLRlDROrgUyEsf4Fa2dCbWusc8my9DC6ARbHdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766547234; c=relaxed/simple;
	bh=xu6E/gaQGZ6mN1wUCsGzOlNU6s/a/HR0+ieHl+PU67I=;
	h=To:Subject:From:Message-Id:Date; b=fkTySHuCee30OjaYHbgSq6QuKKTj3U2gZy7jPgykHJGp7Im9V44DJ+8S/tEBfEVe/D5R4+CI4bsTHyO9hjHsvnJPZFxJiX/6HcSWw2Y7YJZvNi4OzSB1GSliP+k8BNukyupEc24cKc+JkmrjJjoI2Ad3H9FJd0gEelJa04BuGTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHkqS3X7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHkqS3X7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53D9C116C6
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766547233;
	bh=xu6E/gaQGZ6mN1wUCsGzOlNU6s/a/HR0+ieHl+PU67I=;
	h=To:Subject:From:Date:From;
	b=WHkqS3X7MPKJUBaD/oac0+CgVMDAIR37CJswcq2Th1+I0kDaXYoXVczi0NN5gY3Fe
	 TH2q7kAS3DiMEBHxfNSf6zYm2wjyyeGyDoN7Z6nQUOuGyW/189ELVIjBguBdtQAiMk
	 lCR8edDsFBSd1ChkJWhUokpOR6VABa8qa3vj1yynDOjgura88gZisqgaIJJCS75/uC
	 jg9C47e8uJLqfrsyptK3FtK2yVF8mtjxU6uj7eOCkexgD8SrjhdReqtDEPdNRn2948
	 WgVIJpk7mH448rH68uLK9MVMozrxAM9dfMluRdhRtWE3o5KGlKhAKBq1O/M/76Q6hB
	 rVOP9VW85Q3OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921CEE74909
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176654723357.10834.15482234236043991109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f36ffa9a9600c7eaf922cc8e11fa7148a6f09a9c39b8e1e8ed3a2705bd26d3a7
Date: Wed, 24 Dec 2025 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766547233
