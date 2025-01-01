Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449ADDDBE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735751754; cv=none; b=mBfztKUKRt8wZTY/tmYKGfMr283ZaoIbJzwBuTXQqHgAnCGEz0d+LYPnrPRT+EZXTEZgo0RGnMa5qeV094btTYlG3iLg9sgB+BaPAhkBp1GgmenB7kCLidhKzvewMGUrxB2qVB1rU+SNEkmoCLaT9Obw+WbMxn9gccN9EtSD06Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735751754; c=relaxed/simple;
	bh=2tXU3pONWuY8L7FpZUU/dVpwNME3ceZM9ZGmJjcVPiM=;
	h=To:Subject:From:Message-Id:Date; b=DOnaaoHq22zWJNkZ7Eu9KjP2x49WB1kyvGIGK0XF3GuJLkx8oIVrJqEcpJ5D29e+LqvKLogLFOqHZBx+BHP98ZLfXJhF6z8lVOJjO4LjH9Wp7lB1RLf/C/pOz9h8hksm/CXOgPic88gEM+xwfgw9oQ6d0Omn9MDu6IoI4cPFsuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLYdsTfL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLYdsTfL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC193C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735751753;
	bh=2tXU3pONWuY8L7FpZUU/dVpwNME3ceZM9ZGmJjcVPiM=;
	h=To:Subject:From:Date:From;
	b=KLYdsTfLf4wYX9hgkHqBrrzzz/WNBZfTVm5WhA/ljWYghzPP3i7jHWLXuD/1JrQbe
	 jpuZ4yi/URKUk3dWVVcM5wiyGvFTqsVffEydPPhQQDpPElhkCgvIL0++Smj7BoM4p3
	 PmjdCwXITuPXp9y2oo9fy4stiW8gp3lBkfv2DZxVT4nGbXKA0SKruAyIzT/Rfcc7NL
	 iSprI9j02dudvLo2kWqV9g84NQZkYWsvBNQ+e5oN08Wl4O5z8rW7xAZWwbeTyEdpxR
	 wwlOV6sGymwy2DeNTnRxj2l7O7ix4XxNsEw6yfvlgBs54U5u6XNqYJB3GFrsSyLzGN
	 yaSUL3RINoyww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993A1E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173575175361.12880.10652437836272343515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db49062edc6778d63c4066a70ef638398c4b81191da4db15c5d8c62ed29542d
Date: Wed, 01 Jan 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735751753
