Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 658F137757A
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790896234; cv=none; b=hojuIjrrRqc9A9qUP2yMbF5PsLeF4801e4rpmhIinLFrSGShI34RycbC8wA2P18VWPpp/JbI9QVLp1lrz8NeU4Gsr7axBHUmYTGSq3+va0grqXSUKJW0yYwn7mFl7T2ds0cVAWC7zTaZm5/9ziqLPbzJ4oKy0FhjkX0a6TdVVaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790896234; c=relaxed/simple;
	bh=0C7XX1bbr88Ibuy9QgxadNjx6NjrvOfjXB6TNY4xftk=;
	h=To:Subject:From:Message-Id:Date; b=RJLmShakQPBE9x6N3x1cHRHuy1BTwtrMmc2TolBQzXM/WhXd/v5EzVqcL38NkmIPtgtw5AEw4S7WUgW/J6l99Hi8pXMy456Jg5PSwBEYKOyNtcOQdfHdmX283CqOke20+J7f7rdQ+BPFgzXErbJgITKAcli4ec2UiZZ35XJ0yRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8I+l3xc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8I+l3xc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE123C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790896233;
	bh=0C7XX1bbr88Ibuy9QgxadNjx6NjrvOfjXB6TNY4xftk=;
	h=To:Subject:From:Date:From;
	b=L8I+l3xcXNNVMv6cfNeiNKIJETygO9jQfbEAbfkX/+Y5vrrdXHe6+mvoa0Mb9j4df
	 MeoVJtvpIOqQFlTdvK+mXowKXUU2eeb6lFrebOXDcAk7aXtcmwp1k2wAxoADCPy62M
	 EctD7tKd6RvVvMP/TleKPjQQ2dOmyR58KrA4liJPzdD60uTy0S2hT5zeG4v2Hl41GD
	 QluSm+6XArPa0L2z1OwYfuwaqSlk/c6ehVpInmerF+MylgD9+FqRWywYL1H1KkRZl/
	 s4YohmJVcKk/ur1qBbNhqFwmi3uaxjPODrunMnet+od28Oe9JCe70kwlQB8JMv4lGv
	 kWhat9CKI3xcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA749CA5FD4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179089623368.1574.4744194795923401811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f01e118c15b6ae20bb15f4adbd42d1fef537c0227daa418e1558d0d9ecdc1e0
Date: Thu, 01 Oct 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790896233
