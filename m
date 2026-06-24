Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C5621FF23
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782317254; cv=none; b=l9BiEoJrBJWsUJcTjflWLKRWHv3nsM8VINIlU8PpSfHU958Nw588mNN9RRhswA7SUVIqWLiM9eDlVYb7pknxpvWXdL4roMPb3fFKsF/VIeYCZXlUFzlKjEJrm5E798seo9r395QdFVnDtYscslrZqs09dntp0SUhbEXQS93X7NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782317254; c=relaxed/simple;
	bh=l1JS6g/bwhnyPnplNI0oAUnxm6ZXdojkXwLI+x+Cs7s=;
	h=To:Subject:From:Message-Id:Date; b=H2y+pUAlN14OHXoIOKLW3Yr+2EaOQiCFp5Uwu9Kl3KIbzwNM4H6rSkh0wFhjtkQ64G1JwdmALy8T7TvgPDJzythqZeSTelKtqw4FRWRWLPNcgtKmPXkc5At7h9fQ94+Ku1XIQzU2a9jwPpJrx8CDx2iKSoOeOmoR7M876kHv5aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvCb+GOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvCb+GOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA20C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782317253;
	bh=l1JS6g/bwhnyPnplNI0oAUnxm6ZXdojkXwLI+x+Cs7s=;
	h=To:Subject:From:Date:From;
	b=gvCb+GOeinsiIwAGtQmD04HuNTb5pfxeRQKW/yJcgaHHaDyXtCpeaR8VfEp9P/4Td
	 76ZWj3LRi2khCfSm0wU3/PKmTTsAK9ADE+1b3q632xeAVipxlkRyAY0arlfakzwism
	 YJmBu0cgyLcxE7iWHyn+uw/S8iifjFwWz5AWyULKbrh/T4qt5DOI+8ChFGmXdCODBB
	 G7LlL5eZXEWjMiFeWfVMdJz5ZnXax5Cu892Uk7XfmRxb4fEYuuBsTO6/c/u49iZbyR
	 93xrS+ekUvRmexUdZkv/0MSlgO1INBkFQuC/Lg8GYyAZg88UUkxsD+wicMW3NWMkJj
	 at7r3LAqGjdNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A84CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178231725370.19993.17646722452329272675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06ad7016b4edd7ce5901abc21a824fee20d2450b1212f9af02250f0bff5cf0cd
Date: Wed, 24 Jun 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782317253
