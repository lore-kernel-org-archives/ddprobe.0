Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA5755A109
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710224297; cv=none; b=mb146wdeKNSnK6QZsyHj/kP18NM+jfTDEV7TYwXZwNBC1BNFhP2VQkFezj8A1tHHyhxF9rUm7gg8HrJVEP42aHrN3qY2XFIWCTkpjP9EIi5vnG2RTM3ccYtDyN4LNGKjMIGm0tYi3eACq36t+VzDKzzzMAXWPY8jK9B3yGC+eYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710224297; c=relaxed/simple;
	bh=MjyjQbM6wW+QQHWIMz6jpVhTK1B2kPDAQxqT9rvRt64=;
	h=To:Subject:From:Message-Id:Date; b=T2Hh1dl9T411G+Hq2C3e9RbJPSioFPCi8udMrY8GwrBYCHcfwt4YijM2tHDEJ2dQbZ1N2pYOFPwtsqY5HwPj+mMmv2aYv5dPosaZEKIoIO7oEGVTvDV81aQHMD/DmPdgPKOzCI6PhwpvdtAf52S1MJjU6GCqtg2FBuDn9zqqb8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X0/HrJs/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X0/HrJs/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 749C6C433F1
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710224296;
	bh=MjyjQbM6wW+QQHWIMz6jpVhTK1B2kPDAQxqT9rvRt64=;
	h=To:Subject:From:Date:From;
	b=X0/HrJs/T47EHPqtUXFfYy52BnQxa3AigZQ4heUFJgEX97sd2BlY0cAPsjb4Y1KGn
	 /22lSJmmtUjudAqMsPJ355FEmg9AC6qHQ7AKYMWQuY5wNqwnI1bnOa/srKxN8kZt+N
	 MM7Mu6wtNTLPkvUrvFb0sEDFsIJTbp16dcft2Kmzb/lw8dW+YFGo2bbhg6Z0XnMvEO
	 wO+0Vn+iAOLmUOffQITdr0evsH/UwE7HstYsIFNDu6bvW3r/JbAmdUrDEF86aq6Ns/
	 TCS6D6MkVYfecsJep2Derz/nMJmVLj7LYdFgiCzLIFKywMZQBjmdr/gXY5+2F0jG+q
	 O+K+2abZA/ipw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BB80C54E58
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171022429636.24707.5504846668840901385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85fc39fd0668ff4fe522c4a8dbacb1345fc8c3834556bde8673449c2c02aaa9b
Date: Tue, 12 Mar 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710224296
