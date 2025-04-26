Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312EB4A11
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745663994; cv=none; b=jWWYINIMn05M+WmnuPvlUsm6pLF9yt1VkQlYqF0/wd+H3o52YA/IsZaqT2PBCf+rvRj9HRQ/U0nQN/NMDDBi4dI2FrPjm9pLpoBQDudWdRsCbUz26K7U+t6xMtlKYVmH08N6Oj53HM+YvtgBR2tKLzfK1br36DcG5X/B1yAFAJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745663994; c=relaxed/simple;
	bh=7eUqeiFdXB3iYQo1w03iONCGmosBntnaA28LuomtCB8=;
	h=To:Subject:From:Message-Id:Date; b=AWXSF+h5fZYGkJhaOVVWfTKLTsgOyD94Opk/IO4Tln2Iq+j03AuvOCdqrzVJ4DyGiNoPwRIsmH1F5QGdvZp8VX+lbUGgzwzwNvBLqXebLci1ua8Fy9eDTX3+9yMEFdmC/rcxI7F4boUjahwhV6SP4LBiy2gD71bBHhS93lW4EMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MG7UvtGb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MG7UvtGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3546C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745663993;
	bh=7eUqeiFdXB3iYQo1w03iONCGmosBntnaA28LuomtCB8=;
	h=To:Subject:From:Date:From;
	b=MG7UvtGbJ0WITAQNRvcQqhKk/2/yayzCQzpLbkIAI4KndHOvVz9EBbfbr3NUkLo0z
	 GD5pT0+vlyeTFLik6g9jD5aN97BX0vP8rhzfBUS38gyr55LEb2WSY9C828g63NwYQ5
	 K/NqqvpI82+PWtVg5uf+hqXjYAlW6wkh+suNlquhzGrVugQOCxbALYzQ9TXoRdn6V5
	 4c/My+xU44F0zLW7KCEt3inuf/Wv4HUTidmy7bwjYiKNnCgK4qn6p+bKLGZvKCJUJu
	 NqOu/QmsXq1FENsktFw8909mueWsPO5t6+NCXkpY+TWRH3YFgBSXComZVVLK2Ytbyu
	 nDf7ZgHRSieSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E53C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174566399357.13919.7697067786221894846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1de2deeb251764a022e020a3de719d1a4abf0ac1473d372bade420bb4e38359
Date: Sat, 26 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745663993
