Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2839B155A5D
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728945954; cv=none; b=RshxkCO4jPP7VsBwxBQyOiPMQZRpP47Unabe5MSv6NBit8sx8hj0bSbB7wglAJojNYPTb4oYhnLfvhuGZisx6nEFKfO67GPEJyhDbzpYiijzqhlCTUSSfVxE7idgtBb1X/y7KiPeEpubugvZI5r+1ABWBeiuNmQLNcSJv+uhRN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728945954; c=relaxed/simple;
	bh=nxQBsprAyj0enoIAR/HXcFiB9LwiiPnT8bwbGs+ixfw=;
	h=To:Subject:From:Message-Id:Date; b=sw6hAN17e14/wViUI1Zm96Ixq2mF7Chj08zrRSjnzaCSBhpJoR3MVbuTXx9QQ2NUujlP8ZK9VVIJMWvFzQt9ipoAnnpDVzBQz4Ofj0xCsSsVnTGjlvwPoNx5GzN/BdAPHc4Q9h2I10ax4QdTEz8yd26iHiYsU3pne8S8LhLNu68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZMUxIeW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZMUxIeW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2196C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728945953;
	bh=nxQBsprAyj0enoIAR/HXcFiB9LwiiPnT8bwbGs+ixfw=;
	h=To:Subject:From:Date:From;
	b=VZMUxIeWAoH4nmnHKOtPzLrx1AfjGYdwcKHX/nYDjpqt9XFPQPtw0pw/+egukj2Sd
	 PxEwnTsdHGg2snZHtJMjvnGgpay033FTJ4vTugcJHdKeLFTYGUaTcCWOHNTSSxI8y9
	 z4zvo521k34ghu92NpOP7CgLGSu3YzB1s72nrX+KzoE03cGJSsyfxQKlkLFqm+ELoE
	 e8jzU249PwrvB21WB0uJH3tVbgn2bxJ0vCZ8PPt1eAW55m/MO0uoKnTwGbJ0NJni+1
	 TzjxheXC6epcY/PV6aT1+rTRX5C0LK8uVL/8WqmBtUlsU0CIdJAp6eGozXNMykwYSp
	 kDeOqBCjJ0unw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F409D18158
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172894595363.23834.15112700772348730964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ac89becc644ec912c08eaa8b7d3a90e9b4307bc664dc8adc6d0c8c32bdecce7
Date: Mon, 14 Oct 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728945953
