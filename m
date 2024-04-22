Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4898F145FF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 10:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713783023; cv=none; b=TqmAXiOSb5w0k1fr80MnucT3tiBpBTyiuh+N3keKfgzDifEY0Wh/jjhXEsj84QrEUBYBN+Wkcw6+GHJkTtHr5VTkbf8YIN4eshbBQ+wwgxDWFTmDtX4A7ZSbTBXI0GtCKtOGKrxLUeuETEjrvu2SG7EwJyRsYRXksfO5tjyyfBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713783023; c=relaxed/simple;
	bh=Z7RW9Ej8DtGxZf/rA97fUUwV+kDIKAEOjzl7UxXq45g=;
	h=To:Subject:From:Message-Id:Date; b=CRqCxZuoQ/3G1TQYk4sn8R+fxk5dAIz7qL+CzxOyu9uIPpMKdn0CVj5haHIKfXlAL8Ma5AvsoKfbFok8nLD4PJ/f5X8BCLV4dODIBLsUpl+KXQGodw9ZMSRYQtRVF1A5zCsqukoWv6H8GjQ2D22+eoVLwKKxDxb9feZ/tXY59QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=flcpKLuM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="flcpKLuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB16EC113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 10:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713783022;
	bh=Z7RW9Ej8DtGxZf/rA97fUUwV+kDIKAEOjzl7UxXq45g=;
	h=To:Subject:From:Date:From;
	b=flcpKLuMDy90RdkWGUNn5wFqUNstMfGGFW62JvykT3+JJJi7CwizWjWtD5E8GTQTh
	 i30ao7x8a+rKjQQDuBAYO0zpto21YgqyfSKtUoJ7IuL7nwhNT+cNQyQD3l6HPClEjp
	 y+K4CZpmLn0pY7A/0ydEBoUS6mCIqcR1tcK0uiHCjiFyeuF4+CEmlF1OtUNm6yC4et
	 jkl99Yvj/RAmf8cdCA7hCA+Yys1J7sMNOU1TsQOaxk+lAkAhrY8+lYHIJzcPcyRf3y
	 hd+m504CcO/NpV6555L0RpJkjcuJcZyt4JdbYIDjc3k804nRFWFVs7CiGTTTvJ1I9h
	 605JXWwr5DNVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C184AC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 10:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171378302277.9415.1882542826265085972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f8a4ce064f1235fbcc12232f0071c8e349e19fcc1fd0d866b8583df30686e9d
Date: Mon, 22 Apr 2024 10:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713783022
