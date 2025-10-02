Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2424F255F3F
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759433994; cv=none; b=jzEyPjzBwFkD6duX2GzDgM3jUvWl8sJQZCfYVcm+QBDJ3vt2P6nB1Xv6R/0myoPMaZlk5iw5SxFcD17xshuCI286BXzMhghJzkYG1dMFmP24FOMCgYzZ+ehtrmPD9O0lDIi4d1OuoNWgB/ZiZPL4eWuH+sLyOOtt+fjskEaBn9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759433994; c=relaxed/simple;
	bh=7wze8TrXLVC00PfYzTG4V/eHoQCpPiFfGY1hSPszxO0=;
	h=To:Subject:From:Message-Id:Date; b=CY/k7EmYHZ5hVjS42SLP2Xx33SeAPOwDW9m0AJdov19CxlUiNs96u7ilI8icNUU1Dcyojn1V6NgH+JVBfvQfXqQSvCtNtgvFEpoNrW0AjKmdGZS+x0AUcE9Nn4DGENcAmDDyr/EFf4dWV0PTpj7R97GTJYSuMODgQzEw0KRXl+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iToQ8voZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iToQ8voZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37F2C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759433993;
	bh=7wze8TrXLVC00PfYzTG4V/eHoQCpPiFfGY1hSPszxO0=;
	h=To:Subject:From:Date:From;
	b=iToQ8voZgp0tv06WxEtrzcSWuRT+1DeL4KZw3K6gJnUx3yhlWAf/6swYft0v6zox8
	 E3Y450hjR+GHOveJpAABRjGZR5h1zFZpuZ+Hf3BzUFD/7sHbGmuaTfR8vs65DzRjWM
	 c4KC3mTodjUmq9I5Gz7wC5rHjcmz/AS/ue2riYK7HUsvwPQ2kAEwjRHfXx4Q78J3rU
	 /w/uj3IRlW4U6dTKBOdKgLWgUtCVbbHUdqBpmihUkpnuWHcR3Yn5OxoWQTX6dMMY2b
	 WK9GIyMHasEaSOq4Cgf8SAr7j+Zy7s3MEth+SR7A5hJbUjtctcIH6siwcRbVrvBNms
	 4TIy3MT/hCycg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907B8CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175943399358.24133.3957029326726352608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0916cc752f4f8b975a19815d21afa65967b4d82976b90b3c99ace4790f0ad390
Date: Thu, 02 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759433993
