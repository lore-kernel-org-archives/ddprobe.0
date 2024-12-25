Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4369B146000
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735134354; cv=none; b=TX0p4yg7SKCCLumWyzrXjdRlUvAZeR30oRY5fCr3Q9U9mFHUgvC4TGLYu//C8DCCYGVFkvEdykDnIFiE+6lmk6HwcU6yZrP3eVVebIELs50e6YFE3DWTRRSK/StRPqJ7vYTdacpJbHsaODSwuIZEAO78nNtjh4o8Eb1RGcOZuZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735134354; c=relaxed/simple;
	bh=XTlgNpfPyCeO2rxdj+m+KElOdb0RSjvYCz/NPEqTG+I=;
	h=To:Subject:From:Message-Id:Date; b=SQ8P+R7HE/NY0enKURnoFa++2+d2zDs0d6UFhg9tAeaqEqdWm7PT6R1m/ge2xosX4UQSHjgvlNYmntvaqzeYie1Z4tCbkmjfUOZknCg69aOGu1gxgJs7vqzL8Wsj4D4coLURnCiaB8TxL8Pr3l+dB17IXiUzfEJAMHfrdiZghJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxxJccUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxxJccUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C24C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735134353;
	bh=XTlgNpfPyCeO2rxdj+m+KElOdb0RSjvYCz/NPEqTG+I=;
	h=To:Subject:From:Date:From;
	b=lxxJccUg7jprWz+t7C2nKfJfo78zZRVg13Geh4noHMlWK/seeRz1oSbTId22jwykV
	 XzLTZDXL6tM4ul6dqWBjF0+uNid4f94rEYOPlBsX8ClSOBJZirjyMjIZfEG0c4Jtil
	 VDlutrVbpd18PeoiIyHHoUSJUAJENOVpwidkDEFOrcn/x2Lzr9PjnTp9puGejezXJM
	 2XIsCT01gbCRco8ySHl4JosvoKDXm6+5BzqAhwBDDYzX5+gtlSfBueOyjHYyem2TeC
	 zmr5nK0+/aynqVKa0QpSXCH+e277x5z9lmqVTxaCmnr2ZS+1HhooKrzIu+Ru6zouUW
	 pAjpcvbw6m9Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D469E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173513435363.30062.7439584173946654991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69de333e5991c601db418b265a0d3bdd4c48587946cffe8858a711db712662ad
Date: Wed, 25 Dec 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735134353
