Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06FED134A8
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707281897; cv=none; b=FYNfSnQqMU7uOq34RtrHdGneBxOYWhE/bPZV1ROA3lVq2C29fWU7DAVnl+1Tqz1bGwA54YNfFOieNQ9u917QQQmoA6gPShE9mUB1SdCDa6IwtynNqYyWZboJKXkxw4TyDL5iBDz0O5VlEV3opmJ6KQRsqd8YRbbb/5YJu77tm90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707281897; c=relaxed/simple;
	bh=mTiKLcBP7LoUNWkbDQqZ29s5mmTyH6Ucw7eba3qiS6A=;
	h=To:Subject:From:Message-Id:Date; b=VEy4jLf2CG0f7Ng8UhzXNzsYm67Nu9Il9ExuZ+Fv8JQlh+BkhF/aiC27nPw6lRfZp2EDgB4AuitjpCVXiki0BnI6br6A/KAwWkHcIHULePV6pRpUKRIC8qHEV1mz9ibUbY2usbzRgIfY4zWyFSCDq+WELhYYzIldj59z0mAv/uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UajQ+gVN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UajQ+gVN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87DAEC433F1
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707281896;
	bh=mTiKLcBP7LoUNWkbDQqZ29s5mmTyH6Ucw7eba3qiS6A=;
	h=To:Subject:From:Date:From;
	b=UajQ+gVN9QeGboBwDa6rt/LOl7AT4O+umsd4NUo78JU8s2IcobbD7Wix8UFZLB2Hp
	 azP1023xMtvign5JLKBC+ahekOVe4oRUQt1ghYd3BytWOpzzln++TSMwoCc8/uf23T
	 k2y5ewYjZ+drC1wPr1A9vM342f77ZxYapO6iI6KzdF9Ots4+5QbAwoNjSqHr/OngoM
	 6NfVoNlz+gxIYqdj1OJgUCU7UN7Ln4PChBo0Z9xI5KGT2V3JfZc+EONgAVyqViOoj0
	 p7f5AXIjd4N1nVNQUf5PaQEcKvrnl1y5W27KKWSBDPXMKRv5ywhQrNBOZo8BuQi86O
	 Fcv6OiA6B0MCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68207C4828F
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170728189641.29768.10455935930155207541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31b7250913543da939760a58c0a97d344528d263c946993689aa28c460ddd4b9
Date: Wed, 07 Feb 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707281896
