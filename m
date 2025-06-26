Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2072725B677
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750925396; cv=none; b=oPedtVYoLx2aL/CiEVBN+SnEVTf7O7pwnxc/TKvfgUHQS5rVEpe+UbPIaerZpbTEMroAH5pOoStg1Pfrjf09TjSwYLxM2BD8SfD8rNwlkzY6Q30/kW0kDsGgk0LW9V6cDmAt0yavT722qlBctaa8dumJBsWYBOjhbpQXD5jVEFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750925396; c=relaxed/simple;
	bh=ANd57D2ze+TEefFUF9KDVOCOVOl8iBn+V4KIDBtIkMA=;
	h=To:Subject:From:Message-Id:Date; b=cJDE5QNwGxuNo4zAGRLt1aePXYf2HttpsosbqQusdHzhYX/foe0zHIxRNsMZLcesPKQBOgRkykrubm3hI8ErokHRRxauNZTBluzR9AGrfWmRuSD8/DOTWpHZbmOhcvRzsqXzeQzz++9XGya5XoaqTy1bjPMsKcCYCghNsC4MC40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpB/V9DH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpB/V9DH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9150C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750925393;
	bh=ANd57D2ze+TEefFUF9KDVOCOVOl8iBn+V4KIDBtIkMA=;
	h=To:Subject:From:Date:From;
	b=hpB/V9DHxIFLWCHz4p9EHblPhHgqsmjtZvXnqcRXJ3N9Y7dzITxwVbBMyHDLfIr8V
	 3gWObNTvMR4hnCXvPDu4XPrR7Z84A7KLPrteeQdEEysnbYwzSp6AOE3Dl4HB7H27cf
	 2Bjm3ChqkpNT8rLFw5mFGNSBqrZvWnIg5VFuEc0fUlShPJ1TulQsD4xANsBp7/LTA4
	 ALcw7JZuzQ5UDt5FbbT383FZovg67y29Gj3J6/PTNKrrsWt/t8J+ds3Mv6n3UTRi02
	 l00fpcC3Nqbff4T+W+u9DohFR9OlJWF43A2Xuxbixf1rT8fZP6TQnk/ffvpiCA8uaE
	 35rvITcKdZHjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92296C77B7F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175092539358.7486.9692106562826022409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76cb480f3febc2179e0dc35d452a65a87920f12df8c37575a6a2751dd4814468
Date: Thu, 26 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750925393
