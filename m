Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5063B13C3F5
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 13:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713360563; cv=none; b=axZna8Zs9f3zLWg2p36NDxmCLQIi6gf9F8sF2WDDJuHwy2Ph0WCvpLH11HroRhs9LF/Fg4MQuJJ2b2srFy5jDpKmWGs0hsXyhcCA1n50g0D6yfXr7XbRoPk5LfBa/nx3dmqQ79lOp6EzYEcwTyUNw1OImWM66ohANiOO+aRuYI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713360563; c=relaxed/simple;
	bh=VzX40vSr0uyXVtPnPn5cVTEd1p00QQ8J9jy1IvxDxRw=;
	h=To:Subject:From:Message-Id:Date; b=XN/EWRK9roOn79uF3OiZ2aWGdQBjk0WCwzaZoZUF1JFcWZEQ/N7ov+dmX9YRNg7yLH5kPJ7fU/YQxQ0Kc6m6QCJ1dx15BsKhA40MM+m/SRU87nxbLt5Y7ty4wZ7OEx0CjlG2zZmCA8z2Y9S7jaUXs2t0UwWq9EXxgclCAfz42EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QlfccKIl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QlfccKIl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB39EC072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 13:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713360562;
	bh=VzX40vSr0uyXVtPnPn5cVTEd1p00QQ8J9jy1IvxDxRw=;
	h=To:Subject:From:Date:From;
	b=QlfccKIlvyhY9Rt6Z+mEuoKugvWHoLVReetxEoEcN9p6hBU6g/RNM8BpRwpK79GYh
	 a1NlYnia/N9Cj91NUDEt79GW54HsrXuFl3rTodqH7MfynxFjRGvZVQHmccIojY7P3b
	 E4UEwJHqyrsxZmthHoa9CmCnpYtMFSpE14cl7Y3lIK6/zShSi8c2kG1lYfhD597nVi
	 q1BR8wfGo19cvFSX2gA2nGQH4L6Z44Ibd4xNICrXsErZFcinlxdOPTLdCd+5GX5AJL
	 mlSYKVxTCnjpdlRQ9McgIGbV9vsWg7BVcvuFVqM+9grtzFkmFjo3EkbIY6HW+9PO71
	 l6GzReHXceXWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9388C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 13:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171336056279.8329.1647916666063329421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ea0e835427332b6b83abecb2fe9b496306924060fcaa21fd9c0d0f5d35f643
Date: Wed, 17 Apr 2024 13:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713360562
