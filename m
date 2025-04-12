Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66FEA199238
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744445394; cv=none; b=sTvpeBxwtEdxTBTZq26ctSaS1Ef8qIDj3yMm4xA+waU8pWFL99ITyaHN/UqmQuGh3Yq3ej/0CQjMS8eOxoTcA+owJAJ+Mj31Gze3NiKci3fbkFSPs/kiBqcNvuOdYKJTrJB8reT7gy8WcsSRKov6KsnGiozUPhqqYOdqYYkAmJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744445394; c=relaxed/simple;
	bh=ECeWH0YQ/b3fkQA6z0obXt4TBIw3q/fiZP2f5/tlVqc=;
	h=To:Subject:From:Message-Id:Date; b=NL3a2wZYmLJnOstaXR58ucESiaCfSZ8EZiLQxnJXcoeCukRMMs0QV6FKgKsjF2MBgcccXTAooa1l6GC7YlBnDcfdbqy8Z83xnSUoNhRGqy01uQ/arsIYkNq8Z2OZ0E9IVJcdnkBSGl1lYpfyXsAsuRuymU1OgofU7ftk0fylbto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UxELW8rU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UxELW8rU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF748C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744445393;
	bh=ECeWH0YQ/b3fkQA6z0obXt4TBIw3q/fiZP2f5/tlVqc=;
	h=To:Subject:From:Date:From;
	b=UxELW8rUkWOttRNoj0jrVWYWjL7j8RJZgy5LU7va4zdIFIKJo7tqQQaoRTGWEbP7P
	 2GtYJB1ti1+YMRr1sO6z5O9igx8jN6L4PBsNVt0fk7Mrl+IH7Vvihvc8hpN8+YeFDq
	 4S5CCVvAt6qCOuHdM1UHY4S9RGJd3nIgg+ByF60FLs/LOKeQ05TCXFiLCdu/mLorao
	 kO/dwNB2e53nu169VeVooSj4Rkd2dUtUlOr2Gap2WoFR5mmJC1Q2uP99mQTG8qNYv9
	 lCuUdCWElRRHE6clhWqG3OKOP3VqXBghpqqCunugkOY70WQMloqeXi3jj/OyUYCXKI
	 cPbrax6M9DW8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A240EC369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174444539363.27302.14386033457116549172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6913df7166808435375ae052bc2dc93173692d9593091082c49cf25731f786d2
Date: Sat, 12 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744445393
