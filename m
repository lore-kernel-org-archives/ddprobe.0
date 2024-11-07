Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F60126C01
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730975754; cv=none; b=p2KKagVMNalCEfZoV42uxQ6LzuarYSDM960GvhExeFF89mUttZRrXZqO8QfJXPOWmhxLNnzvomU9BginzTmBQCR2En/zdjmSdA1Q+zr5MpNbyoc6BzOAqN5SKWWuCcg2EV3HEyIppC4gldjjmejLpXeGCSaOmrusUNO8rT8A8Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730975754; c=relaxed/simple;
	bh=UkCqNoI3L7XrbUay+PeId4mQkT5sWXGDKbETm3+sCTQ=;
	h=To:Subject:From:Message-Id:Date; b=FBFnJEwTbGBDBrI5v/MhKLWgWq4KH0/3mFNtVMgTqZCu3vBmOu+IqeKE6GjyCHS1SEGqqTcFhRogb5Po9EBYXg41t2BY85jGLptD84TQeqgbe8nLGdNaIzCGhSoC2ktcoYIEc3JKzBsVzNtBn2tXLVd28QlOOkZdODF3UxCo99M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VG0fs+3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VG0fs+3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8859C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730975753;
	bh=UkCqNoI3L7XrbUay+PeId4mQkT5sWXGDKbETm3+sCTQ=;
	h=To:Subject:From:Date:From;
	b=VG0fs+3nah2wjbL/BSwb4EAa3IHPxk9ed+vDpoVLHEtPawaroaxflnofAXhsI6G3M
	 gA+75V5SQanVJ9Tjy+fnG52IJrKvDhH0jFcSfL7QiMANpcoe6WTRHxCe7jaN7FJN9H
	 E5RPuFdrc0O63+4gZOXV1ey2bv06rJpmb7o/PD6CYL7HLzrFoCKRoU7PWqPjgI8RiW
	 s/TsLrN5yESRLYS14wg5y3Z8vGSLsX8EwAFDdOE2bP1eeXeHQF0JydA+RkQHokf1gY
	 l4fsYwbZRKr60Vo23aS6yxxG4iL7ejwQpanEUTWGzqgcgngmnXgOTGTNzg7krEpuuP
	 lP9nFLGy8z/Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B3BD35E5D
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173097575358.7666.3357649003317858795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54540a98b1df6938c1595c5bb14b2736b9011cc592e55863e8416a4c3a4b8cc4
Date: Thu, 07 Nov 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730975753
