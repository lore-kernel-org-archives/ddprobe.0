Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2168C2C15BF
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752620394; cv=none; b=qRBw1JzCMvM51wdKkd2ManWOgnE9zkHzZVMroAWmf8MHS6SJVzTVBGRIgnpo5JiVR0DyLs7vYx0YlK1c7bA/sXJHK/IOyZri3lRPG720NwPLD2O101k6EhdfE8RGRoAHwDzruOAjrGALzAiL/1NX73vYxNH4TuBCi1cnugjMFs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752620394; c=relaxed/simple;
	bh=PxCMREFztfnlFK+C9Sl1YEU00OmvAN5MhFpJk+CHIFo=;
	h=To:Subject:From:Message-Id:Date; b=rX8qlx0jD4fhdJ7XG6QEMT7DjTqpo7SkTlNqh+0M7GQ6JkgKkZbFOHkHY8z/5hfv5HcRoyTzAi1/Q6G9rZw4uTk+yQ45ks8Li4g8WJWLWMqfysmtKcG74MA9jLhex4I77tUE4jWkkawXKpMyhhwrTr9Up74xOACGdk2fBR1igd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TlKBRO+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlKBRO+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A81C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752620393;
	bh=PxCMREFztfnlFK+C9Sl1YEU00OmvAN5MhFpJk+CHIFo=;
	h=To:Subject:From:Date:From;
	b=TlKBRO+c01xM8UiDb7xFax2tGiy+iy8cQWTKPfP0UROVCOCloR+C7aPhAKf25cTin
	 q1KytZY2QeW27LxBqEDYpiQg89SBYQcwUqGciZMLe2//y2wkIXDb9kbb0Lf7fMCewr
	 RPQ1LxK1HH1JW5pBtLnB6Gz2XKyzLkZDELqOv8bnC3GJ+CA1K58zwPXFhQJ+swH/yd
	 b2dLJ+YXS5dl48fnu3alVRVTO4EGNu9pW87K/uhDZYkAGXUVI3yn/cIYy++yEDTPqn
	 QBXxtFjw78dSWcnbXWl4+hJOpzfUAqV1w13I/7AUixaxEuNVBs4uDysR9FbYOO3cOL
	 NhKCi7YzD6gbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9148DC83F27
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175262039358.16334.2997016079841642412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1931485b32b8850661fbc60d73fff9e7fa6ab3c1c29f91a810dda035be64f728
Date: Tue, 15 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752620393
