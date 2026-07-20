Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5806E31B83B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 19:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784575114; cv=none; b=tONI2cCxYvwMvTQzKjo7q0l5+xscrsXn+PJucPnii6gd8DSJyVzLhj7TXXfQvT4DxLRwk9Sv9F7as9cd/Lje9PWPl58MhKo7TrL/cid5ROYNeaIfS3BPXVvWnZPcbQdclOTNquGZSr/69g4N0KmdiI2urMaMAZ522N2kzNir93g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784575114; c=relaxed/simple;
	bh=T2pEokSJzG2c+c94L/jnt6yMK319slLx2HkM9np2sQU=;
	h=To:Subject:From:Message-Id:Date; b=Bn5bEEy8raCI4Z8vfq+Vy1lXkjSjQnxGog4Z2My1+SD+Aa/Uznx7qPhp+F59UF9yFGWWFtJu/fVXRY2+A5X0Zc+89mKS174ngMkwFZtngh1QO5LqN6yPESDJqzy9fABCIsTGMe3IHPdjiqixqYXS/oXs78TyUyogvcDJj2FxTAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qgLO+EmT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qgLO+EmT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9E07C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784575113;
	bh=T2pEokSJzG2c+c94L/jnt6yMK319slLx2HkM9np2sQU=;
	h=To:Subject:From:Date:From;
	b=qgLO+EmTBw7TQHSFWwDSZVd+4U6vWDUZQYhvg4Y1Ezhe1HYI3wljhRnG006AUnIx8
	 3ZRxOdfKysOEFaj9G+6JzhxNDz/wgvvocLf/1+KFDsYAJft01wCYHSWG5aeOuJp6Ee
	 wwkbyzSbF0k8kHXeHrSeVhP4yFJpFfGHUq0u7vQQLnle6L1JQckIm49+2tKmomByte
	 JLy9STPrdWtewGXzkhCOw2Dxml2rFZaeKhEidpvFFtmWoTfQWbtvnvsboNDewjadgL
	 Y3IMSl3t8JkL8wCDgXordk9EcMgUeExsMUwwMd8y6NSQkwSwyk8Ojx+WttJOKxKrmS
	 hWUM5BQ8zZJ2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1899C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178457511374.8102.11213324417269329480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e9589c311f600b4d0d1e338437af426464ec27997fad13dc81a041b68c7929
Date: Mon, 20 Jul 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784575113
