Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6D71BA2E
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705645697; cv=none; b=QWhFB4R25LdJp18EuTAgbc/c15qJOKUSoFnOAPA/H/v4ZPoXeQEW6S72SPbGMmwqFUzyfiw0Fy8vPaLLobMceOCrsuLi71ykkhYgJT/Z+uCTxv4kfGTK3h/HAJ1XyVoMqQ2ckYWBDyK7qtsHQx0Wp/dsapsrnKip2jDIfwAQnRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705645697; c=relaxed/simple;
	bh=JWsyk/iUf7P0VuovQEjHUQszuwlfOUY7wrLqaL1gdqo=;
	h=To:Subject:From:Message-Id:Date; b=PsHp5VzmtVbKrG2bIv48aMNG/ETwSGFbJpwWPJyKtuC03nyZPJuovOvGXZ6LryJqOThXnnYmrHMl+ln7Xr7EVf2w+aVRnm5Na3tp0I7WrbBtsKQWe5AUXOrpECLP7R0kHh6q19ASvbQyhdyYX+w6k3PfVYbbhnGWlM2PRbbEO10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GyoElpeD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GyoElpeD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AD62C433F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705645696;
	bh=JWsyk/iUf7P0VuovQEjHUQszuwlfOUY7wrLqaL1gdqo=;
	h=To:Subject:From:Date:From;
	b=GyoElpeD9vnpzRxTMJ4kAtyQ13jd2h4TQzwCmxTAYDP7+lCSbyJVYWk/zos1auSg+
	 FhZIOEsnmTEDRxImw0hDJrI6mRrkgIPpYq6oMy8r3QlUOcui4mGfewvI/syeoSYloJ
	 M8sS+WC9pZ5Ts3QHohbqdYwiPFRWpBqKqUPCe0S4Bd+YOnjlPWWu6rW74Axw7iSdkt
	 zNo7XH3ePkxUTXFidGAwVBt/sBew01bibXF4UpkdRPIJ+ct+ynl7tYDlmubGJj86fV
	 G9KrMCCxQO6r4NW3wrsJ9Kbfa14+FhLX7mcoHCNPIF/dgbxQeLhEmde8oyt+K4UGb+
	 ZlSHlJ8EeZHUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60312C4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170564569636.3262.1365966769990974856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: accd4c97f9c0691500158ab3077b57ec8fccf4b14d7828579768a62c4cc226f3
Date: Fri, 19 Jan 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705645696
