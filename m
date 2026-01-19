Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1357981AA8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768791834; cv=none; b=V5Al56YxCCyUq0ozpb+7H5sX5ZHfZEyNT9ieViGgPTeEXRrjZ6x/hr/TYkOFzRL5e4S60GrdlR4GC8UXseodwXhdzHGnyoPZ07JxJz8N+0bwhYnAH9q/m2xiXMWe7Li9XM3T8dXfcBEZny1Yu3nA+h8tXAwlsxZCoEp1UY0KdGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768791834; c=relaxed/simple;
	bh=4JSD6f1vHh7ih8fzrZCK2DJqasJKfr/vGPxJo8P93Ys=;
	h=To:Subject:From:Message-Id:Date; b=QPkpWfEPJkm5eBU7tQaxToRDwE3GGXApDnor2zemvDS42Ii2mHryvFkG0em9RGjc4xx24H/QlgYKhvWIWCNIfeQJtXkgMALtSmY2ugP8FiYnIppkKn86NqW1rVRrLWRLm/v9UQM9HpLV6d5hCqVvOfFMy5BmLFjLKL6YyHk5m5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2LW/8ck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2LW/8ck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E9FC116D0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768791833;
	bh=4JSD6f1vHh7ih8fzrZCK2DJqasJKfr/vGPxJo8P93Ys=;
	h=To:Subject:From:Date:From;
	b=X2LW/8ckAplCdcOZa0XBNCbf7UYAMNDuASug/P7lBvOpTUKjAgAt56HyQr5S+nLOc
	 N8tMAbPR/WzFT59Z5etSis+6B7HC7awgrBxonw4M+9q2NnrzauMINtWs1KrD9q8mxl
	 ykZC1VVjipAvXjqArgDin3W85OF8zD6A6UOtUvbnbcAx2E5WVDmEufBVJJfOiknspL
	 uGfYdlqrwDI0LB2xh8PumShIq63AjjuFD0f/JPZKZRkQILSZikH3zcTFep//uIZcTb
	 yc+EXfIQTGvZFnVS+99rQ7P3QF7PKkCkp9Cj+Le59hL1vcOhLX8b4hS8Qx0RTQlT/a
	 zSJdK6HLNwjEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90444C9830C
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176879183358.8927.9620043631642931402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0a7a9e2231eb16ab10a84dd289131722a50e5e82a1e2d9fb4758046302493c3
Date: Mon, 19 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768791833
