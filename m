Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F015A314A75
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764069174; cv=none; b=LRhuuM6qGfJc2+u4/KBlWDWDzEXe38MnjVOAcdKcIpDcP99j9RldF4cAX3q9gi38IDEBBeSZIzlrS0RcTFp1Nf5ScwjQ96SJx8rJik3zOm/S7Cia6ETxPrps6bea8mOMo1DrhB8ln63QoWeT/BDCXJ8wNFcbW9nT3gLnFgYXYpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764069174; c=relaxed/simple;
	bh=hrQdtDtcyVC97AI2lMfblvh3BXfIJ/EZ8FYOvxaxRU8=;
	h=To:Subject:From:Message-Id:Date; b=mdLra5QJ2knyrWhOFNXglpf/TktsmkWKVDCxGyxaayFRYSVLJ0tQWXc1hvY1AIyRsZo68nB3MXH4fZSKXt73AVP3djW9/bibrv4DzUKQQ3/AXDVrcX6kKN32+6RJfFR+FXkoG8IOFnhDM7EhA7MxvbuC1AQ8v1x1aWgAv/8yISE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFbVD5BO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFbVD5BO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99C0CC116D0
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 11:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764069173;
	bh=hrQdtDtcyVC97AI2lMfblvh3BXfIJ/EZ8FYOvxaxRU8=;
	h=To:Subject:From:Date:From;
	b=dFbVD5BO4s77RDbgs/FZPX8NwaODvnpp2G+1vq37LheHraNjKbCYOPjAudnmEEf61
	 mLeeUs89St3gYDM3NhajPXG9sunYUgQ5XnmwF8Ss1N6eTbwjNLNzI3lAuAsqYpEdWO
	 12WG5CGZgY40WR9sRnXb/SdqUUJ+m1EXyYp6kAQlERUuJ1zFrHmwgMl4MD7T1ZQxXm
	 olt4Xhq8M/TJE150cTU6OQsYh0nC614tPCNmVnELim5asFUyqX/etva1yZHWqqI4il
	 0ft5EyubdTs+RvEavsiclPhXsMMecNRQolq6a0rOrnu4ilTVF6JnOSI+pFejuAAkm9
	 V7wA1yiy/6AQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92985CFD368
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 11:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176406917359.11090.18161126954354802018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7bd08804e5fe73e8eb4d90e4844137435a85148b95a6c2764b6d726f1e8e57b
Date: Tue, 25 Nov 2025 11:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764069173
