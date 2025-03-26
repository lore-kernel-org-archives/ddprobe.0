Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33917EEBB
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742964594; cv=none; b=hZWZrqXikRkCiLi/orOqgcqZT8owGpJdk9BdpJcdxqj+dPdgKZIpqVEogNyXE6lPuPyv/lvPFYVOhS0CjKZICXVBqNUS6oY8i++bAGU+r74ImTyHB10/3XyttWOAXz+Lq8OjfDz7cpzvAc6d3Rka+wwf4wi6rATEQ/QDMncFitQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742964594; c=relaxed/simple;
	bh=lTCdx+5HrJPr1rhELGJ1f8HinveiKvksLmVlnvIE7J4=;
	h=To:Subject:From:Message-Id:Date; b=Xx97w7eKaNFy9NDUACxIeB9kC7kPCfWJlZVmsK+xDizM/5h9c9jI8eO9p6/JW4gWApV2dyNv0bXxr5CvHNeLFPP7lpayKpmoVtwfbh+24jirmhWJw09b31+LDDz1tZqCVqkwC3j7dsU7hE8Ih6iKO5MaLqPM33cpVzmoXzf8ypE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIyxzqek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIyxzqek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0E9C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742964593;
	bh=lTCdx+5HrJPr1rhELGJ1f8HinveiKvksLmVlnvIE7J4=;
	h=To:Subject:From:Date:From;
	b=PIyxzqekQN2DxNlvLX06udnx5rMIQv4hnzb6uLS7OBR18IiIzhMDqT/G7YIIKXVVg
	 crBUkVx6zZW9zZc8GAXeiUdXxxyYUhhQpTzvNXS71oZ2nN+Ej0/xld1WSJNrH5D85u
	 yrUDo/ygIK+QBqrdhP/625LLzmBUJrf+bGGhm44F+8SqXCmbfekv/FRE1boUPHlBG+
	 6J6jWYMX9yafewDxInEwDo2vFUPURou2yqbhLxRs/Wthu/N8wgopGoSEPl9Z+sm+HB
	 ILBnXN7jPfRJHkuv7lkl1/oAUFmn/mYRNqNHWNbEMgS0Y5QeE4zG3P+3S1SEq5QH2Z
	 glJMZi8MDqisQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9849FC28B30
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174296459360.8126.6237604634840671334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aed3950ba37c30afce120459dd4f095a3c8222699c269ab4fb9d3aab2066280c
Date: Wed, 26 Mar 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742964593
