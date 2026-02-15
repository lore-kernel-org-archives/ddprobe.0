Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206B9261B6D
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771194294; cv=none; b=rB5oSa9dDauPE1jqkvuL1I3VTOvpaYVj0CcdCgmDvexAT9Ncv/i52AZLdgQiAbg+dGflIqVOOwOhJ9Q62TI+2nQYLXiJiZSmOp4plJUHnvL8Az91tnww+YJQwLGaM2XTLChhVt25dc/UKm7jMHAXWyCSXVLI23e4Lq/qUUS95IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771194294; c=relaxed/simple;
	bh=PiHkSR/Y+CfmTCnjrexzixCdyL3SSNMMqz0E5OEhUX8=;
	h=To:Subject:From:Message-Id:Date; b=gH8iN9VlvXCqTIq8QMUqfuyDtWAtQVaCU3KVoL02WflNVIZna26L85Rmux+t1oiTqT0qQv2JNSbH8FWP19ZQacr39/rTPRtfxm51LW0mJWj+cYrDYy/exsLURFJ/S6f+WOcjndaLMUi6Zjbvzjy1Y1samJvpETbtIYT2B6COr60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNXCg2KW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNXCg2KW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9498C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771194293;
	bh=PiHkSR/Y+CfmTCnjrexzixCdyL3SSNMMqz0E5OEhUX8=;
	h=To:Subject:From:Date:From;
	b=WNXCg2KWLXQtbzi0DsYPQ92a1A6D8gU953t9dgrvQ2mENNx9UKvzZ8WHgFCy5Y1I6
	 rqauLVusYKYqEYklZ6aa6WxQVzLNhnWpVKCj5/FB6p01A5tAOaaa5h+bdBn4W/xV21
	 6PUIs1Wx7+nXkF8OwSd9qF2+mfhr/DL/yiWrR1gnys5DbizYxfUIyDK7YKu5/qSVg5
	 ia0lRcGjjfgV4U4+Thj7djVxOIpbNvAHXCePAOiMdPC1tHeTLVEVJ0DdMsMopuSHtI
	 pYfNJ2sA9ZJcF1JnZHvizEHGfsVMCbZuYLQcetUrNydVG02nMxJGGR5Z1zwdvw4wKS
	 rQxXJ0u4Dl6YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A84E63F19
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177119429359.14348.1433786924550025809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dda3bb38725052f134887ec8f53269453945027f05acf537cebd370acc30580e
Date: Sun, 15 Feb 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771194293
