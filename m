Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3DCC1DF254
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 10:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741517334; cv=none; b=RLwwkUQFufYcHuefTFEQfIMsBZPjAk1qOmI9HLz6X4Nr40weQWG3Jnp6tgoh9F/HFJtKhiMVuPW4et4ZCszQLrn0cZ04ucJK9BdvbYj69dm5BQ6PTqwnE2tiEJ/r8vyCtrQUjkmLjivw334afeIL/Tep9JQ5nv7PueaFGleNPDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741517334; c=relaxed/simple;
	bh=zm1KXn4kSrA8J3pFEdX6bPd4COZtgQ84eBo47mtIqus=;
	h=To:Subject:From:Message-Id:Date; b=EH3kqfGB6e/wBVfHzx4I2QA0zaYb1nQ7UwQdKsLZhzmet0kEFIM7qT1Qy/X1PaLlqIsV2040uG0CLb0q+JzA/o06hqJJfQnor58i6d0zH43OhDmTu8wuPI/n1CEydNzDmu0CK9B9ImvJbB2T4+FkUUCnjVydn8nbPFf+bD0H1Lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BR7bCYC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BR7bCYC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A663DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 10:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741517333;
	bh=zm1KXn4kSrA8J3pFEdX6bPd4COZtgQ84eBo47mtIqus=;
	h=To:Subject:From:Date:From;
	b=BR7bCYC54pjIf3K/frfRjkSwwZ1TOPVewbcQ0GQQHuqGM/UwXEyMhpbReQWGzCIdl
	 s9VVihTg8jkCGKelLy2zX83Qj+Bj2B4wCdPfXxwh9rHaeOvY9K4yY0QOzMWu51u4AQ
	 am3xJbtcZSdLlhL19NgIkYNZJJjcMM2oqL1SPZKhlAR34szjNGM335uiU4OsKajS2N
	 rBPRSEU+ylfKizu5AvdicD/qI2ryRYuDrKSvgF3vWVZP4E5KObg5gqSJw+3wr2vLYo
	 WYuUC5fntXYmgAx90PjGtuUprYiKXcChf4V9D/EeIgWMzTUIjW5MQJf4Khlh33PWp/
	 lShaBNjwh5xCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934E2C282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 10:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174151733359.31428.14306641884505430068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d778f2cf176dc27f3ff415c37c7bdc0b5de0b8bbadbcecac3967f1a3d9024fe9
Date: Sun, 09 Mar 2025 10:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741517333
