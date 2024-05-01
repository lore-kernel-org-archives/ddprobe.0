Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4881BBE40
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 01:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714527143; cv=none; b=WCQY221vmPYQTT7ElkBlUT7ZvIGfCzLVRJmo1fdwrcVixUi0mOuTX141ol0VYe+q3vRyV3WtWSIikRYu5x5r7ZhsTOqG5wGHDbyzoKoU3vtu7Jg4KqTkUEs4DsByKu6JR3bS9vYhAYlCElT0wB3hWlP+vkX8ieLuHe9ZOAlaAXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714527143; c=relaxed/simple;
	bh=3s/IJHi7hT/z/8T++OFLgPtdSv3tTweRpPgoQ/QgGHE=;
	h=To:Subject:From:Message-Id:Date; b=nL4g5nf4Bhvm+Sqw7MVlktxeelZmYCEz/IVqW+pruUjrxYlt1752rYyjIXkT5HIBuNK/e5+2tNuE0rYawp2gnawZutoBBo+oDechgEIiXZ1f942SWmuWXxLplnj1thHLU3VEa6ze33e0WSFds+L7uOjsD01niRXkNzRmE0x7MEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5XK0b/4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5XK0b/4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB31C32789
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 01:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714527142;
	bh=3s/IJHi7hT/z/8T++OFLgPtdSv3tTweRpPgoQ/QgGHE=;
	h=To:Subject:From:Date:From;
	b=R5XK0b/4s9juUYmamjh0wsiml/Ov9oxZ7jMoZjvT8GGvYVKTkbAE1ekB6U5BXuYvW
	 /VkPyM2FnKvevebNS++OzjNe98tUZLWxtdf0HXXvs6vSlwrM2Gh9M/6rKFJ2+XdL8u
	 nefK+UQ93cNra5eBtZcTShovRUCJO8H5LM/LYLaexwMxYhc9Z2b+cUrZW1v1XvLzY5
	 9OydhHulxmSX9iB0FpbTIGHetGnG41318mlpeCQmUbqcNL3Qto8TZhMj0qGbg9w5sm
	 T1U77OsL1cHrtKf+r45Qbmf9+bemTwqiCU2+jPkpYsjleOTSyqIrviqS8cqMa+1ovG
	 HWxywixnFFOQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC3AC10F16
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 01:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171452714277.4946.5856142550627286127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f58d90770f17cb1587ab040e783f4163dedf74c5e7fb0a6760a80242ff7a2a0b
Date: Wed, 01 May 2024 01:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714527142
