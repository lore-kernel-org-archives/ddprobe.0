Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4581B1EF0B9
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743788394; cv=none; b=fRVxYK3tCgg+nnLu8jdW8rusE35+b4uYO2CO/eoI9TuxrXQLL+383hQ1bA2xjcgi1tpjS4k9+ZeqjP4dAHQnWnY8rXooTvamyv+WKlqu/Sv3TZ0fFAjk1hGqnjew3i8nXtgRTyBp8dSuE1pBwVbSU2Og216koJHnLr5NkfYi68g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743788394; c=relaxed/simple;
	bh=wNCxcBCigQeJX8lHtlzaZMh7fjaGwqa0r/0hlN4a+Wo=;
	h=To:Subject:From:Message-Id:Date; b=Pjtk8ErrWeGvhrs1Q9vewravOWPBhITxlqERe8CWWBIZZ0fYpbBXu//Ni//CI4eaqdFElRe0uW6NN19ki7jriex3tCummt86/7HdErtRpRHLTfnZZpW4iYoQru4ry5X8g+jbvMeeWQlM/wRDX1VatHxjtZ0b1Xcg7zlkik/z1Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2/53vpv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2/53vpv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2B5C4CEEA
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743788393;
	bh=wNCxcBCigQeJX8lHtlzaZMh7fjaGwqa0r/0hlN4a+Wo=;
	h=To:Subject:From:Date:From;
	b=f2/53vpvENSPGLBLcug8ODVZQtzdUZbYDV+GrMlaPQjuxv0O9kDHm84k/NUBOGNun
	 P4d5MKru2PjwjquQxTBFb5HAZxhYGESBhTxB0RbWdNA4aaUDx235WGMo490By97zYx
	 DVpcXwOxAQdMxxV4eVuF/z+GfAOQ1IIGM+wKBPO99wYe7+T+DAr4LbT+ziH7k/caYd
	 TUZcQfvfziOLIsRhPy1iGpxMI3riuKKREQX2YOBmOqizvA8s5khPBlkKA+Rbl74d4G
	 BO3qvpPprd19AxEaDmQzGXPdXroyDEslTVArjls3JwTISfRkrMHDx8bICwJjPOVnD6
	 eMHSFNMqk/sVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D3BC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174378839359.4305.16356590349220567889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09fe3ea3d43db220185b5da9a21cc299ab92e522088de9a4da964c9d611178ed
Date: Fri, 04 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743788393
