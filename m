Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEAA21ADB7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770258834; cv=none; b=iKIsNANYT2guG1d7rG9Enixm8G6JQl+HhXZ0LnqV7e1MnaTetX2ju5JYHB7SK8Q0ogiA3Gr2ikImmMNuTKfy+KVqr0LyART5ZCqYSqW9gXrnny5lMKyrn3Xg6adNsNByj0d29eLmzvidMAkn0NOsPi1iOkaXLB35D62Kb/vYeyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770258834; c=relaxed/simple;
	bh=ffsRvRUAhzteMsZHz3PprmNGvnMPsFBPIUJtGdT01iY=;
	h=To:Subject:From:Message-Id:Date; b=WOn+yWc8Nrs+aahyPgjqSjPOtz5NHcsVtizSsx0+QzfuiujN26q5CjQFRNTwMq/jmPjPsrNTAjWZ0gyaLBzAwabB9reDqirpEOE9++EcdMeslqhC4FngbyGV7O/sx7rD6tc4jhJDmU44HmH0EfG9gdP0h70k3Hs/N3DmPGAyyTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKJgURU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKJgURU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B325FC19422
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770258833;
	bh=ffsRvRUAhzteMsZHz3PprmNGvnMPsFBPIUJtGdT01iY=;
	h=To:Subject:From:Date:From;
	b=OKJgURU/nvqJ16j6qG00GQaIlrX23ye6VQCafm8MsBo6xO10LC9PQc3ZA/1S0EgVf
	 JTDzewTDo/1DajBOp6R91Jm8sH8THAgYBcK+0Vp0HmkJeV+cBhkKTjxytbQXADnaOp
	 thEGYJ3DYDsO51FWh+Gmol7dyqIJACq8oBdRYhALBZa60aK7VfnTjzjVShDN4Kinvv
	 uZG/Ly+NAQRhMGP1MgUjSu6oUp7rFhOpijAq+xKKGG1t1CjfE3JcMcvZyBfGpL3kq0
	 Mmciqm+Fjoej87XVfOGM/SGZMsAXJOHWO/o7H+tPLX/EnihORVGPRyWgOpNnjV5Wsg
	 3iWXypgDG5qVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F52EA7951
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177025883360.16056.9737033681993046105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec682313860b4590d46b7c7020b7ecf7997e54b6baa8cbe39a50f2a0519c5df
Date: Thu, 05 Feb 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770258833
