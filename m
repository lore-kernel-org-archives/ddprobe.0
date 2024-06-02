Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551EE2C694
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 11:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717326923; cv=none; b=gKgRmCTvKb/IUC25Pby13aJaI5caGJmUnHKvCgNBpfa43A6lNJB6G/JRZyQkjBMzZWDkAuvjZfRxy/Eu/T9RwFi7gII1fv3O1Om7eBXzlWYd+DywD2OaHnzHy1zHJo0heh7sT8/BRw8KvByNK/YnGN7cD+lEHPE5o5XF0V5yLnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717326923; c=relaxed/simple;
	bh=fDn3IJIto7MhA3L8R1tx/DQJM8XG03FUjqFGfNh/slA=;
	h=To:Subject:From:Message-Id:Date; b=oyBSJH0NVRx15tGBCdC2P8Vz4B7KBHc9sI843XR9bwVa+gkEwgy8kwu3QvsCNO8op6AODu3iImcRj3qA3YExmHB5l4Rn6nNUIFrbLxXyeKoLZ/RFz/24BPwW2J5RHV2BpnkVCBR/1T73n1mDjcNYYr65SbZAXnAelrmcEhuoJYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPXTCT9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPXTCT9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70CCC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 11:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717326922;
	bh=fDn3IJIto7MhA3L8R1tx/DQJM8XG03FUjqFGfNh/slA=;
	h=To:Subject:From:Date:From;
	b=FPXTCT9oaBCNRdzF2HJTG9sx0WpxoNLv5J20mb2ZDdXwuVjvTUFMLurURjqr4U1DH
	 KGVJPFvV7EHEPKzwyO3NyM0ay9RaylTmW6R/287v7Fg/F4uDB0JFtJarxVg+WhtCy5
	 OqEsl5Z8Xmtl13gy/qk8+6QgT34zPqj5f8Yp0veQIEV6TkCKaCd0IQSqqpzRABuLjz
	 w3WuKvlp5BklBaKozgRb21IpcvYyPpVto8TTW1svcd3Qz7C9tLokYGw9HbnCqBnbmk
	 edWGxkb9NnMK4KqX4Au342X8Rrv0PWbAIu8p25dBEt6Ctmffqx72uNQQOzPXi9NlfZ
	 ddtzctZjJwq8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C075AC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 11:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171732692276.7044.14026623176600939456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95a0b1a3dedeacb312d5ff44d30b0ceb5f549cc6d1ff0de3af32a3e7c2740616
Date: Sun, 02 Jun 2024 11:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717326922
