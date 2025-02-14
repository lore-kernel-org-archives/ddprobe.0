Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF6F23A992
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 13:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739538534; cv=none; b=FtZA4lv/C9RoGROIYEJBtKCxbcJ6ScvyM5njAlPgV2wHED5Le9eExxFVr8j81AQJa4WY/AyvTQmUZgc5LisDPNhpA5dEKQPs05AApAK/jPfK6HfWLfI0yEGR3MRP2PyNwS7V59D7BClIsukNtcXuM1E3cifS554ghXXITm80VGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739538534; c=relaxed/simple;
	bh=p5Cf5xClqbHcWV7HypDp9nhE9CAmT0tiWB9ZCg+t/C8=;
	h=To:Subject:From:Message-Id:Date; b=BFyOONB/ilMaIUhDIz0wgb5z1MHlu/YMuxeeh83ESBcDN+16pqpxrb2kzMyWtHLC7MiONiqgtkXGLfUwKGIPiYtOeeU6CCqhkYwe2GOmXbacSZr+by7FD5Wt5CzlZjsJyx5/YRv/0A6kHuOd5tqb4dNVXwWxFcL2dgI3eSbyqJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BoC/ir0z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BoC/ir0z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0940C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 13:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739538533;
	bh=p5Cf5xClqbHcWV7HypDp9nhE9CAmT0tiWB9ZCg+t/C8=;
	h=To:Subject:From:Date:From;
	b=BoC/ir0znoKCiydCDgo0oa59gMIeLOLZMIcuH+oQpP/coolJ5zjHrlToy4gHXOPIz
	 XWZex+dRAfsk3FMrLslcSorlhOcC0CbLN4buGbvtKO6JWTO18xHj6FOmjZn0ouUnOd
	 lCKq9IEJT4n95v38OqoUOaO3rwDb3l+iepahlxS/SmOE5uq053Sn2Ah8drWaCDJY1f
	 df7hNIVm0Bjb0pX4iotwGBABncpwPZARxxfuq8h4MGy3z0/ro+ntkR+EX7zEGTzWeb
	 Xn9PGvzXYC5xIav4dpj+9mNxSqXeg0WIQK8M6fyAtq3YNGkcFNk9iSLa6PK322C9DG
	 YkT3Xd6+dw3qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E97FC021A4
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 13:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173953853363.2241.15814958581370115176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25666223db3e3d10b56217df9353c3a0fe92d80f3061780a9f1302ef237149a4
Date: Fri, 14 Feb 2025 13:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739538533
