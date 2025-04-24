Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333C51FAA
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745497194; cv=none; b=FaMQAY2vhWEvr2lo2v98VBWAZUrEKJibEVQwy0bhIOtHeuE7d8eoAZVZSP5ajc/WHtzp53kZ26lqqh6hvsr++nao55k8lg08LI8P5cWuVc7kYFskDPE+awrYFQx9qoCj5l30KAFjR4RCk+DzMqwRmR6yGsxSTS5PHYazSVnWUJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745497194; c=relaxed/simple;
	bh=7UcpCBYlN6iZZ24ImEKB3JoaqORAlMMpzNbBCWWCbMg=;
	h=To:Subject:From:Message-Id:Date; b=LmSZT5cM5mmMHBW15wmlMRJpcX//w1J2TOXPTaW2U9P7WfibCkzPchDrfDugmTs/J+YkGxt3NWHv33CuF3sMYSkuTT8fTF1gdqg9MGyKXPY/296VNBvRzPp51nMEGsJS4z+29Frz5nQ7huFOKCD4m2v/hTnt89d/d0tDnbVohyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGd+ea4G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGd+ea4G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08E0C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745497193;
	bh=7UcpCBYlN6iZZ24ImEKB3JoaqORAlMMpzNbBCWWCbMg=;
	h=To:Subject:From:Date:From;
	b=iGd+ea4G+IL/jcCbD1Vi1IwgOVh9/oCcPEFa7CnFzrDc3QWdAnjptyBmGxzmGg9aw
	 JrEGHDEOgnGNP8IZpnNz/ZlXRb8eKbXhswNwuGDa2SRs7GxX7mFzCNdfOfcc8p6QCb
	 akOIJRtERbZirye815Y/Ky8Lwj1omD8EriwrYV/KrAsWExsK0tlhPjf2rwrv/xfAsx
	 F7/WmP2nDHtElL/0aWJvp76S8TRVY4ksQiODyHUhwo4GIz+gk10Oz4w5JHiFNkZw0C
	 HsqWffmOV8qO+C48S5dzEbxCsDedw22u5bFOhIfQ/o3DamKkupDqs4GvE/+8AflpjR
	 LCnPDPLpVE25g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECEFC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174549719357.29610.8262194480662989089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb866b6a7717eb612e8edd3eee508e460c3e9a9fd2fae82dfdaae4ba085f6370
Date: Thu, 24 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745497193
