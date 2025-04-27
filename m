Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC8E2472BC
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745753394; cv=none; b=a69acuu6GjQ6cQWIqsIJuYznSK4uQ6TIlZJKsfPj5or0BZunjdC3Sq+ZuARj0KNcdnuAsvhSPlFqke30u+c4g95IPcylbCrjWRnCX0khTAzGqeVri3HMzv8/XKvaP+Vp9EB1m3tNp+S1VwDKcJ/dt1T+GshTOBTyKmGWqPp5gM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745753394; c=relaxed/simple;
	bh=jjFpwhFbf9RAwl394sYPJZpSCjOHVO8OKSBCMCNwbK0=;
	h=To:Subject:From:Message-Id:Date; b=SCpbnBAs5UUVWgLD4lIoQNlO61ekQG4OefXWnzq5pA2S0Wdl0oASETs6RdLCUQuXfO892SsfIcXukwK5sXjxgyBtJEnYQ/ik8R0HL31kZN6oHBew3rG/KXs5qIRT656p+ml1BNoPCa7LkayyHWVtOW2VsZFfy5bbwZSrnDIowzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNWvXNEz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNWvXNEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0158C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745753393;
	bh=jjFpwhFbf9RAwl394sYPJZpSCjOHVO8OKSBCMCNwbK0=;
	h=To:Subject:From:Date:From;
	b=sNWvXNEzIeV0ZhtsfUvro43V5vuMxEFeOSHWfGp5qDfjhV3a/QyDUTBbrNIXxDU5K
	 3odDHu0V5m42eppFM1X2OosCDdlX3B1MfYxvH68xV6hYQeDE3t+1qqk8yjPGc2TUAO
	 +nDdmwXA7c2F45f3YKyubOZJF66hIYrfcsuUrhQPu4LcdlK+dISI5DN66izXEJXQK7
	 Bhs0xWnRoYxy3D8cqcMV2es0yedZNlEfCXUnRgOgvIDlqS/rk1ANicS74Pg5p3UVCU
	 kziUPpNu5KOVBe1XyqB6G6/0RwE/Fooa/PUKs2coK8afgRhYEzq6w6ECCqZDKyaD7t
	 hWUV++jcwKHDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EECCC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174575339357.25572.10974396340069622791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a188f7c8eb0f1f307bebe85285f19f37b8c8cb5b7b2d6efc4da6514e663312bf
Date: Sun, 27 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745753393
