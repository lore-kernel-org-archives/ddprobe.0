Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAAF23F405
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744904394; cv=none; b=csDgBJPFrFxZnWx9zKNt6Xr3esaCPM8r9iK/J9BGFk7FmZBGYAMwt68QjvBKwoQnBRy78/ElOUv3rnChqMY+KvUIoEDyWJAuXZJHUnaVAWqcrntH7wjAGqrhUF3ZxksJyQXbKnyvQzaUbZzL/YS2hpsgzfyL8Jy4+XEIniVJ4Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744904394; c=relaxed/simple;
	bh=oCrXNSazbuZLNBX8QfNf5tCVr9vAPpapBkaI5Ce/5gA=;
	h=To:Subject:From:Message-Id:Date; b=uK6myP5y/Ym71g1iHqprLqg7uhYIH9DF4j9JGTK0nB0noqUWqwsBQau6HFv+Ahte2IuiX0hLyVYI3CBcWcmN8pOsIYzms5hu3YgUYovygCQ6rK/eaWMOurXAlJp68SkUR7f1f8lYjC7POUmziKnHJPQiGbTzpYvIhoatai74Dy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNKLiXFJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNKLiXFJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB71C4CEEC
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744904393;
	bh=oCrXNSazbuZLNBX8QfNf5tCVr9vAPpapBkaI5Ce/5gA=;
	h=To:Subject:From:Date:From;
	b=UNKLiXFJ0H+kXzM3Xp9Nf8e5mkXQXLj64C29ddk1x5xkaLthxZgS2o2uIcs9zDO6z
	 ST0kqaLSHdRSb9a8scdrNT+xDifKFsXwME7pcOBMd/6IJClBfRvnjQsN8N4GxFNngw
	 GVbsVRKJniBHyjrgBeBCbmprvK7czIcs+dWR0PpPplX65ScyX5mGSPRHtW2Vm5pIaa
	 zuV/C8FEHj78mNnS8f2PWxJgGA/HeUnU3AEYHFMfWet6DQ3xFS91gt+KhAD7P+HTIN
	 qUnacJ8FtFJcIsnbpwNBQzK822FLBPTj5AL+OVpElA7zjK7qtAlh/A0LYTEI8txQOL
	 upIyZuHbdrkoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93211C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174490439359.18021.17983679231097926790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17a0c75493e6db7c4c4c366ae4f4478296c31657a55b97d3e8925200ca25f746
Date: Thu, 17 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744904393
