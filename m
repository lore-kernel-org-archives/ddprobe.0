Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364AB14884C
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754743794; cv=none; b=eWeZwN3Hr+qAsqrY7WFv8cGA40W4lZSc6NDgciMXQm+ueYO1aJa5Op4xS29Nplyty7jxGmGhmHNZ8BJ2NwY3zlCr4ldDeg9puB6poUqjJhjXSofN0xXwxQriYtBE1VSzGtC7eMO8mrAuz0wHnUIaP1Fvygn140gLVtQXhtV6f9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754743794; c=relaxed/simple;
	bh=lv1Q9+AntuVx7XLY0rZ2GlvIZa2XOKgEFPbTjvBXMFI=;
	h=To:Subject:From:Message-Id:Date; b=qOTXItBtghPW4m/v7oZJADe2G+deIBdYXgJZGjH940hmlM5mVnRbd9GEAMpsEwxS2p/4ni5Wj9V5J6pDZPUGiIHfaMblMJ4uPQKeXsDvSvk9sYAhXgR3r/lxOW7WxD4qSu7/xEtEVOFBLvzj5QxZVwcJwDEBSMzfIHuD+5OV828=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FowdtEWV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FowdtEWV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87C8C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754743793;
	bh=lv1Q9+AntuVx7XLY0rZ2GlvIZa2XOKgEFPbTjvBXMFI=;
	h=To:Subject:From:Date:From;
	b=FowdtEWVotVspR7rDzo2VNBdhqXhdLcrahmkgb5Y/UZuf3ozgGZ9B+mUKNac2zCHL
	 5Wt8FZkSfYUOiufd5x8fNdHOjlKITt88gHWwFV4XgVWriDi4hLGdMMM5BFs10yg16E
	 ScAgVKLtsjQcy2V1cwpLxMBBzY0P7PqrxfRUCbbas7p9Hp/R1YHyjmpAf4VOr68MJ7
	 mxl1F9cswNTww5e01V6doHh7MMQF0LlpYUOwTwDRFbXZDN75hkwwA3EI8r0t7bpit1
	 02oeRLyOZBBlg//E5/w7V4eTwxf+1YmD7L6UtG3Rtew4X117oMs9GbdybO66pGoDsu
	 cJA6Jw4kuXKww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F339C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175474379357.4451.17855752362682823441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a463852244f5c6f31d2d607e59332f0ecc16b82f8c864b9dbf6fa03a879b459
Date: Sat, 09 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754743793
