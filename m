Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B92199FA2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746893994; cv=none; b=SIm9yslD68RV6QhbYpPA6ZUmpFiKuWjFmf4PuaHNG+J7/fGzipg+mBS7a6IRw+aFRoHsEhQAQeb/2nHitQU1GIIl/gMzoPWF7SIBLS73bhwR093FD7wI8OqyP78o+79wvtvPWRGJJ9hyRE2TPluudZ04mF2f0VqlFpSQ0nyOQvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746893994; c=relaxed/simple;
	bh=z8RPoBtdwbtSl+/YHDjMkLVz1UGbnE/1iT2cAZdiP68=;
	h=To:Subject:From:Message-Id:Date; b=Lzpwb3rQT8/w0fiBnyhxHXFM/m2EZRWzJi6nkVS1J/pwuszgou7OblujKfyFZOr1m4Q9v1gpYwC8R4+GsOhM7By+u1X6XwaQ95E0JO1J4FwhgGn1luGUj6lDG0RLIYBff6aSWFFjQo3ZjvpWU2UV+FBt2y1VWOXwZmw/kl40vdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVeu9Jkg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVeu9Jkg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7496C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746893993;
	bh=z8RPoBtdwbtSl+/YHDjMkLVz1UGbnE/1iT2cAZdiP68=;
	h=To:Subject:From:Date:From;
	b=LVeu9Jkg03QJzrwc6MMcV5YUoG5ROW8mFkJnis3OBrfhdT4nggCPGX0baE+8wzG4h
	 v1t3ma6LAB5P78F7RNujUDZxvRFszs88T1ptTRMPm0G1w1t+6nf6uSaet0jch5MaXx
	 hbE9OzhmloxUTP14q5vnTozdkWST5SuVIg2JnJLynny2uEhi+NSrB2O5/aqCGE9s96
	 /N9MvSKGy44Eregqoe/DhOn5M5sZaQ5Xv+LlU/ATZo19QZ+BtgFi+5kD/YgYXFIEvd
	 8kiVpOs9KSXcI3SUOe4qfQgF3ECJGMjDxbuqgo9K+Aff9oEIv4C1xYF5ZHeP+2K+en
	 1pIQIiSdKARWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92132C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174689399357.32381.14534921612529118511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49ac1c95438a730e3342fcd8be0daab290100e0dc70e364f511028e523afacd
Date: Sat, 10 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746893993
