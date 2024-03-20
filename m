Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE8640863
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710943097; cv=none; b=ZQWd6P2+1dOIuZsGDk3QWpKyJu4rsHWMIbUtFXXu93vnnOEoTEUGCJjJJlBsq4CDapnHIEvpvpar7C9GdeExYUZcJRREi6FBCNfnY4pieXE6B351qDPbyD9hs4Wc3KYcXxWGlhWDztRZLtXkSNiuJmxxhaoDwHp3xbKW/Mpjx78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710943097; c=relaxed/simple;
	bh=ZzAdOKFJaH9aiyMQ1lHmGLwcgnDMjdeJ8cX7vios3vg=;
	h=To:Subject:From:Message-Id:Date; b=MBuMzsxyRvCzOvkzDtlbQ++IIarp6qcQV8ndtFb++106Gj+ugog+2ro94SzGsPhQ1L3XVi4jh3Vh3+WSITEZZc0OhD9QBxkS46N+j1QU4rQeCq/BpbSOxG1UvKqQ/YMYtJc1SNCCqBJvCD23pyVB9YlrmstYf7qQ9zTglX/iAhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ED777i2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ED777i2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68A43C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710943096;
	bh=ZzAdOKFJaH9aiyMQ1lHmGLwcgnDMjdeJ8cX7vios3vg=;
	h=To:Subject:From:Date:From;
	b=ED777i2A3ukUoK8BfJxWrvQ0A4L2kZ5dsw5WfgKnS42XyDgZ1VUjkpusjTV05282G
	 6HSnjs2YouoAZ8MAP43n/ejKT5c3FoyiuNojs7egN1PBVcGf+bZ2ApOzOg34Ou/oNT
	 FxL4o/E4BqeSfJZt3c4HXZIlfJvnjR+X68vnXPc6St9T+fvUyKhX+cFcgb80wUyQz+
	 RizBf/DdfGmPZKNmCv7Xh7UVEQSgfIj5/fUZn/nyHZHhwA9fCWvGDpEZKee6JnTGG1
	 b1sPIR3Jfb8cMzEkkzKifj6yP0kmyRD/Ja4kqxJdukp7fL8UnamKlNzQChOng52kxN
	 etK32gzekv4pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B518C6FD1F
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171094309636.15369.3243320187674468288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93f3fe115d35329595edff906640072684bba27c6f6a825a936d9dfde911ada2
Date: Wed, 20 Mar 2024 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710943096
