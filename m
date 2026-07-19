Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520193AEF57
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 18:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784484514; cv=none; b=iUrTOFsDHskb/DSRZUDqHUziFdxCeuLYvshN+cltnBaw5XzTeu47L6EqFrjLfa2TyT+kKSoMjZa4UMQin0fqiAjNRD/Ft3yh4kCPiiK/XbGnM4qR+fEmGwRXmqwExKOoNaFptIOsfjTHWpGADDp4H+0iNqb9hHYmRrB7ZCQ99VA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784484514; c=relaxed/simple;
	bh=zPE2DUxOe+b3Jb1W4NFkeS3B0aR1jcSENbJ9p66608s=;
	h=To:Subject:From:Message-Id:Date; b=u7rkI8fOTZTyj6bD/1Aig1Wc53gr3Q3oM9GbOM63723p80Dt/by+JD4knpnVWO00PtjaaTtb3lgFbwY2zNns9rAprTVKvisF7t2LufNWejAImHFUXBPLA4FG8Gt0O/iEgpvLoVVePsI9GVN1ioIR+oYCzaXDCtxkWjT9yf/dQgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCB//vn4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCB//vn4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F7FC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784484513;
	bh=zPE2DUxOe+b3Jb1W4NFkeS3B0aR1jcSENbJ9p66608s=;
	h=To:Subject:From:Date:From;
	b=GCB//vn4TmiXkOkrHaiqti/kNA835h6hH1jfdvXjL01yVN0IfiEDmVk9rpCUXzLO1
	 OWFKKMJq4B+MpZgnH0PhToznvinrL1Fc7OS1tz5k05bdP42qp/yfoTuKxN19rklyJV
	 OdDdHbaeU1/FH9B81KM0K/9kXmerjx0tiAd+Bu34qAEByWCDtth/rmGgweLaws9/tH
	 UTpoCkk19Phuri7duwwBqqTxW/uHRwui8tLCueRHFlhc+sJMBkjIERkYomPrRIntGI
	 9M6IoVVIVcj0hhPJwvyW/DIb2hjQKZsOQIkMszk4x5ogyC2bsMVQQLpATRnw0ImuTG
	 2gWRMuDtxNbKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDC1C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178448451368.10460.5309427818699174429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06d49375b9a181fcca277508776e3e7ad8297b4754fbd717c7ebb2a2658724c6
Date: Sun, 19 Jul 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784484513
