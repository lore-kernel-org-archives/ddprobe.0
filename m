Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0D815ECCC
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777126054; cv=none; b=I1xT4Kq9bTEctDYtHwoIBMQraQ4kZWvbmVSxcLdIeJm8O+8xttf0qgvcXjQlIiIxK54baZLkzewG4eyTQ5zajid58XFxumFX+GDAtUj7DxwKrhiw8vqNuYnSpmI7BhGs920BRa0n47WQlSfNZUbtVp3g9Wt/2p9wiW7JAdq2xdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777126054; c=relaxed/simple;
	bh=D0IZ0mgn1vIY+dO9VZ0ngB6q+rJIcc8rL63ZG/I17uA=;
	h=To:Subject:From:Message-Id:Date; b=XleCPKrCFnlLbH9Wbz9Xy9UBUCnnL6VDkvZTPSpAR3rZQzg+t2exqWL6DeEjdI3/Zvoa4HdZkJsBQtj+SZtHUcMB9Xxv6EpNkJnf+cp8Nr/x7ZaAj4MjZ1Bgq8L1xwbq6Vp5QBbX7sw+qP8Kdz4Mj/Fn8pc4Fi6+hZpjQ2Ss5pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qG3VjIec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qG3VjIec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C00C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777126053;
	bh=D0IZ0mgn1vIY+dO9VZ0ngB6q+rJIcc8rL63ZG/I17uA=;
	h=To:Subject:From:Date:From;
	b=qG3VjIec4dvPzvh46+HGjNS2g2KgPWcCFv6Wa9/HCV2w8NUxkc4FEZo2sX8Am6Y4h
	 l7sa/x0IKZzzYVfYRGpVBTeUlNHOakBQldfVliqm9b+BX/GSR4aqSI/ONDCFJjdTHx
	 40LLxUKXW0PpYAfLD7rllWfNEmrY0kunAxGfvpvezaAFFFxB4ZMHGSQhe44yWk+rlt
	 8T+8+JeL8IAOXl/cLuUKnqAHkgmaCXNJ7A7RZsYHXwCcc+B9rERuDVVbEAzLutGkG3
	 7RE9TFYQYvGMgicUDdB6BwEL+mJ6u71/YCWGeY9w6/s0iZYFBYNbJK+Vf9WT13GG9i
	 SeGnOsZFN+x5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFACFFF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177712605368.10993.9205199793628742471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e603f174d61dbbfae8fdddf46428dfdf1cff977e939bce30cea1b1bbe97697
Date: Sat, 25 Apr 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777126053
