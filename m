Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29A51C5D59
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768496033; cv=none; b=GNCeZucEfCAv15qYBdMRWlkVSvyJyA8hNujoZbCaIsAGHBUMWyK4nf0gdsDpK5bAIs+1jpN8a7Y9DayzDUmsUJQdD1X8un9jWKRt45aYuZ54yWkmSpC7XVt3fS2E6olJtYUwVfnmiXDFWAZ1Jz5x15shD2ino2/APyTEfjvS7O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768496033; c=relaxed/simple;
	bh=iM+a3GA+BIY8EdYjpMf3DHFXpXDgF7/g58cUJ/NU+Dw=;
	h=To:Subject:From:Message-Id:Date; b=kaFKmSsze3NcBNcFF7cbHQhxlqhWqZnKEuIBr1r+tgW82psi7HevULGhDrzqK7A0Sift1Q6X3qHPbNJHKATd9xj+mC9zqxb/KtQ42beYvL80YWUhzizrUuRcEJObIT+7+wN+NEx8RQCBSAdjqMIkg2BYQASNw1v9HGMfmMC2K4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M95YroPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M95YroPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDEEC19421
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768496033;
	bh=iM+a3GA+BIY8EdYjpMf3DHFXpXDgF7/g58cUJ/NU+Dw=;
	h=To:Subject:From:Date:From;
	b=M95YroPOD+t2SpcE3h5cyxTQ0HAgwfjiJvzxj8786t/VuKoBSmGObCif6DbNOXdDb
	 GJ1gcBWDOGVAXx4Dz3z/zqdgRZhB+bUKu8dngDIiXjkpRGW53DkQ7wY7v/0lbM3VDI
	 TECFbdn0SyNKJw7J67WPRkswCtKR5S2szusRexRfIs2RkR3ZfUHEzydqQPgANIaxIy
	 HB9ieksDQMS7QVhuAMMLcUkEIuz5ZzZBM74fdhITwpNng+fHsbRRCWMq8VXIkho3GF
	 2XTta6FsJEZ39P8f9LnX3dPYEb1Via4Ilh6+w7diqSlgR3bBKpEYHH0i2EAOcnf2KA
	 MzKHbKPEO8b/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90210D46600
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176849603358.24366.16373827459580803713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c84f90dd1d5dfc0174feafab735ec1c3a520fbb91da6be0d494088bbc4b53d4
Date: Thu, 15 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768496033
