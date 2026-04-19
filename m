Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB9E2638BC
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776632254; cv=none; b=suV4jVQnAlEvC0BoqFWcAl5e//rJhRywCxEDbF6HJCRx3fRLDaPoNI+kgmkmQKfZNREjHPgZzo2GtDeUcZE/SapYAXsCDOhOKPtsjFRB6mIYlrAlNlnbePvDlvHe95ivAJf6UWBcidr25pc8S8qGHgwosnhnrf7nFBYhFPdocU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776632254; c=relaxed/simple;
	bh=2sXp43Km83jUrti4ZQot5RskddIUdCx+7vJEhKYWCyw=;
	h=To:Subject:From:Message-Id:Date; b=SiVMGBONWqC1FdHGwjWDECti/mKs5rqgKnU4/NYsJXPMhAc7Cr1213o15mqTVZCN3SN1lO6liL7SKbdcGmubzKA/ZjZjODkVl9mlFwfmNMVtbtc6s8ISehyTiD3o7ltjXwX+cXafYzqD19wUyR0qtXK3p1DEwtdOYPqNuB9CvFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3hjhNuP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3hjhNuP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B866BC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776632253;
	bh=2sXp43Km83jUrti4ZQot5RskddIUdCx+7vJEhKYWCyw=;
	h=To:Subject:From:Date:From;
	b=c3hjhNuP/rZvvmgHQX24eOa/1aIe9RC9ENB/hI76Ewdr9wgbJy7BK72QwhkbJIntp
	 tCebfiXA17cHTmwP54F6UN6tJecBVFTN5YK64VIcVzgiSrU6WXbnDnHP1z4CatHXuO
	 XSGgslNiTtPE6BD5id3vtuQqrDpMaAOixyAo7jQi6Gwz/f2w4JOwlHjIAgqJfh4Nkg
	 9NKzEig0V9SZUNjKaO86oebA9K3qf+MSifwjkrRV3zKHOtamjX/88FSUmOmEb1PuSF
	 apj57Lboo49fX/9qdBGOVoFnJKWq8jbolBoi/jzqxA510ZmftdprpMDVrBpqJjuJgw
	 iq5JpBqC5FWWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA478EA71A1
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177663225368.2658.13724127416585619129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6e5ab0e27829b544bbb90b159df3f9b35093d34949c5d650673fae83d28db1
Date: Sun, 19 Apr 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776632253
