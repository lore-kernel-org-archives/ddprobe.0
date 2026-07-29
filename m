Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDBB3B42E3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785353434; cv=none; b=Fp6w50bzTBPX1LuI5bbcFdLoM1L9GsB7UsjDuPdPsrx8TH5xk8GJw72+GJvoinEtvaCVyLpEiyESSPEbWMdqPncD177arEBZueYCspEm+cC5ivUyJcIaV3wp/rcffoCkXEhvIxfnygxYIvimGJEMrbCg0xKJkohs40HPeQ2AJls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785353434; c=relaxed/simple;
	bh=SVYsy8FeL8m+j3xrRWTfD4mTQRGGwvpAj2UdTO7KzxQ=;
	h=To:Subject:From:Message-Id:Date; b=iR3hBIAhwTAQoEjTyydJvf+hkti/LWe5psMJeAZZ03W4TQyTVZHQirlNSeku/2N3RG8skuu3HYZS7yboErni/FWGu1kDSQt248LV4Qw3lZWEU2wWbGegMFFTSCPxUXOcj6uArmyRXxT+vWvNRxZjjtIBI4B5Hfb6XosZ3eU/1bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jn4eyO+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jn4eyO+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B17C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785353433;
	bh=SVYsy8FeL8m+j3xrRWTfD4mTQRGGwvpAj2UdTO7KzxQ=;
	h=To:Subject:From:Date:From;
	b=Jn4eyO+3Q9S9TDnuLJ9SzZ2Rj9yKzI3uDOZkpMnCV4lAj0NhjlyqdVmq8/vKt/50D
	 LCQv1ikuyj3iDJyfrVONQ2zRPq+HbKSC2IU0qE5+dg9ddSPSxYLh1gjUrqru85DzhG
	 1JCoKBTKi3onu4wpFwa4TqiOoXkwSwaXbV/BmIkk+cjPp2NnABHy4Iuw9XMQ9yuZKZ
	 YadtH33ofafpuEI0faHsDLvBMc1Yr4RXijtMaKLjWssyHGEUHpdHdTBikpZBYrzYT+
	 nx5fSkpwuNIukyfIP4mH/N115c7Wze/62dxANHVa65dRhxOFtlan0vpqVWMFp+WEVE
	 bNPfw2FnYv3AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4434C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178535343373.11608.12925325751249360488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e512f6c5567ccc5d90bbb63724b2cf15afb6cca5fe6b2664bf54bf78a031e466
Date: Wed, 29 Jul 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785353433
