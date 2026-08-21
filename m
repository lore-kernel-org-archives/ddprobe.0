Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A30739A4AA
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787356234; cv=none; b=RhVpzGlg1iCWXt9mjjUUs6Ar51HH+e8cj9sRdTz1dVm3XQJpZc5WtvD+myhF59MxU9nHb+hRZ2T2GnPNIAPM8uGZvnKya/mHlJAhvRHrEqdiJ6IzXiTe8hf5PZYOZaZKViP7qFzG625J4PNWNNyFONH9s4Gs0jc6R1CcxqKcURc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787356234; c=relaxed/simple;
	bh=xVtPjOnQ127C3Km8WKWKifukMoENZVVEyHc0UgRmxJI=;
	h=To:Subject:From:Message-Id:Date; b=mUPl/4hYA+c86csk6U4Qs28qkGr3LEsQFCsb01NeNsFSArRiDJGFjpllf4Z9a3bAQx6yFfDZmYkOKlauMhp24V9yo043YZRMMbKCN0IC5rCKPO67/3jQCkyPx0Jd0TmoY3HP5WHkoab7op/Q5EYFuTBOvS57o0S99yxKwap4cx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ru4bCZBF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ru4bCZBF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEACFC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787356233;
	bh=xVtPjOnQ127C3Km8WKWKifukMoENZVVEyHc0UgRmxJI=;
	h=To:Subject:From:Date:From;
	b=Ru4bCZBF2brGP5ZiICuJcr7kY/aV42AIxozl+eH8xVLY025fL8lJqdAulRvjlx5Z5
	 OYac51R1qhD3BjYLFjcdGjPr+kzNuYgrVKlxMwIDxEzB6CSItWJnfx57EPdlgsHAHY
	 9HrSHLjGs0MQytD8omrqHypKy9ODsX8ebVmafj/kZuu88zoQnyw+AWhtEgfp04GZEZ
	 zNSZFbts2hLt67KmGcxBLKNei9CWqoiHOslBdur0RUKGMmXMXzFJgVqrRAph+i4qev
	 1ngN8J5bgviN2alY0ZsprB+vRmxpitNhjc6YkWQJAye5pnsEmGJUeRC+yzgXc6Rd+j
	 M/x5+UXNwniqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE07C5DF94
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178735623369.26821.9505376916684937329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73c895781263f20718c7284b84a9c14b8ceb70d23dd47ced29058cdff16d20ba
Date: Fri, 21 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787356233
