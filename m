Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CCA8225A1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705535896; cv=none; b=ZLMs5XEZLxcT7iEGC6Me8wUNpwuXhQ8EAVMreO15u5paghkdWJ414h7RICBEkzws2oc8hA19CewQwjg5tbDbs2lcWQ/ZHSpuu6LC+5CZXTl4Z6JNEpmMEFgQ65ch4jDo7L8rhPZSttgM3ziT728LnQxIKcLC3j3U645+8svelLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705535896; c=relaxed/simple;
	bh=879Yl2wRZNIrc0bv6lAWfIWQf36kUk18tsDc5r9x8Vk=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=kteDewCodp6x2okDSFrfmuM5lO1FLCc3hg/gK+X7gR0SLoZpPSB02wSR7AFfBGhE4O2RvrxeMgTdmIiG0/4Fyf6WuI4ypG5f1P+sOc1h4YGTKr96Y+jQaZpObnxrFRSmJa/PHe/iVKxAmyjATTmKE44YY8Vw4hh02bI/el050XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inJGzYU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inJGzYU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71F54C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705535896;
	bh=879Yl2wRZNIrc0bv6lAWfIWQf36kUk18tsDc5r9x8Vk=;
	h=To:Subject:From:Date:From;
	b=inJGzYU1avaI4pBlVo1lEBJEza1cD62ImekmX4EG+IutX8fhXT51o9cWbSdMcq5TD
	 SA/j4B334pyqSeOzAXFtu/9PsgQCftbHST3TlASPK3IAfrmMZlXsEHhRRgtWca25NS
	 y2yNvbh0gvteZYQXbWo9mrsHNwDJWC2D+1/zfNdwomU/U7j9D6ZZfLpkxbrfuoIHaQ
	 gWluiOxEvJEx4CwT+99SFq9O7SsOZJn9DqWW2/PRQcRHnSnNVuUCq4mdDC27pKDJb9
	 3dB9ZS2VsS4jlk4jZjNCsMVpj6Bmy5m/LgaCqIoMheyS4O9QkRa9ffbCJa+z5ZIh6l
	 O1FmCZA3lWTlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AD15C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170553589636.27315.12463500035929536742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffabdbc88bbb983e828af63fc29d3c647c724494a40ee05b7c3970cf29e71506
Date: Wed, 17 Jan 2024 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705535896
