Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 674518C1F
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 22:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781908594; cv=none; b=CkMlgR7GP54joflnZLI+O+0WzRj/mzXG83lY1tkBifN3V0fLF8pPQBmx/Pkw3TiLxvpNRIUwe/YoHP4cj7wUhzPkc3RosGCIGKRUaZ3fmeDIisWE4h/DzR1rLp/+VxoyX6jCWWHzg+k8WcNgbVeh1UJtIjuyTOWu3JASM/BN0ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781908594; c=relaxed/simple;
	bh=154+A0jtCMF/uOFsgcFTEiJeXY6GsSz/MuTLZt4TrOI=;
	h=To:Subject:From:Message-Id:Date; b=C3nT+hSE3neWIg0iOz5qqXJktG22ZIBKGkcVnvJg0wonDc+OYbt8LeOngA0Psxk+Dm02wRlA8yJPcCLCg1wdRdN2VJuCYX40r7wcefHISCjqKrdUWPCVwE9a/uxYdKyDNKe2MLnxM6cvaE9QYs2x+A3Rc1sc2aVE8q/Ma2Lbgc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmwjPkcJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmwjPkcJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4E6C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 22:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781908593;
	bh=154+A0jtCMF/uOFsgcFTEiJeXY6GsSz/MuTLZt4TrOI=;
	h=To:Subject:From:Date:From;
	b=AmwjPkcJ9djysOtLHBv8+7V/OAJvW1K5/Dd/HWWwNgPBHYYnvl58vjhB3gaWWe24y
	 0c7L229PRlNNJDpnSNvdpoxHiUW2lR5ae3qjm+lIbqFNG/WKkjGQcExypX3inA0J7N
	 NFBTMfunlBOz2HhStTLbz2nshQIZ6TKFH99HAhVM3K2fKFejS5C+TTUjn9ss2soS9M
	 2idVC0ECEiSrQIXK5rHnmo25G4i5mRqNmkJoSrvWeUrRFk6+McBWBPmk8bRO43ltWX
	 zHCBNwAjaWFyHO7q3JY20pNYChpY/nuk3zkCP30qQBBrDj25gNnU+RiLKXbtlL6+nf
	 l76vFXEoDxpJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC63ACD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 22:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178190859368.3798.15907650479180656883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06aa3bfe9d339b2391a3fccb550588134deb370ee8af30d200e600e512199f33
Date: Fri, 19 Jun 2026 22:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781908593
