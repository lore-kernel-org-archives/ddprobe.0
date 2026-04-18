Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2578C40DFC2
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776510454; cv=none; b=BxouhPDDT0NcYKsxmCtBwCVxGBM33qvn+6L2cbwPooLkHpONydxfMbj+a5WvmnzjDECCjrdj7hI8ZcWeD7JBYk52RR7oQrcyuyCYVIEqOXVBuc+OE8jjuDZiFB4/NXT3AL5kmZlt63ZT5mbb8wYnG9EYNkIEuXiCDnEMk6skIxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776510454; c=relaxed/simple;
	bh=b6DJp2rFNjhkDOFPRHsaPl5HIO8cdlHHJEHq1meg26M=;
	h=To:Subject:From:Message-Id:Date; b=Tty8WewN2D70ginC6fOB6G1QkRLXD32034MJRQmlFyN/3d9juL3IanjAOErh0HhybukGmBFAtL/lFe8VU2IKbNKSSsHlznUwnePN2avPlTapvwLqIeL54ywVJFO0CcP+qIDY/dSF9r6TV0GwpGFvwEFRVTvIZg/CgI58UY9awB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0q4Mflu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0q4Mflu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C04FCC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776510453;
	bh=b6DJp2rFNjhkDOFPRHsaPl5HIO8cdlHHJEHq1meg26M=;
	h=To:Subject:From:Date:From;
	b=c0q4MflutjODGMHEJxRxxCl03rk5QAA2e1jqG+Gb5gE8H1QICLXqf43rXI2V6B0V+
	 9eBQiJYMXQOXhpZVYpTCSgZaixgVL9W7dp3LH+sx5L+Z6qT7IbA2l9YlcGkD5U5Gl9
	 1AQTAxeJnVIgVp0qY5QonoKnh5sXPe1qQcS/AbOSYEJNJJcsrJP5U/M7TYOmjj3TcU
	 Nx56NOC1gf75MrIm+dYUp+PtGZJBLbsDKpqay8rDZESgfbycEp5aZutSryfmAL45fU
	 Yu90iqXJyLbK/h/Cvk+1ys8xrSV5UQ0QD320AbwpmygFlNArzcudumuq0nJLOapahc
	 9kfeBMGG95s7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6B8F99C73
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177651045368.32487.15762329319582616708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b789b04f4833d1d955e39ed5b13e59bcd43452615e43042c19934989a40b4556
Date: Sat, 18 Apr 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776510453
