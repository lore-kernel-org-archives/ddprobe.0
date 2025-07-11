Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216991E00B4
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752260394; cv=none; b=sTA8ttMquesQ2dsc48qiZtXa40nOg2z/eNvg+bOX/aY0QAdxOC7AbGcaBk4+g/IOpxkk/zw4nSjk5prcAACXXBtomm6bkWWFjG9PMXXP9cI/tG/msMvW8TWgkruJsQJ9BMAExjLEIPG9J5uZerAKu1vyXcnVXMNZKeCm6vkrgjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752260394; c=relaxed/simple;
	bh=5YCR3R8aNwOj9Ei/52KgNFWN/+OPMKx1E589ltMTCzs=;
	h=To:Subject:From:Message-Id:Date; b=tSHJTOzsiFlXLbLZdaz+ODJgyyEuYbtzxbUON+bQo4cArQIKGjAsCFtTZHmdLwxKvgyF6qMgElpCyypV4dwsfP9zSReeXGnrZNqYD/zxMUOuz8ubUXtf9/Gj5LoIWgaij/Lhe60jbov5vVPZGpAg73rXSRuZpOAjXNU5KtOMESk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5FSQNQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5FSQNQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A639BC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752260393;
	bh=5YCR3R8aNwOj9Ei/52KgNFWN/+OPMKx1E589ltMTCzs=;
	h=To:Subject:From:Date:From;
	b=i5FSQNQ7oKwGsQzhryAotlhuedtmUDXWzDn+efz9CrXKXYVzjX7ErGKVdPynR9Qmr
	 beezqG5vF2J9wZLhcftVN4XL+A3Sf55wTyIJqer+97wV2KidKd3DBoiTGoqdbahQu3
	 GHwYyePCQDknCZh/3dv1d99LDJZS3HR8ygWHQFBrBDXCQ49EANC8OkZcOeNTjNPnEJ
	 Hi9JejvWmvIeBl8Opy5SKyJGgID2yWjoly6VioZK2eTuH2S9Vvfgk7wzoVjljfxIg7
	 bHMxJGf9+ynv0O0TFBkuEMZH+Xim/8hsIml23MuFJmPVTRufw3sjc9l2+DkQnk2MR7
	 Sq3NXgDqu9zGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907E4C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175226039358.31875.16810524177915747190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7045e3d1e487187294459a521c96c5ec6f00855f103b264df958935a68b0597b
Date: Fri, 11 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752260393
