Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130AF2103
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709972897; cv=none; b=q5fZKIHtu1FzmNb0I93qxVHyD0oHbembaYCE4bwWF+U3lcpoJ1y9JcFVdz5wCqTIMlZJdfJ2sswKAolL8tATjpWcJef89YsupqZN3sDGVynmupOjdOqO1T4IF5eMQ2LqVUPfHGiMB4UCcFhNxtkbLB0glRCoj0GFskvgYjPa8fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709972897; c=relaxed/simple;
	bh=ZNY0Cv8meXHyFCnhTAGTwPtXYa+Yq6MGDc88euJUd6Y=;
	h=To:Subject:From:Message-Id:Date; b=rkGP5KxGpUywJ6pwM8M0QhKsy6bbCRmtOOEGpLnp+fRn4v/D9dL9Kb8mn3K2cW6WSHsQHVmcvQ9Rg8ExYXWe9DGNgJUphay9DKixBy7Orrv5kj2DIfAwgpPf0oj8irfETlvjMMrX+dd5H/dJNuWkr/m6rPp102zlhtD7rnBuX2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+VP9TQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+VP9TQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 856D0C433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709972896;
	bh=ZNY0Cv8meXHyFCnhTAGTwPtXYa+Yq6MGDc88euJUd6Y=;
	h=To:Subject:From:Date:From;
	b=Z+VP9TQSmClcYpUQ2qrR+ckHgFs+QGdrqOWCgHiilR44bI/5JVtEs8BhCjvY0km7H
	 ppt74/GaathguoUnxXYCDd0+gtnK5JOu1ZZ/U5CVNNwpJsEYhrA0CqFHPx/49tXabI
	 7qpBd4a91zdhifHSrpKLpILH4ASRwjrrfElZK+Ob6EVw9uA6KA4FfNx0Od9xk+PAlQ
	 pEj8lGGEx9RaPi48DsH+zx/Uxm4eoOK8OiS4eRWK2CFsxVwAelER6hVszK8R/P6Yjb
	 SJ9qY6aOXytK8emCieVWLlsqAD+UTEjvopwDKRlWsYRIIBHyYWD8QEOv97h4sWFvY4
	 MUidr0hmX8pZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68223C54798
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170997289639.7135.1656789994416322247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd882c4f8e1c965008d3a17cb2ec52949874c10c7c5454dd3984380f0642dc7c
Date: Sat, 09 Mar 2024 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709972896
