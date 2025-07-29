Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF4E287253
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753787394; cv=none; b=dROZ+19f94vWhS115tv9zeTQHzQxgl6KQe4SPjxP2XJnqi7lcmBYCW1Pmj3x4zSqM98FS2UtYFl90C1dXV2BxR95CYfhhqeFwg+Uyw4JE4q9rRQ0RrF6MRTQ8/cBACZri+sMeOU9dzoHI2znx5Bt2qDkSf5WR6Q7rVU3r9qVNIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753787394; c=relaxed/simple;
	bh=X2lGOpncEfLtUk3bWeOWd4GnYcUa2VhP4/wfP8cJweg=;
	h=To:Subject:From:Message-Id:Date; b=fzp3c3Uz3ShUNzwkizbqHnMuOr3Jw75Ya9ke1fpi3Ei1gKby+uWharYfIj0v78zEMjrufoovtvIjjn2pQEaSv2pUNdZyHMMcm7qRCv/KkYgg6uH8U7Lwtmyxs6k9O74WYE+xHQlU/loBBMMI7WKl8EeoCveys9ujO6eqPqoeRKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGtL2eek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGtL2eek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6D3C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753787393;
	bh=X2lGOpncEfLtUk3bWeOWd4GnYcUa2VhP4/wfP8cJweg=;
	h=To:Subject:From:Date:From;
	b=qGtL2eekI0O1sfx18hE9y39+YsYsDgA3CPID2NXCJbc2hD8Cmow0xGfp1SUy9cgUt
	 pXfnMoUS0G7DhMd2VSU6g2GvInFMYZZvAjE5tZyP7wH6tyUpor/wOEA+KR0/2hhvKP
	 hkdpxIVk8UpsYUGViQvVwqcW91IeUhI52goU9A+qGUGbONxTpXdO1DWFsB6MTzLUsQ
	 1bbWVimygUTmE0nIjOWnBh0eN/YzFGH8B0Szzh2WQORDYnUt3BUdexwmM/n04r7Gdj
	 6iSZ6+HqARxc+gxEovcjZ5R2b1p8cHnfE70STt7VQFAolcuSxT5N9VfF5E93VFVlbv
	 I/Derw5u/+qyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECBEC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175378739357.26803.18045976776002939141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91fe4afc0f31598e15620f004ca5b609a1aa3be0e9c5d6ee06ba1f6723e155ec
Date: Tue, 29 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753787393
