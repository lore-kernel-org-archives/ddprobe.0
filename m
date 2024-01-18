Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0010E2511D
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705583897; cv=none; b=ZLNGFTv+wdKHg10ERZV2Q8bAqcszo9pF1gGx36VqwOOXotdTcRtqo50X/xw8oW8NlFNaSMc7RN+BY1RGwQBDCmHY65vx8hM2Y3ZSe73/A7Y8Am4mRYg8oWx4PcEb9eyHe3glAG4mlrycP0aNFH/2vlQ0akpJciW7myrYkNyMBPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705583897; c=relaxed/simple;
	bh=WnOd4Sa1LWSOR3dkfpoKNEUXbjPyZpuMAEYnHkCzIp4=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=WUUbizaAoSXOSKE/ng9sde+bgksMA3uz+xlVOLNiCFwcQTeKi/iMAO0CebVUGtoSm6OawrhoAIMWWp14l7bJyNsbYR9rfGQr+5KPWZhUNK8vQp0GmhW1GesDV4BWf8imShfILAm3BXUp7fd7KK9tJJ9/UZWzrcyiQSJG8dJaiE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCDOxflO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCDOxflO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74982C433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705583896;
	bh=WnOd4Sa1LWSOR3dkfpoKNEUXbjPyZpuMAEYnHkCzIp4=;
	h=To:Subject:From:Date:From;
	b=RCDOxflOfZzd6YHDfZV32pp15z7rgBzu/yg4S2Td2dLuZetl+NuxlO9HflP/YvBin
	 MveWBOs30Qo/wEp2hJnddvAVsVLV4AqBxGokqWv7XZyXZDJL9cHjja6UUfJnQqLmLh
	 KuXhSQTIoBZemM1RHiTqNa5oU3xCY/1cwoZ/65GkPdNJiFkx/IknPKeXLH3+dnzpQw
	 UsXcaC+UgCvotLM5XzR5c10fegXcfzz3mGVjtSLN8jhoEsDIG6EUhTA9jRmPwvF1qU
	 sUPWKGCp81xM52bFA1kKzb+LVYFwXBUEkzyZSf8Ft5BckNawfTY+jqE1ofpJ52mOEM
	 hBUAscFo5pHlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C70FC4707B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170558389637.17869.12659643726175833031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c729981fb5ec6265ecbe75f421c7d226c7826594d27f3a8fba0ca2c1b5389ca3
Date: Thu, 18 Jan 2024 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705583896
