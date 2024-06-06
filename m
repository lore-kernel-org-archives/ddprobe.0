Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613867175B
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 21:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717709843; cv=none; b=uQHww/3ja5ZsLUL6bRpe6aED2qchCDoG56l9635daggwLJoHddFWodVwIvrom0JlHsEAlZXIwbhOiwapV4fFFhJ8qxOUhGGVm9iQ0FnQp860YyZiF0DBMqTsjG+manpYnL2QHmDIYhz6hbka6E8a6a1zpUA6FVl8HekK7nzkTH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717709843; c=relaxed/simple;
	bh=ov6ZAm79GUo3EbwvoMbKR+byzHJmTO1+No4r03BR7HM=;
	h=To:Subject:From:Message-Id:Date; b=BDRswiizOFdikINL52krpwQBeryCD7JI3CCmPGJJPXqsGQ+wuZDTF5diA6AUbBAjhN1FqfFJn3XcUzdgi+O2S4EtZVWCDbrX177Sk0c2rPZ/oxTjxgsJnJa7B1MaRBjZarTyVolW3PqLjvNt6cNnapzDaaHfvZ0bP0B1xNNZswk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGld/5Xe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGld/5Xe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB025C3277B
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 21:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717709842;
	bh=ov6ZAm79GUo3EbwvoMbKR+byzHJmTO1+No4r03BR7HM=;
	h=To:Subject:From:Date:From;
	b=SGld/5XeqlD4YG6M0yANECG8oQc6kbtKAsKhIeUMezfC6ZDSjEvTlW1SPM6dDwu13
	 MCyIUDmaHHoQ1qJeb2bVKy7HChtYvYLLUZl8K2XE2yzpxjUtd4OUcehSxrPyghu/6q
	 IfBJkFbG76Rd/eHKktRZXbBhwPvOHwX1oXxbWOVg8KHQ+L7UhcS34iCKe4quq94xL4
	 C8qZsttP3ePPI6m3vPghieFqpwy6MoYgOa3ch3Ld2MuE/AhAyDQGpxZ8YjpnP6KCVX
	 OSDUGvZk9Mpxkvjh2bjAbdiT7Uul4Ann0gb8Of54//0CMa+tSSB5+IKwsOFdZ18VRm
	 iPLbFPVD5LVgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C06A7C27C54
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 21:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171770984277.31755.1053408771952601631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 030890cf188b81018a4ff2ed463da612263dcbaa07822963aada607f48dcb3cc
Date: Thu, 06 Jun 2024 21:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717709842
