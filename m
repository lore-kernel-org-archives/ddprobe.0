Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F319518E2A
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708930097; cv=none; b=QNQNtypSozasO+VV21JH0NFtRwHP67AGN9S8Wbw6pFX8Q3ob9GUhj5odfL+DCOxv60i8G7cGBLZutUyY/ZDO5YGVREV+r+uNd7j/QTFIjbMPhAtSHugPHU/ys9K+tBfhoVNgSO/pjPWDBS3bAXpnTanQ043rVX/ZAX72SRKgOtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708930097; c=relaxed/simple;
	bh=6Mgkz1fteE+FaY7oefAyQ5dZQrWNnLEHP2HnQURatC8=;
	h=To:Subject:From:Message-Id:Date; b=YegpcnU6TdRazJ8Ry5zwvcOy6axOvosXdsYJ9WadYOg5YxbjszwukN1cyUV+tiy5fNdXtCtkDYA1YYBzhJBUT+7OBRztskN9walozjZwmpitdYQuKtaUchIfZOYyHNYaf8j9MJBzce45VrK8kzhexx3Fj3GyC07U9coMQjg0sVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOch9nBw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOch9nBw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8776AC433C7
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708930096;
	bh=6Mgkz1fteE+FaY7oefAyQ5dZQrWNnLEHP2HnQURatC8=;
	h=To:Subject:From:Date:From;
	b=QOch9nBw+ypJN4RZBK4T/wrRVk3hsD3AImM33m0+0t+h1ZvrSlXFh5QZ/0SagL96R
	 xJb7AmZpG66ysC2vEwvVXnuDh2vO1CLK4QDmjW8fo3CMHBKwgf0u7QgIbIOWdClYYl
	 VfpQlaFLWNhUDs56hi+dJDK2Psak5L0d56LkFxQ7y1XJkbotJpfu5DP+hyaiI6c4CZ
	 EwbExdgYtOUCVbCaw4BF6XHUWAA+lG0jcY2u5AwwO98p/ouoMGcUrpEq8IeRWmkX1d
	 8e5UFHD2bXbC1xOnEocLCP5cry0lIcVPWhWwbUlXkL6kZ2AptUjCYQfwn4qbkOmNw+
	 GvbdKZ3JjwcHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A3D0C5478C
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170893009642.7454.6469117593016678557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8294110080c6014d5faa1d2f30121e80022cba65e9172e737ea55509c3388648
Date: Mon, 26 Feb 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708930096
