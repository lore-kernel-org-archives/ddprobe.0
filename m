Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3861C347FCC
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769063034; cv=none; b=Xxv8dRnSVCSjRkoaHm1e8DTV6o23Go+OD+nK5fwr636vzvJEgqaTtIwvXfG53mPW9kjZZtl5IArxisp9+KF7L9Sazj/sSct/T5dsIxM+JnC5bVHx4mSt+pQIkLTrNVJ3+aLVfO686IlRMYp6lM1vQnmH6FP1d782jvo+CiCiUdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769063034; c=relaxed/simple;
	bh=+i71QphJl5B+OEgXKNdMTzAMZoA/MgQjtnEYFucgpQI=;
	h=To:Subject:From:Message-Id:Date; b=KnqleKWt3XWtCBhr61uN/6gVpZvtkBCwDy/e+PO1RB0gHhgss79MW4vIO/FLRQUvqcxhiGiU5Ln8Cbwt3J5rZ+O44+uPmwj8LDrvv46QWMRPa6l6ib6fZ7BdYODESvXMbBpVPxuPdItrvNG6ReRIY5OtBwB/+GY5k8sF3Spg1h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukGWl/E6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukGWl/E6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F51C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769063033;
	bh=+i71QphJl5B+OEgXKNdMTzAMZoA/MgQjtnEYFucgpQI=;
	h=To:Subject:From:Date:From;
	b=ukGWl/E66OOevc+57BhwO+HvFf7eIv9SVdx5nZk+1ACsSyfwcPOcf2HXagcl6XuJt
	 tDZ3ZUJpW3xsvUwbK5o72c5r2kSaD3xcG8M1aPQ6S+O6U7winIbVjD4BIhqU9qAni+
	 +w++0uyvfFH5IWKnX+W8PhPkHyX89tlavxZ5JYkyfdw6tuWPQE5BjT5o/QqLqP8jN+
	 5lOmLbAT4GvIG47fXxIuaXcGFD/Oa0rovMNzDXIwpLwjE63H21bzGZRC0fXYWBoX0o
	 q0EWHx+2uOC3tUjuEiA4tMDcpWLVVmV9OIzuJ4uC2bS/bOx8FdArSqg5VyoyjESp3T
	 VwRkcO51JNVJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D078C44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176906303363.27638.1466692920303447993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33c3ce770835fcd9635a18dd8d116ce293f5f26a87b2910d0c08a01f44482b86
Date: Thu, 22 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769063033
