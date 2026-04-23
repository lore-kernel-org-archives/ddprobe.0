Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274313A7F61
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776911854; cv=none; b=m7RewnltF4EAYH1w9EuN6NfAzubpwnIBWeXPyPfOmK7mgknY6YhHW+DkXBEYPhUVVEJ5+18u5jqpUbLZ46b3lXwtIaoJR0vyTKRUDuCkTb4Qgq3mn+ocJSOnm8gQtrOAoorwk1H99EVTJvSYOZqH0zJXChEwa/Ht8bNdY7qh0tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776911854; c=relaxed/simple;
	bh=McMrlhLOQQSqdjNmRE4CDPzIDjli6rU35TX23TAYgvY=;
	h=To:Subject:From:Message-Id:Date; b=EJqIAO02Pttyxch8u4FNIVYIqsAAaI3Z4zPNxv4vpuu0a6uCKDLsF1oWka5R7W5sIQ179hAfGfs6vDDVWZG+IkanBZ/WanCveyINiaxm0v87Hn+Ogz9A6lgQYnf2HtlEK7HJZPb1kYMLFMTSREfCZmn3GZui9tqhvQC6i+66lmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k600qdy4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k600qdy4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20D5C19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776911853;
	bh=McMrlhLOQQSqdjNmRE4CDPzIDjli6rU35TX23TAYgvY=;
	h=To:Subject:From:Date:From;
	b=k600qdy4N7Zg/Hv+BeIkLVySlYP6l/2TkgZQINFnXmfEKwXtFlVl5v6RYT32pAis1
	 Te2zBdi5yqY/rLuGPp2VkuY0e+a3+igjwAVFeHLbm7d2sobXJWjZVm9CZBpEe7aXjs
	 VdKHRd8PsX22pal9dhtinUSoljC/U00eLnDOwQbgIznDq4tPCCQhqaSuUi908ACx2r
	 +3ToUMqixdVn5jhqcLvPkz/JUuAHER/TI1xOvrVbTv6SgkWfqaWdgSZzQU3OojZd7y
	 GkX8N08SAQmz7MYPKUbgOqbQiAxy2cOcXm6lSntk6SikDko8YGpYZEIiQOFsNdCmXG
	 iyA1XWakVrZmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF87DFAD3E7
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177691185368.29981.6306041578585164555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e83c547d5a3c1f633024f51554a4e14e0d2e8ddedf5aa89258d8dd7676a66f43
Date: Thu, 23 Apr 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776911853
