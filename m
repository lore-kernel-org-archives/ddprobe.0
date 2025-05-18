Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B1D8615A
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747555794; cv=none; b=trXiWTdMBESP9QKPLlXiWmFG4zUupr3Pnm9czu+vyVd1z3IXKZUwRmnaczR3TF8iAZzJZaqHVzTSAwlDrwRArwgnzXzow/FdQLvvUtB9I4D9VqjKKBJeVU3FgFosPhhlcBrgwmpEHcRfq/qdUgo1h2rsnzzBWgN6AM+VLGy2TQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747555794; c=relaxed/simple;
	bh=FXcBGbVTeIypZSIVpN+cF4kJAFs5j8IND5ceruGqE68=;
	h=To:Subject:From:Message-Id:Date; b=sYaKdSQM8j/6H7FoDyp/xSq4ckXZkV1aAeow9DUNJHJqn8uIzPk0yfCm+t9uxqr6e5xc+VqHYEE5s7aYOkO6d2AWR0XKe/NMIVNpM9JXCZx55+qHRGKgQHEMPhUKK/9Izbn5M0uvir1iANLoZ8ClQKC7BJyojxV3rIA+v4bhzYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktI7934G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktI7934G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A334EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747555793;
	bh=FXcBGbVTeIypZSIVpN+cF4kJAFs5j8IND5ceruGqE68=;
	h=To:Subject:From:Date:From;
	b=ktI7934GeLpIFOPzS/sJYA4bMJX2/uhiUga9J0IvfURNoeK8UDQyFA9AnZPBX/MNy
	 R4n1ilxiKNEYtgZuMfD8ONetKz1+hpurkbsd/gGvG8zwM9HeSSOncSVO6g+lIj3PoG
	 CwJuRnP0xLwRpgmYQYAidTD5ui+FRL4pAb0VyJYL/1aNxGH5KkM0tFfhQqDz1gWgVh
	 nPL83k6egLy7g+ZjUYcwRsJSBeX2r+2rRA7D/52osf4L8DDti2RZd/ov6P14+n0QfV
	 hJp3wLlN2Q1v8SJgRZQ4udDzEPaUgNhgpSZUJX4VQjXGFDEr5WNM4REdiyzs2jD5ZX
	 zfiDfbtf6oGIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F41DC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174755579357.30582.4504721769123481884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef7dba89e0b6fb6b6edd0411ad0de42c7c2de6d5b5e2b9e8c75a1a61e4e49b5
Date: Sun, 18 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747555793
