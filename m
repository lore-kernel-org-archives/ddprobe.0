Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452973264C3
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786660234; cv=none; b=ng50lWpyZE/cFCSSS0DG60dG0Z/Gghp/1uGJoTUToulIsTxRQ2Ce19Xrf0oEIagXGbCVfsia9hsDBh4HqcHfBuXu8b2Y7ylHhnxrTFeFbpWrMW5jGBpAKsUwOag3IlfgxQpoVVwNmeVkCTP4vwbT9Ltl/XYhLqgF7UdIRxmpKRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786660234; c=relaxed/simple;
	bh=eXO1R1Y5CKuGd26FdaR/DFnuGc9p3ffyCnVd+dE6O9M=;
	h=To:Subject:From:Message-Id:Date; b=c4kz5C85u/Pb9XJ+8GYqDSv7nYeRlP8WtpKwVEQh9UXmuMJXEmpdySKWK5cfbQWwYDxmJd0JEwvX3pleLk0OFkbwrV/cc/GyVSFOBY7iBZbgGi5YE5X0KJVJhInNCO48DjQt7oyd0Th5qzX/RczAC25xzPdLL9Vztpmjdijfc9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNUYi5JB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNUYi5JB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45D4C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786660233;
	bh=eXO1R1Y5CKuGd26FdaR/DFnuGc9p3ffyCnVd+dE6O9M=;
	h=To:Subject:From:Date:From;
	b=oNUYi5JBDcMNwFtBBDh0vN8UB5L65PCtztbG8wawLoj8DhS+TqF41vSCt7EnmKiv9
	 WQiVxj9O7a73PtA8/DDi8kxaB97wzzLCkZ4CmyPkWWG465lCosPIUNHr3T8+l8qqRc
	 4bio4jGn8ilBCSb9yheFAn34TK4jjMtk24ERT9O+v8tTMg7q+/sgPiV4x9aosyabch
	 3CbXZRaKWor0ZlrFqT5vLjCr49AUuwbgTTAvnp1sZAth9AtPjs1+U5K33DEr5+xvC/
	 TzSK2dofhmjiguxcCx/GLNLpsRCLWQYq2asW+6OcEdIEi7CT7YLcsH5ixAmudkCkmM
	 US0f3CvPgxPYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4D2C5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178666023368.16461.9377314545558802878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 643001502b749163b4f0785af10aea9fae86e5cc6203458c983a973d58094df5
Date: Thu, 13 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786660233
