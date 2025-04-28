Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DE1155398
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745855994; cv=none; b=dPpvw48T+22+pXBqBNShwDB+AxjjvvSdyiDvQf5/Srev6nhOyzW5jqt0jx7godekMNVNAYy7YIJYHuxhtRVxW+JI/Z0hRcbFBwgmmRL8NahhQcrtUYbwQDYa5X2NTI0fcpHlhj+OPYbqpiJqW9gY4OdJhPZgk2D2bBRHad0vKkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745855994; c=relaxed/simple;
	bh=QIsjADrygbq36JPqHus7WxxPyXA0bBGcCYZEH646isQ=;
	h=To:Subject:From:Message-Id:Date; b=bdLwFn/FL7IJEJMAutMdqEZfW1k225nypGjLHrRZxvxVhPunh8sIJzNcoG4aOjscXDLbc2ONcssLDqGGTqBvvVQ5+2K2zVnh/aZWXnyEYZQ893dDEH0qFr6x0r+FbIhtKx1ncQcZwt6dJGzZjsRNFdA0pg5N+CejAzmEGSB3T9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8VejH9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8VejH9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3B2C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745855993;
	bh=QIsjADrygbq36JPqHus7WxxPyXA0bBGcCYZEH646isQ=;
	h=To:Subject:From:Date:From;
	b=j8VejH9Js1xWAC7rrflPMFb5Htp8WBRnlGgdP55L1RWvw2IpGcWWog6U4x+/w1cth
	 4OcxWDxZFh8uhkDX8mT5ROmt62BMP8zM4y5XYYbje0xlOqq/Nva/sAA+xBtV1KNqPh
	 jeA2Zyb27bo2datB22+sv49T3j++O0vZIQw9upV5+FqVMM4DUh05Aiw0TnZT6hH7ft
	 uJKt2EhIIbJ/AiI4fbZ0MuO1kcfkva9OIM6t/ar4E0u3kfv933TWCZiqsKI+ZQQrtt
	 0v157gFOfE2dnN0yxnSUsr/OrCvwTWJRZW5xs44QsXkiWmaBVOdSsGLjqGiDxcSvta
	 GrKCs0dhu9P1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5D6C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174585599357.32220.12967109425529717499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ac0d4145f3b8a0ddc3c3106f3ac35c54c578ba10d9b789c93d926b2466fcbb
Date: Mon, 28 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745855993
