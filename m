Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0BA347BA5
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776111454; cv=none; b=KanFi7avcwMljW6b2g0QHkhTQaWHEOk8+w9rbiDIZSWVOlwKsb2hI6wmdytL1+3xVga3deu6YmjXwyiC0NwLojU4fDuRWLxKRmg35X6uC4D2Ot9hfEEB/WwmPVHoJj2FQTxI0a9QMDtnhcS3zL5EWv71DMLU9hyKU+RkLax48O4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776111454; c=relaxed/simple;
	bh=Kkmob+C5SgdeNNoa1NhJnYTAcDUv6dJ1MFktN8sY0pE=;
	h=To:Subject:From:Message-Id:Date; b=t0mZ7ePq/GIYZl0L66rO+nkqiEvAJ8ZEqpWzN+eGlYbnvNujZoe0RT7BGo9D0fOYq+JUUvJfSSh3jAe2ZswlFAIz1B/OCV/3MCPWZC1/FDGBfq/a0zShSyuWFZouSiHFNihrY/bewuOpw1V6fS2qxNr2dDRily9WnR/7SIACekw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YEreTLnv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YEreTLnv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACE9C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776111453;
	bh=Kkmob+C5SgdeNNoa1NhJnYTAcDUv6dJ1MFktN8sY0pE=;
	h=To:Subject:From:Date:From;
	b=YEreTLnv807MFIJjUrrCmaInf4EnRODKx6TzEBa/b9VEttWmSZ+VxEJRE0RznC9tO
	 9oRNSFDtF5Pcy0yW1qX8FV3vKmDWhr2xjxhPIiLqmvWuIX0xVUV9gmwO6jHIWFFbuD
	 MJsv4y0UIvc44GZ9yw2lzohsrDN7WFga/wV5gIsfeA3gyGnKDZvCHrKiFw/T9+e25u
	 Wu27mvBoZLAYcTaYPVIEDo5vpSFYxyQ9IUr7+ZFSP/iU3QgiEbXB5UgV71r1f8FoqT
	 PQ+YA0rE8fOeKPOVURjfWvLViP1y+wVzvPai7j7O+nWBV2nny5ZzNWgbkbuv9/Whse
	 lV2S5DfA0cwsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC2AF531CB
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177611145369.22984.4016978130133341880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a495deb73b3f6543ebd8e7c4ef9f13ceaa686d4fe277b3d70886d407f34b7f
Date: Mon, 13 Apr 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776111453
