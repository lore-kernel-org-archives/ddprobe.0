Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426AEA937
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753043994; cv=none; b=HwaWoEWC4hu5TOvm1DcN6wZ+yQGcNSedP7XgCVhJ5QXSbO635Zne5U5WAC/UVN0viNRVbKQo5hFoHriBQyW/l+rDCi/vr7v2VrNC0RvSipzARln7D+yAg/cDYaay77OpkNn7tapi/I+yrC3uJNafP338b14us99Se39Sh54s9Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753043994; c=relaxed/simple;
	bh=R1isxFuy12lvbsco0DrswXc2/0L0UloEk9UbGrcwaDs=;
	h=To:Subject:From:Message-Id:Date; b=JFCmDpDmsg8xlku9ngP0L0h2ES07JeOf/fYCkxc14M/u3lEhtbpx6nZWtbUbUJO8SoNfGrG5XnAfjWYTmhxHtDSxIgQAKMh2WVzC1/05IwfPcw6Et//uNk/oAICl2pT59Ko4ha0Ui1MPNLStHv1hNDXS+Bt2vrn2+JsTROvhTnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uw1/Onl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uw1/Onl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8060C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753043993;
	bh=R1isxFuy12lvbsco0DrswXc2/0L0UloEk9UbGrcwaDs=;
	h=To:Subject:From:Date:From;
	b=uw1/Onl5241rZuT9losECr8+xCMIx83ZOXpBzm+56c5ZJY2TxR14GO/QdF1FvLsYa
	 buqf6Gse2UuPua08sH9FSBwD/rMbKq1Mav/aYlNCWWqABZISsTjPwTgP51C5CSgANP
	 Sw4xXymbvrH0b/4EvwTFaPtVNLfjeSMkxeC08gTwI/8AjwBmS7HYfh3w3TqB330KN4
	 fbwcsjUnhYhaOEowY/qx4oTDoTy8OYGwEdo/omKwJZwJAe9CeriDgtZAEZsQiglWG1
	 i1HSbvN1W7RWF252xeCMz/iDYlhKElTblDKAUARpKS3I3UPtGgx1Dvv88xRMFDOaNA
	 UqNqg12shgE8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9632EC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175304399359.4605.2226495977721303687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fc9dffa3deca97089f4272d3b7f26b7419d68096f1d468556fd85ec98fe0cf9
Date: Sun, 20 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753043993
