Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3619FF510
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745469594; cv=none; b=olb7o8p8UXEDlCLXF8pFJzGUgzYlSteUBh/PSRQVZd3onRvqWGtfhSYI48y1L580Uk4X+lmjiB7jBEiIiffKSWXZBcykIj5r45S2DL0+xpVRrxnEbGiwbZPm+U61+I03Nsos8s2plWbBsFcSxDCfXD35crKYq+hHyp0u4zNQyTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745469594; c=relaxed/simple;
	bh=Jy5GO1G85MNZX7sIUJLyH6TYwbtcF+StzUar5G/fkGQ=;
	h=To:Subject:From:Message-Id:Date; b=Gerk2HBuy0jOhYI6lViIxXBZrwYcuToxxJT9mG9LVi5v4Y6611RXib4S1Qm5ucK3gMHAKhk8ICGd8DbCvwrXeI/9fs442sfnBblTFjo97ATfkVNMi8iTkFE1vJnMVW5Rgw7HN1J6QIZ0eXaIzIquh1Fj9/o3JFVp+3qIPd/9f1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KC/C7qWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KC/C7qWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A525CC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745469593;
	bh=Jy5GO1G85MNZX7sIUJLyH6TYwbtcF+StzUar5G/fkGQ=;
	h=To:Subject:From:Date:From;
	b=KC/C7qWSHARHKCsJ3FzSsZw/Xf1sy6ei7NDqBBLuOjmDvQ2EV1oUlIkVYBFcV+JBB
	 wy0k07Yy3xWAQXp+dF7IC5aNG9C3A15nw8OsSUSCfb1ETrtJpJTzsflNtuddQ+wzv+
	 4bSgiu1g18kUSLocjm+JcAHBfQa4S3mEEHkiXx28VGqXeoc5RiJRp1KpZASVkbRYZq
	 j4j/8mLqfTHh/spriLmDWWHLruNiqzWDgUxlqNDbmbP2dWp43OtJI4d17FcTyU1TNe
	 fPyNtL5WQrtEjS0hrFwY1PaMQ1gdL0YUkgjfzChe0tvTu1y5dBGi7L9ZZtls5rUHHV
	 fCSePiVrpfA1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951ABC369D7
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174546959360.29695.6147521903002767015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd240e313a4123a60f63a43f1b882eaab5b4c8d4f8808aa64201c3320cd8124f
Date: Thu, 24 Apr 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745469593
