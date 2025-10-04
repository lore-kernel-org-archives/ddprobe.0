Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF731553AA
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759577394; cv=none; b=UxgQ/+ydR2QEKZPYe45B74rUzHUyrcH87eR4RdmFFvivSeim39Zq5rJESUhscH/hgxRMvvePemq4NyQ+FVjhOcMmFFD+0is+copZuXKRBXtMtheRfev+rGCp60lHFUa7M1T6w36oejq/WMPg3lR9fMNf5C0VeflE0MbhyIdncQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759577394; c=relaxed/simple;
	bh=hReJMpEeVPtTkbtQhWtTefH/ONeztWxScU4sByQYe+8=;
	h=To:Subject:From:Message-Id:Date; b=jwfMuvIs8hQJ9aGbOn5tO5oJWgDWqk6vO95n6hRxQV06j7PbiVVmSoVC4YIptMB5UW7hBwjrrGtydDiEO5xkbNZNFoXYycTTSiTM3wceY07BcXi6BHQcigKEjUA+1ebzEmjfOjUPhzldtO7zax154VMTw/3rKnvDVYlAqPuHtk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmEOe6BX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmEOe6BX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D9EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759577393;
	bh=hReJMpEeVPtTkbtQhWtTefH/ONeztWxScU4sByQYe+8=;
	h=To:Subject:From:Date:From;
	b=kmEOe6BXLM9URoFCyHfmQxOGaOKl4TKfC5jDhFJehIUTWUlaZD0A4kgKamsz6dH0i
	 8TbfL+af1KnT/XXTJi/y9IMtbl8099WK8BH9tN7desQIimwpcqcB8iQ6YIo9v8fOZv
	 hLF9yI2hum1HFaot5HrYZmCIIgnIkYW/F1EwchyakdeQBVfY2uw2bkg2ioM+DH6Jfl
	 j0320h2xZJNPRojzgxN7G5qt47NFbD3uApq+GkAVexzjR4E70F0Q6ry3xa9PDMrSq5
	 lNxsrVpUqnE9lpIIPqeqRP2Kq4XlC5wZgL//f5ICd7zMTpJ7vE37zND0fx3S0w5JLT
	 j7nL5Epk6GOow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BF1CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175957739358.29286.2336729464677271227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 770c1f5a2b832e13aa1352408aa2c1d09847bb92a09d4ba52bbc2614bf32fc48
Date: Sat, 04 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759577393
