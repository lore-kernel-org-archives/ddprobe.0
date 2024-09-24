Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C0C155726
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727183754; cv=none; b=OB/luYfHng/w4qEWWR/9Td+YiADRnkBqRrNDsdi3oFIj1Ftes+fWyZDOFIswh2jkO6by7RdXRxFTNIYisZsnwBUEO2E22dBdicRO2xDUDjk9En0DzFIzrJFHSS2tt5oKpmo7StHYVGIdsWDHAo6XUuOvH+JA1XJ+qtF8+HWuynM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727183754; c=relaxed/simple;
	bh=KtQYqdx8513VJRTg1TZgheZwqOVFefWxE97tQrJ9bpk=;
	h=To:Subject:From:Message-Id:Date; b=DIEquVhpvDmQQYtT0lRy/rZEMKzdeOw6VUdWq0FUgUV/iR73XSV/TKeDqABsLjVMeX3HDhUTZG7ktMgoMl6gZqkF1H1Ky3eg3RRkj06wkRvIckhh6J4bz+HjwnxwaIMSYwGr0XpV3cvfHcWtRIr3oNtpty6f0wU7+1EmkGK69jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqAQ/0TW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqAQ/0TW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1C8C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727183753;
	bh=KtQYqdx8513VJRTg1TZgheZwqOVFefWxE97tQrJ9bpk=;
	h=To:Subject:From:Date:From;
	b=QqAQ/0TWcE3/2T1s4/oshX9ff049E6uC9qx9hi8syxXWDJg+7TQXuofzutrT41Q3i
	 EW/8lOsDZ4b2wkG7NRiJ94cHybUUo33FGdrrmU7XIY2OF6foqAWsktq+CqXn7tPU34
	 VJKcRh8cdkX+zic/cirhINTEH6n6GANxEv5uZYni2VRkIWKRQ2rq1IKrgB/pm4n9lx
	 R1D1zjLgb1jKNPIiqbHfcZijx1AP1bz570gAcd+yKM1w3zgTBEUuj9Zi4lXtxri3YT
	 4GJxNjOiyppGowHrdb1BRMD7mjV2p9jUWDSnbNYcsVpeRwVTyzYmuNETT9PFFGkUKT
	 qo5yMjUuuTLvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9538ACF9C6F
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172718375360.15363.2007306094966120090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 707418663a549a01bd4ebe6faa0969a31fe7ec545a76c886ebe366ce7b880ac1
Date: Tue, 24 Sep 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727183753
