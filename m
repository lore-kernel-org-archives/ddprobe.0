Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CAD32D8DBB
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760945394; cv=none; b=WuBpoSE2cs1u6WlyJNdA6u7sIEPTaOlbc/7Cv/YcnhmkC7nLHks93oG+WRYPRETIKshRh86blGx7ql1XwZ2pZqOPSe/BmU+6vTe3jraNgq178o1eYxvZ5ZKNNNNGa5ot1aQd1p5I58kth3ZYh4DoIVx3YhleWJQkdpX4UJnDdBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760945394; c=relaxed/simple;
	bh=x4MOSBgRUijSGNWHVa96AN52NBK2XI0H7WIP++M4XPE=;
	h=To:Subject:From:Message-Id:Date; b=e9altTUbLPr4+jh/yV2jeWTGHD/28TzRKZI3WDZMWai60KmdQTHCq7+loPBoBx7KfkUB9xCRN7LPVg6PwqGxby1zADUdz182rYc5FfRcHy9F8IDm3j26iQgVqR+sAnpyIuqsBIJRxD1fihaIQGoMA1BsqsOr92cs1uKg4/ymMmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bK/rrHN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bK/rrHN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D966C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760945393;
	bh=x4MOSBgRUijSGNWHVa96AN52NBK2XI0H7WIP++M4XPE=;
	h=To:Subject:From:Date:From;
	b=bK/rrHN4eZwudrlPqitUvJSHmGjiPnZDIWE6pfui/w0uQx/GFw6Sg61/EQIg5Pnln
	 dNjxqckyUye8qbnuiKa4xharXwvJnuroIaolTICsbLMT1KCgQ33LU6u6G75TjxOb2W
	 Hn6++zeJHqRyfo9Inkmqpv4qzt8ANGag47oOv7xGxKqyp93XoQE8VEBwTEugiYcRnz
	 kF6O1ZnTpA6Tc8q2dyFDFDhcGH/zVUZ87AIc08+f8TJX4iXgHptPHmxmSnJrlkEw/R
	 32qZ6Tww0R+013TuQ7VJUev8QsXz9MQOxBg1u79vJvgvCyzmhy4MClLwj6RKbsOUqN
	 9pyHDBFlQK17Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1DACCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176094539357.7931.15454219337032957076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bfc91362f2b067d793e354980088d276281be863137b24e67b71eaf91be3ada
Date: Mon, 20 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760945393
