Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D8D12E7E
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727921754; cv=none; b=ftaAA32CLUbK8y1yQITDzPoiPlp41Myfg72gxrj+0quFCW5EEu2j/MttYAZUIWCTS1dRYxY+2L3tEpb2QZv2WHkwt/smadpTbBrrAccwn4mDwEahJ1Fl5apDup0ZDb3q5zE2epKNz6uxZuu8HtkK7JLcqwGC5+zh0W41bdehFu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727921754; c=relaxed/simple;
	bh=1NOZFpBDSfYtbCD+neU2ADKXg2/IxwKBlGJLoDsItZg=;
	h=To:Subject:From:Message-Id:Date; b=pdKGQO/jguS0RyRL8ZTSazij5s+sWIwcJgEidH1uO0SuaNIc0qxUkeGotyCelZVDkwgSm6f+/fRKby+CkR4QjiVthTHeAVdwq32bIjUMXp8iwp03wpmVmmj5S43wxlzXEnLMBUeTESzRkZtI0VgFMG3B47DULa6L/dd3RNYj3ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JfD3G7A9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JfD3G7A9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30EFC4CECE
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727921753;
	bh=1NOZFpBDSfYtbCD+neU2ADKXg2/IxwKBlGJLoDsItZg=;
	h=To:Subject:From:Date:From;
	b=JfD3G7A9dZYo/xDmOHHuK/xRI5VrIh8G58/ZHbO+DYdj/RgbTra+GBlCZMtpegKyz
	 9EnS4ED4hyEJ/5TrnuVuOKLEuSFQG+l+WXEbN+ZBLwyYJvZG9oZJERXg1XnQ/46UbL
	 BqLEkUtvlY57M5Xafapu5ZRPstEDJQMenYMDXdvpaypFZkYcsBuL/5ZhtHQEkhy0Nf
	 VHYVUtqy4gRvafYTXlYF4/2RdJrm6HKkhUfAXizClN2RN7wkoLAkWoq4i0hNYs9Ft7
	 fWxHMbz7v4Mkto4Z+yRrxAz97O+AuoBMvC1wHzli0NRpXe8jx1EeqMAeHuINlqtK7o
	 S0DXm+k1maL/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA164CF854E
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172792175365.18431.2284340425215937321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 703d61ae25d2a928c9b980705794b00b5ecdcbf27a85a5b88525a97685e6d3fb
Date: Thu, 03 Oct 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727921753
