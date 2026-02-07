Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C57033E34C
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770464634; cv=none; b=jn4ewbGw5lrMzhpEBKAQyLl52y8MrgD8Xxt1PiHlIKwWor0EQae8XLbioaHBfgnYnpy1aNXiBlLc0hyYZQ+0ZlLlqpzDsp9+i6vqKdToNqO5gdOocMWHNvydqq7CRutT7umOTBz0BJyOl4mE/Yf2ESFFE0M8fIQmG9NIzaksRnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770464634; c=relaxed/simple;
	bh=mBmIDByAWck9X8i38F7sjsjh8NLYQXLWQJbaQmhb7tg=;
	h=To:Subject:From:Message-Id:Date; b=seRYRDcWSXnjg/EhXl1D4V/dGFFsqAx2PT4VhGqA8Ja4aFsIye7N614tEnpO5zRxoxTe39qFAf7jzd8iBnoNlCgm7DnmeFdSsFHOGqvNX81MMKv3c73DQiC0jaU2moTEut4pFTCTLwAQiN8Yf6bvZlHUcsuf4CfrCn/VaRhKz9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfjsJeKe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfjsJeKe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF973C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770464633;
	bh=mBmIDByAWck9X8i38F7sjsjh8NLYQXLWQJbaQmhb7tg=;
	h=To:Subject:From:Date:From;
	b=bfjsJeKeUiii+zLWrZERzxwRXEF8DOmU2UgOSAsR2Y4XMzhwtzJdM93URQQyoBL9s
	 SfjVQKL4DRPOYEph1/1uTVFE29xBLXMlu1mXrxVAFw/eF09brCr9RKVRQaq5IK2OAg
	 yadmLOh0AChtpkqWO3Jz/IOsHzEsaWAvILBpR7UkVNNKuFbOJZGVURdqfOdYonK8l/
	 5OINkEhFncLuKavwicyRmL+i1J146jcdVOlhP48VNWrbfXEYQMg5e8vaVRM+w8S8Ss
	 ipuQOvIYceU7GrMeuUGGhqWhaegOI+hD9Lk/3DTexWY97jI5Xng1WYM+PgWuGcatWJ
	 FpnMhlDlp+Wag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984DFEE0ADA
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177046463359.10216.9473234147186863008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af504878d387c296f5c077945c492b08d3c246134119637d74a06e5926e39bc2
Date: Sat, 07 Feb 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770464633
