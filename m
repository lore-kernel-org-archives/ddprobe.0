Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEFF4A2D
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758237594; cv=none; b=LdQtENFqog2iUZ0gaWe1Q6MAtmt0tXG3o8thXPnuikEaG2hjgg5jTKO8xDAAq5HZdCbQZ0+AS29mFf6PTlg36JOP4EvJI+oCbVBBxGUpnpSAEHQy8ilD//IEZrOzPAT/ykweOEKl8DrjxmVDGjS3VBkUJvYefnBDCQH0DZlODPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758237594; c=relaxed/simple;
	bh=zAsdb+DncgKc7sHM7c2a4CjpL4kNi8ckAfw8Kl3sl+M=;
	h=To:Subject:From:Message-Id:Date; b=HmHEeiimA18A+qxGe0EEIg75vQnqU3M5mknxYnTNZTk2VKcKOH1/5/gGuyeuFtCk+4yCvhXSZrF+KK0qSwJc+rxoHEYX5KnWN9cjcq6Rn1eVZCrkDFBwqqVAHblN5ZJ28RbjpGCjzHfD2fGQaKcUWYn/qnSz0k4m7wl2fmar+cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gw/Uta4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gw/Uta4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA5FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758237593;
	bh=zAsdb+DncgKc7sHM7c2a4CjpL4kNi8ckAfw8Kl3sl+M=;
	h=To:Subject:From:Date:From;
	b=gw/Uta4vN5IDQyH+9tJiIwop/fETE2yCdjd9DdONo6+T/Ci4xYoC99TfXQwSKWxP+
	 A7EuPBi6fVqKiKaiMaqsN2XyCYbhYVmpWZaQXwx/guFeyRl7hpFlT+v2a/7KY9s+om
	 QrFdVYCwcP80U/h2wqPXwX/6I5eWAglKH6o3QB5hfkzKGk/TrPwipF/OaEm/2l+jRE
	 lbYdHpOJfc5d9Nw1F3eiALLCHIUYDREom6cAZhHnkERN0PWNW4QEwudCVj88xZPJ+7
	 iMwmwX+n7kZzOUEWQPdivzL1Iyt9NWIQj2+Vc/2KK1wOUEYawijiH09kW7SktCi7Nv
	 UcDVtqqT3w2Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DFECA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175823759358.20894.10611892907752637406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcf3ba0ba03c803e50184246a519fdab3bf6fb0e972a15e4f3663640360f18ef
Date: Thu, 18 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758237593
