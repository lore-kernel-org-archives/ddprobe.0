Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC2C18F2D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 16:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719420203; cv=none; b=kiAJyXSeWoJU/ogmYvwuJkA6CuQ5Xk6TJpsTkJi8IiHdYIwPq/TAQaECPpu+1+CFJ9J9u14uLqYRRHoNqWfWMV8TZ/g7f6au5CrNijHA/0dKEOLFHiu4osnXBWkTAYTrXxwIA0a7hKKKOLbT7Z18lLx/bZlZwmGv32XaGy8SEzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719420203; c=relaxed/simple;
	bh=yMpO+pWmDKRgcySz1QzdWyPZHTOe14u15YsjoAk+nLA=;
	h=To:Subject:From:Message-Id:Date; b=Vk+7VStD/fFq5U4NyV31R6L4V1ZCcxdhgKNYsQGbuhcpndl+9W4WsfQmvMe9aIsML+5jHpxuhvSqve4X9BqTJebZNa2si1ipvFANmWiafGJxhBoe3qjZfto9xP89o7/WXGtZsRMtEn8AhgcQmRVG3KGenyJgcxkyYY0MJe1EXUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPrX+xLB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPrX+xLB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90D8C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 16:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719420202;
	bh=yMpO+pWmDKRgcySz1QzdWyPZHTOe14u15YsjoAk+nLA=;
	h=To:Subject:From:Date:From;
	b=BPrX+xLBWb5PSqK96aab3Zc+klVf4O+FeyFl3U8ynyt9ct9lXt74/yZRLHY6TfTyP
	 MlFHMACYIy7NE4J2tDb7trrXYfQMVc1mPz5wzVL4zPG4KHh4TrlZeXCj6VkMNI6tuW
	 rRhzlITipmNkHwsmYBmChGay9QtSC8TkiWRLFVrL2pix0z+2AuuS7hIXACzKCCpi72
	 Wymiow95549PDclMlDYRbrp6CL7N6t9FtsdYPT0e4mH3PbP3mar3dwZ8HlbQpcKkAL
	 egc5kOB3lFpuoMqhe4oNkCrqD2SqYBcuD44bQgCt37xN68F2bqWTBbYEHCpMwabgve
	 VSeAhLMNIuDhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E28C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 16:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171942020279.13882.3225906872712357713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd15a6dcc3f953ac7aed8cf480c1cb1b26780827ef98f6c78ef146957bcb6c0
Date: Wed, 26 Jun 2024 16:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719420202
