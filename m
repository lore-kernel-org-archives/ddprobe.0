Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA0F82D4B47
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755161993; cv=none; b=XSTf4scIQST/KShrCp6APtRTarmTg0oHPad8PCBkbF+9rDJROJno4IvzOfNrhSGq3JOhRpWcrT44QJKUMoc8+qH6bWBWQuubK/0KrCAZf+hnK5UE9Gj9lwUKqirppw04uP+kJLl6QZ2NOLj80bcWtv3nxOLo45cWCp0fzAgFG50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755161993; c=relaxed/simple;
	bh=p7S3c8tNCIFMQuGsjUeaaSUHhAlDO1YfRycR5rjJ1Uc=;
	h=To:Subject:From:Message-Id:Date; b=ZcH3fQIwBYYxTytGHYwc78Qyi/Lk7d/NFFoHiFBf2786K8HfyamPj7ykqkI0QQAa7JU+5Wc4ZXXDAHH7OZXHB6LKeJTaHvRgOhYMWL4zBX7YMTbuwDCFgVdzerSegnQxExcyGwxgp28h+QADp0LiAHmXx45oEG+XMK4WUUjF+wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=buXW2GKX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="buXW2GKX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BCF7C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755161993;
	bh=p7S3c8tNCIFMQuGsjUeaaSUHhAlDO1YfRycR5rjJ1Uc=;
	h=To:Subject:From:Date:From;
	b=buXW2GKXNYmXqExdWhpymSHHwXfCuCAV4Nr/8YtIX9jWFIJ3Toq/pYmugM7cuhvQJ
	 lT7fDlV0EYiGsBhbnkazDadEI12cl9JjiL7fJHyFYNro8btLAqt3z1dXLE1jNXaujf
	 0GOdyFAZgIRFCwJxUJttgDSCc2PX6LvAAhK6n2WZQ376/OoQm9IsCHBUZ3jTG6ZJpo
	 7qWGu3YWaz2kRU+IYC3xDeD17vaNUxwoB5cMlA1VHAUWrNlWt+UvclUBfdtwHzp9oy
	 WIAUEgr6Dn8yUHY2hCFk/v4MnM5hCXHD8+mksf3pnnNo30avqrb1i1SShLXxUSx1RW
	 llMy05Q7oFq2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5AECA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175516199358.20068.9101068515817278432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7ac2db29ea9f2ba82c46030b129461a6884cdcbbc8c253ed7530dadb35e156b
Date: Thu, 14 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755161993
