Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CB87DA87
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726823754; cv=none; b=GQhNecsD31rG1NGGPC/Z17P2etY0KvozAj3/dS+bHSqRLhZm/GU7Wt41mi23+wXe1Flni1n208p11PtusklkvSL27+6IEuKdINXycQJJKR6AyIHsbQEBDli5Z6+xnMYpI5TZNqL+mk2Gwy8j+gkFUXfX51nChNbZLQApvGS2xkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726823754; c=relaxed/simple;
	bh=6ppqGHGzvYmaTno1CZgCpIyNO2TTC2YLv9x2GhbohDM=;
	h=To:Subject:From:Message-Id:Date; b=K8kIn2NrSn1CirEhRW8LnGeE40qRjgAIDqiOK+k7emV5tFPjtD1za0hCn2j0+hetd8wL3ZhOS3cGJplgLFf0EHjB0zEfqjvrvq2GPfFdHaSmMINyUawBtH6DjWahTRJVYgY6hA4X33X65d6JITYmC0aMg6KplOixu3fG6D8E34c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCPN0BtO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCPN0BtO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1F6C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726823753;
	bh=6ppqGHGzvYmaTno1CZgCpIyNO2TTC2YLv9x2GhbohDM=;
	h=To:Subject:From:Date:From;
	b=LCPN0BtO1uRdDG9IfQY7Y0KiknT2fDyWPBXQxJ3wZqAg25yM8flAkD8/BKZRQ8TvY
	 OTp7q4S56yJGiVpR4mcXtge8pg3mt4Ub+e4fZ9jqDqRpc/3jw1oxgecWl4+6BtMe7s
	 /xyxMuFaHcNJZBkEmZ54Z083rXN9VnNQnQLL5XP+iJfyr0mu+UdJH2ANAlNjY71A33
	 IP7Yvh8f+jO9tb6U4bNtzhdbExbAdO0Xh1L1YZLEWL1DGbIC1TmYZZPEfin1tea3P+
	 VeJc+CAHOJYv4OPkdXwz8gcYkXnWTTehBkCv1+6AFmFr427GgrGXjjfE8PbG1eELOP
	 Kw/mpNVMF/f6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9743CCF58F4
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172682375360.11192.10844914976657554826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9778259bec27b8a3e4ea174836675ea60a4b8c54b31039bb09bc3abb6705816b
Date: Fri, 20 Sep 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726823753
