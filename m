Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D114800
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727555754; cv=none; b=L7keZsRkRxEeYHKQx67tJq6IsCwVI9lRzxHw9+q0y8LF5YvbxKG0wZjrrCst9J8dNWVGqyxxQIQ0x1rI6leC8eJNPGjCIt+7EWKgcdvWMa4ffyC+lXSjdE3VTVWNIQgy3HqyhjWEA/YidwwrRfwI6yB/Ft3oG08PfIBFsI14Mds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727555754; c=relaxed/simple;
	bh=JZkkNI7uuQjXLF0qkaNFu8FX12Cpp0w3vlnmZyDYlac=;
	h=To:Subject:From:Message-Id:Date; b=bdp6DAP3jPsXxpwj48l09nvWhqFuCGcq75eLWA72AiejDG4ge1y07rEBkeBXIywK8gol6AJ72bemm4L6BaG6b/cPxyT+iSBp1UMuAO/3Hmu2URCt5tzCtQRO+fVjcC3QcaPZhunsVub14YxybiAizFQM4qTLQduVf2SGZ1dOmvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3ojOS06; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3ojOS06"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBC4C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727555753;
	bh=JZkkNI7uuQjXLF0qkaNFu8FX12Cpp0w3vlnmZyDYlac=;
	h=To:Subject:From:Date:From;
	b=t3ojOS06xZ3d2i/vKGDvWM0Z8K6v6Zsw3l+axyuFT/NDtKqUFsL7+3I6jJpF+wAjm
	 xxC3q0J5OoyrKog7wZ0yIbySD9q+NDrCH4av0k/dVaaXVLUyQ24DrUlmHj0TYN06WI
	 TwAqVAArB5F1rGV0VZlhr4XeO/fIv3rc6stn4FfDWZzrcsBkHieSs8GF0iikevuy3e
	 kduDmVAK4mSTz+EOmHXCFej7s/Sqi/+5pXDV3/D/xqxUrtTzUWpNs3IW0AYJUYEO/R
	 czjUF0WpCuogT0Wvv4Hyer2OwCamFoCy+1CH5RGafmQAAunWxywLqYBorlLNjjrQpr
	 ySvg0OzhZ/wsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97971CF6496
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172755575361.10956.2446463042103641642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc6282d6452fc01d700f2d770f843333fec70a8af6d179901a7725c9b2f877a2
Date: Sat, 28 Sep 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727555753
