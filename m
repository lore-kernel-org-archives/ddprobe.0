Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECB8329C60
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 13:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783689514; cv=none; b=WX+yfsR5OZxeSCN1U7eNZ5oSBp9sVMOW9VCWTknojwzzHZ36Rpo201hpmWYliAJYcsSuxHi3x9Xdnoa/uxFdPWJXl115Lxsh6iUM4hHu1S6YDwQQE7sUY7m8muaaEfW1+WOaawBrQ1yQgNkgRNbx5aEyV9IHAZkXja6T9JtK8JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783689514; c=relaxed/simple;
	bh=9NuOYnbA2FwlwsBn+HEJHYBeYQrBL+Stx2ZBGrALtEY=;
	h=To:Subject:From:Message-Id:Date; b=aVbXBN+1tHYBoeDK87+tnCA7JKzymzDnjddwQWWVt0bV4mmuuua2Fn0QODzaPPBGdrpgZY36tqgnMX/+GocJs6ptzgu8K9HNQhWLPt4x9QEEJef0laeUyg8zqfCKLs3ULd/QlMTQUtI/bXcTlYBrODrJAw2k8/f9pIR2z5INQ8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GE5YF5g0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GE5YF5g0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE12C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783689513;
	bh=9NuOYnbA2FwlwsBn+HEJHYBeYQrBL+Stx2ZBGrALtEY=;
	h=To:Subject:From:Date:From;
	b=GE5YF5g0DBgGqtDe9K9vQPL10+hkw2UcxmcdcWdnKyCpouNJkwbZTqnpws+QuLRv+
	 VWkfGlFn8GBTPuI/aeOOBCRjxvBa0IgHgJVrXOA1aFpP7qzkrBq4016AxXvTtozv58
	 g1hJPPfHmvVnQ3ZhITrv50jwjGhPpHxfaK6zqEW4MFJle4PTiclzR51sdPDP80L+qS
	 bOGOiry/pbw3u1rx2foKWzG4dboa6l03XZLuOV5ublppncd0Q6eWkw/GFza/+YWxWv
	 fbWO1haWxODbSxvJcBDS7EUOTjOa8krDh/vE4dCJwbH8hAiyEzKoHV2dywwIqmJ93N
	 aLKkaJ/sTYFgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90F8C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178368951368.14913.10574842902642294231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93e8e6871fadfeb04d4730f3bdec857edac87474b9d2b1bfb060186d25925aeb
Date: Fri, 10 Jul 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783689513
