Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F093D2BEC20
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769805234; cv=none; b=HO7j1fYzJN8d7hP/Na3FU/b/85q7yZDVyvTK0S9ctfRd/j4aNmF5zjWqOCy3V8RTyfTZHBOJbznpbY61xVIvz5WQllMoDbG3htGInAxBtJ1mrs5NRCZddpXFiklw/VkDDHJGImt1Km1tyvzsZYbMfvNEzeo5ElTe5k53GD6tuak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769805234; c=relaxed/simple;
	bh=rOe3khsIocp3UaXQn04vkf5kZi4BIs4RXJbOTxQbQmU=;
	h=To:Subject:From:Message-Id:Date; b=FQYlZBmO+tJMsRUxkWmmhXMIKzEKybZM7GqktzPf4zMtewAcwFOXfWkDYccl5GveXeH6Y7+VUUNx8dDQ9qEWeHXAEwgYCJNLcywvyF6g6z97QGZ4uyeOez2VXuc0rHugD8Yee5bAJaYhSD0x1LBe55/DLn2IK8e3aP/CbcRlAlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=liwUnP9a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="liwUnP9a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A156BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769805233;
	bh=rOe3khsIocp3UaXQn04vkf5kZi4BIs4RXJbOTxQbQmU=;
	h=To:Subject:From:Date:From;
	b=liwUnP9a6EknPRaN3bGOmQYawwJSF/fpVQz9F4IMjtmvbs7VWF9K27fbqKasCpi5O
	 H80322Mt4XNkuGMSiaNIiyqbnHS8hupZY7Q5UkrDFaDicbnxEYNybvhien6DB4Yffy
	 Sd/8T8xXHNKr5AUNYiZYhzejxhEv+/LW8UDW4RsDIdnGLhEcClGKFoCSSY6qe62glt
	 3EDJJi/0JwXrMPAonAkiZ1F5t07Z3XSOiHnLjivOMBPaTT1n81DHHBMqC+aquFBSAn
	 /Lehnp45DyQiO1kQ/NUcfHBxVXuGkjyFDO1WQYhmTjRj84Hi5Pkn86vylv+ZBoELOE
	 2PIfnWZ1hvuAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDE1E6BF39
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176980523358.4037.6040744372138891739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a5d21c52355a36e2f5bdb53379129167beacf96d9953a789d43f7d9f194fd56
Date: Fri, 30 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769805233
