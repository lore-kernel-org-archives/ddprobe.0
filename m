Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440021AE016
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728080754; cv=none; b=iEYvqXlKbPQjmGLzO6XqhV4HxeZm+hP/e9XiNVRLr63pVlVmQlzCnvmUXiURxbeoQpkYWXus0EJpidiSlALEh5vt+IRiOKyoGaiSP5GxwW6cTmK0QRG35RqlX6BWvfHJW3Dan/DR1I4jjLEomJoUfgjDdJbTttEvRNaWn3XRdK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728080754; c=relaxed/simple;
	bh=I1t2kIXfd0S40K1jGBBq9ha95ReGVUi6GEYlZpQVqNc=;
	h=To:Subject:From:Message-Id:Date; b=rSQW4KXJyR/203COJ2+LI6zMJJXoyLksqo4CBk1DTffutE+oQBMCPc/lS2DFBM4J6iv/S1VqdfhA8+EQoqx1oCdBC7WPeD0ApXvgWjf+cEW3ZS0AoqNZeqyqBiZrRgfXVkyL3ghJU6xiuAmGBVTiZOX3Xd7bXUi3gWhcFf0St4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjGFLiIw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjGFLiIw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2FB6C4CECC
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728080753;
	bh=I1t2kIXfd0S40K1jGBBq9ha95ReGVUi6GEYlZpQVqNc=;
	h=To:Subject:From:Date:From;
	b=kjGFLiIwmgiYyBinRmBtafxk1mLeWjfeneoYcHjFsfm7IgHx4j4ZOruTlUBMI5q6x
	 dLmCitkQnry7lsjObnHG8TVHBkpJcuqT0VavN3F4CiHlgYjgZ0EMW9HYW8rBUBjT45
	 kqNcBI116/cT2N5llv9fz9VqcCIoTE2wWYifdPl0Ed3Wzaild6ZKBNb4yy4/oToMa8
	 1wJhsYPOpjPRKJnd4/p062UBmZX6A1BiMRB/zW6Nvgg2cB7TkzU6Jx/JQZq48moCx0
	 M/OXZiaMt24MgLRE+EOtdJ1YldBJTJOODvjHTgkv06MX05H45AFkdD+xO0Lzt8Oork
	 VFyYG6taaN5WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDA6CF8860
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172808075364.5973.7053150999834817773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed8695f19d83eaad7bb1612df8599bbbeb1feb9100af5186196593ff3c138209
Date: Fri, 04 Oct 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728080753
