Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416BE2367D3
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788752434; cv=none; b=Z11eOH1qDYCEv/wLm0Wo6GSy2u9L3QorOvHbK0cNMNHLiQhJdBIAJiXvTpe0EAokD3MXUGRQyY+7IpjmqlgKi02Tc50ci4BSA/1lPfI8PW8lWICgYiHDbvEEyl6fr8KJoahGwcakSG3xKcV0u6S8uB59I9VkHVles4lDhgFdj/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788752434; c=relaxed/simple;
	bh=er5JkAaiGNtOe0nWYCWdXkqWA7x0sIiarygzL+BD7B8=;
	h=To:Subject:From:Message-Id:Date; b=gAbciTFT/7XkfQ78Y0LE+o+Z5W1CvqlUhV8r8CdDQiJb7M4EoqQS8vGjox0SWyhbR5RWoIg0kG0ZBSrDI9QPRg7fBwHYpScJkW5YnlOOvm7KHFadoz7jH26iFX7Vzh4ElARnLhC5teTVR+ZarMl/kZdBT5E7fm2ibGCZmCmbZl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJytXsyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJytXsyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64D4C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788752433;
	bh=er5JkAaiGNtOe0nWYCWdXkqWA7x0sIiarygzL+BD7B8=;
	h=To:Subject:From:Date:From;
	b=LJytXsyqL8J1IPxHKk574IMdOdeGUVkOZFhMLfPd9T8f+JPD2AVbKZOuhO8US65XR
	 gJVlrbpSjqFwNKl324GrCb3RpqWDYbdCtvRFCKeGKqUQWu5TXrW/buZnnbH0w8W2dp
	 Uch/LzC3HQmfi63ux/laf0KZHkHZKwjeQOgu6FIKVSyRAQvC+ygd4JQy6ubXIKcoBk
	 NxvW5gaF6GeVAijUHSSnWwEyM5dQcwo2M/mbyHygZjIeKznyBVf83LNe5ayVtRAvoP
	 7N0Wky6yDsggV0l7JO8uv4bYoNCqRipmdGWsL5iTmb+ksXOhV/sQm7fl+bttGI1wRl
	 gWG5w8ZmHHx3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4132C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178875243370.27707.18405095522287552854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5175c23737e6244628f46d6d379892e04c8ed430ccd1b48254d84a25ab9c2334
Date: Mon, 07 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788752433
