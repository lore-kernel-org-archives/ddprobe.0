Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB461443D
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706317096; cv=none; b=JJT4yyZUZ1opYLWQeis3NNXqStx+iFvgk+1SPSX7tnLVHencHvQz7UEQML/hOYSskbrkMdxVKxd9AuhJjONKmkM7gohuNSvi/hwMWX2gz5Ivrs1kNdFkREkudCYTDZ0Qe+tQ8wURjBH0GCAA0gqk4Wn0MRTsv9002BVfv06AIR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706317096; c=relaxed/simple;
	bh=mAFpnXt7/38LWf3ZRIzi0X0eZ16NCf7F7NF2XXa6pnc=;
	h=To:Subject:From:Message-Id:Date; b=H0DfRfCfN6rOcejpPncBFg779dVs2OnA9h+mFDGIL1xseHqS2DrPzsf3IwnoS0ueCEJasrSku4i497gpVuhBHuHR3UFXaX4+pQth2FvX9RNPuXkM/dJdkzMxAMwoZcOY+ItobXjoslc10ANleAFjsiSEVq0nId6ETwSKvM8bWgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZgsKIvvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZgsKIvvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70B75C433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706317096;
	bh=mAFpnXt7/38LWf3ZRIzi0X0eZ16NCf7F7NF2XXa6pnc=;
	h=To:Subject:From:Date:From;
	b=ZgsKIvvXfhGvSiqbJPBG8zpkGLjcfJgQREEXU/P0/fkUi1aZREFQNxmVpFAp8NiM6
	 6In3OhwIBh/agYCxGu62lotRiDWK4ctr3RBv9ozddAQAmt1P1qH38PNSi2EDtKUABT
	 cniBb2FlP6tQQuS0LcrKllDJxuyW5CNAPgr/CLxlTbdmY6I4ae9wdGFID7QpRSrFz0
	 te2uLavcznn6BYqKO8LVy1JsgbbqFKd/PaOkhMoFeGTRh4ewT8rb+ruV2iQp02a3zD
	 t/f19GgI78TzO2CFnGtLxeHACSysIPTYUdxRJr/u8xwzQohkXQzh1MWImyXBWo1fLB
	 fEXkQtaR0ScqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AE5FC47422
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170631709636.19620.15611507313438986982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c333be1449933bfa4b746d4d81fd432f8ea4a265d56b9c592d86b5de9d400f24
Date: Sat, 27 Jan 2024 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706317096
