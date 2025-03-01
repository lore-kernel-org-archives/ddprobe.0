Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69EA4192B82
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 03:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740801534; cv=none; b=rXXl2bLOMuQHAqa/Dm68JHUrx88RSshH7Xj00hXikJ1pcICrDU2C786zL9lBkJ5uufAYBWXbeQ+3iJv9mIAKMe3RGokisMiUj2p/abnu/PHZOMtS7G/zF+PFwUKGiv+jBnpbFL/9HGkd6nhHjIL3amLnppH5+3M5xw0xOfw4xOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740801534; c=relaxed/simple;
	bh=I2YExVgRUTPGjrx0jTEuogw/tJDLkY08wbZbkWzVBnQ=;
	h=To:Subject:From:Message-Id:Date; b=EhKJzaan8bYw7EAxDCjOQ64xdV7U8E95EsDfv7YMSKCDNZP+sAOa9sTfqP4Jjcvge0CPcpyN9w3ZTqtdyLLY85W4U2M1ynKTI1qvCFTYQyjon29h9UEm1xzHqZJKoOou3YAHAhFCD0ZDPg1wsq5yQTzv7x1qmOuk14iGGtYtZlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKuP/Gg5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKuP/Gg5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED8BC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 03:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740801533;
	bh=I2YExVgRUTPGjrx0jTEuogw/tJDLkY08wbZbkWzVBnQ=;
	h=To:Subject:From:Date:From;
	b=lKuP/Gg5VUQC9nrFRABWHizZiBIrCRBLuChKdjX3kDdhnW8mm/k4IZQR+/9NCM3U0
	 COESrhizgjHPu6zbvPub0RV8iUXKS3FA6e6auo67mjkmGW7I7DeoTna6vsZubD9ypn
	 XVZozLnY8QEAzTvloMJz62oBLIgGIyijNxv3n7PYYzXUmwgIRsOrXAL3y5G3lSLFxh
	 Zo+MnByob+fQQ5Tc4dfrLMIv8E/YPbdeyHSnSh+CmBRZkizloCUQKgN3v7uzwZZvbw
	 Nd8CS7WGGYKf37MYjDonq+sQbKTH8tZpS9A3+rV2zrTla0so3m6A5Hm5vP1Z3baj2i
	 kZEtyBo6g7hrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A2AC021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 03:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174080153358.18178.5881695454673298765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21eab1ef317d0000c65a5d79a849388d1c8ca4a6ebc8887dc8c29fd450d3e0cf
Date: Sat, 01 Mar 2025 03:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740801533
