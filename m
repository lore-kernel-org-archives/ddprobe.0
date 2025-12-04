Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA1127B32B
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 12:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764850973; cv=none; b=JZV2/HFESb10a3eXaHgwMZMAiWUGOyYfls9WAOjNcOSFnpDkUwFmTESnb2BrnUXxIo593lHU0OMZeo2cu1I+2B7NITzy1LWflgnPov8FOmVOdvSQxkZC8mNRJwwlTxpkS+MtLC5+66aCJnrHD8YJtwbwGLBrDguw93954twnIlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764850973; c=relaxed/simple;
	bh=bS/Nsh/iUJ53ls5ytQcT/+HZsX1VmNLoSb7+bystNw0=;
	h=To:Subject:From:Message-Id:Date; b=fOsGvqN3ddrgnOszGOfPfNRrAOxIk+j4bvc13ARRrE+axEMcC+b5u9A67fUvMX94M4zT4rhC+t84EXWkJlj30GaUMR0AvwGWVLpD+HdhU0lKu8BIbTDVJ25hcsGjSUFP+aTbIoHUyXxPnFbEpzrIZpr77BnUJOD5vdkQh+qB2pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B2sgLqqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B2sgLqqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75EBC113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 12:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764850973;
	bh=bS/Nsh/iUJ53ls5ytQcT/+HZsX1VmNLoSb7+bystNw0=;
	h=To:Subject:From:Date:From;
	b=B2sgLqqjl8OcdVABYvjtc9EqtZgolcz/+RPsviiKm/Sfqcff7mFcqDa/qwtociV2s
	 viA2O92PYFhR7m8DEgt7rJKTGE/2N3zRBifjbhQtAW86+uC9N/rNlfA1UBQaPY0aE8
	 tdkwnZtjz/n+i2FwKqhoESW0rrJgtmSAgT4SJIDumJ0s1/TfGxRnAZWcg3o/uoRPC5
	 HYMhYpDjILz1N64ozVN2jcVD1tJD+DQ+s+0N3/d9y0EjVgL8oDdJDwDBxs5/PfxXC7
	 O6KdhJWC0Zo/292L46uaZeHoznKRtP01YgPYiC3iBAli0lPXczmrW6jyZvVGfG+eGt
	 2rCOHqnV4dKFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94266D1F9D1
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 12:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176485097359.20864.10097868696691241965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62d9487b138bba2a1d3db71c5291381719617aa49c14fdf7cfbd60281a6a253f
Date: Thu, 04 Dec 2025 12:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764850973
