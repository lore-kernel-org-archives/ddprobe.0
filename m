Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDBF13D518
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727945154; cv=none; b=n+hRarC8sOntGak/vrnIePEaII1DoSD4pxQxs8lpbGJpeu577c/DKy3EJDTKLuJbGW1gyf1dgIbKGSvqZybxZlXDAtE3mM+Ny+DzS5b98gDJh2zZkVESloWdpaoo1Cc3Vt0NGEYmz+CmFjUrVbdiM5/1FOfJQUfPKtzOueYrOHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727945154; c=relaxed/simple;
	bh=jHeIzFrQ12B8JyuJnvfNyciY1zyUpreG1vegFP1coKI=;
	h=To:Subject:From:Message-Id:Date; b=nfsFNYpw5qP/Bix02jCKng+xVUecrVXDpVfep4TVk2/oI4uLKYLkBw9LHO0Absgmk1CgTSMhdsRUwlD/01TC14IFnppOPZrlyuclaVQ+6a1L+P3xOMGcP0IiG9FiBo6IOM4EqliOCqrW2OTIpEFChChoofjz/tesS2X+kpxFnC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvbvcfjL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvbvcfjL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7D6C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727945153;
	bh=jHeIzFrQ12B8JyuJnvfNyciY1zyUpreG1vegFP1coKI=;
	h=To:Subject:From:Date:From;
	b=LvbvcfjLE17juQQGHaQVVdOZLNeIoQoMUbAUVUXYFlYxBnk7RI5TbqLiiF41+nbmk
	 bilvhnNQ6Auim2Zi2491r2XCX08dpS5rwWUuw07BWjXEabzfI+ug2dMOlPLku+1SVj
	 9OQYgEbavoJFaDQyVuuTJ8LJZ8eUBy/6tWgMV75s5esb1lSDMgW7tnYduias/ih4nq
	 1WgsxiLf3OF2U9mke2wR65ZmXQX7K93a206uekUCCXaQ212n8LxRaoIlTrykvILwtQ
	 Yp63AGcU3cKIHk4kJNykyA0k8HJmi7WrZIo1wePImT/wbWIEhS1Kr+fEQcVhSN8gfk
	 0nZ8+/riq91qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910F1CF856E
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172794515358.23656.12005721267685408436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 099ab06298d9c21dacc84fd8160b2c13babb67f08f4e269eecb38fd26b88f216
Date: Thu, 03 Oct 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727945153
