Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A01322A4F6
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757473794; cv=none; b=QWoTQW6LecTiUXicepR7Z+G05a4L6O4kf/l4paTtBQgG1HfbgAUp+azJdPTy56H2zv4PgwRULqIDQ402pjZdpWRJOaMZP8u0fbQSwyieiKWj8v+Zjm5wNIFyvyH0AxBq+f0weRcjOVa9xje1FYdH0jelAlczvxLw7OyE/n7+gVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757473794; c=relaxed/simple;
	bh=tBt0zVJIZMRZfqWWWcoB2/YXFMEsxJNnstq/7m3dk84=;
	h=To:Subject:From:Message-Id:Date; b=W24OcTF58mE1o/ZV3jZGoAYSATrrnMYZqmYwjR8NCSurlJJeNGgE0WT6E7M9ZW4L8lUwXGXjIAYyh8/PdrwfCI2Y+j4susqq/a2ksbRZY1gu19bBS1DMVeLnQyzBmzJSOf/toiwfWYTJx5eDbS+v0OhA9seI2ALCHdGdkk6pR4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KRpjT4fL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRpjT4fL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BFDC4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757473793;
	bh=tBt0zVJIZMRZfqWWWcoB2/YXFMEsxJNnstq/7m3dk84=;
	h=To:Subject:From:Date:From;
	b=KRpjT4fLWCHd+Z/W3yQJa9kyzt4zqVkO6Y6rdxfBCCyhVoAXDSMcYVP0TzwxV3JE6
	 EAc4CG3u52gjKdZInfyhv8L/4KpH7r4pIXqi920FCc4ZPGyOknLtbTZ/0Bo3pVAHEJ
	 qEN+ZxgxKJBc1R43ESP4retgE+Fg/xsU1xWsWb8PcTOcB2lnYTnHbF1ckHxXHk0mWb
	 Ft1A1wec2ZwQi2OTwyPGovfyRqFRMao+Jbx0+AICeL+puqk/j/hLjkQuOGtpGELKMZ
	 YgdqBoJ2GrywfLhg5ukcWQaZNkUHGdYX+GEboMxl1r2nxBQd7sikXkPGmRsaBaAhEa
	 6L5wIezprVK6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95777CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175747379359.19396.15536286176459962969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5161702c0dafd75e752d0eb82e36005cdcad32c56915b83cfd6a70dc453104d0
Date: Wed, 10 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757473793
