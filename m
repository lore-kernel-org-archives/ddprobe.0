Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283CC35957
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771753494; cv=none; b=qa1W/ihcaBuCmmA293z1Z+xw7VrGwLC5lbf52hYhaW2PZxu6p5mQATXSy5ri7qWCpGOzLwwvQycTN8voH/Ro+HfiHwSU2/KfSsVYaIjlt4L5z5SP6GCSNzYEMXSl9qQUGGysWk9B9s4XArEeYHUmEhYRl2IA24wbCYUdyY1C2+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771753494; c=relaxed/simple;
	bh=w1lRRQJQH/sJdVgH749p/VSB9K+kw3gM8ZUVAH0glys=;
	h=To:Subject:From:Message-Id:Date; b=OUZ7oOM32l3QQUVvZ1rdL4pFVtpIfutpOVX8GmMvVek5fft+5Ao44K2J7wcFX4cPsfUOeXaTjs7kjNYpw/y3SDyS4EZG0mnQusfdTUoHi2FZokHPo1fLL+9edC7Vedrbuj9gfgbp+9TZekttdrHEbiLhj8BebDxbeq8Nd/o4Buo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2C3WMlm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2C3WMlm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF0DC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771753493;
	bh=w1lRRQJQH/sJdVgH749p/VSB9K+kw3gM8ZUVAH0glys=;
	h=To:Subject:From:Date:From;
	b=U2C3WMlm6FmKTb97nk6CCGKAwB7T0GRJqDgZYT2MquQOK1zYWKKAZ6oaQKRmZZTC3
	 squxhAgGjEJ5r+f3No8VQKQ2fLCegrRn8f5drtbILOUhwvsQFC+rmuRBLmNy8+eNDP
	 0jjhekt9wWYwK/btAgNgtH3UqGvrSXuAPXNWIilLjHDqBMT/flfOk0S6vACNLSlAoP
	 RSVTvvDfyvWd4iC+xYpiQUzu9tL6dI4ru2/4SxH3x/2MHcR7L/+kciOCvrnjxxr2sn
	 jXUiAHfXPQNhmJASyUneLm8QW/sTjnqaHoqxQPhF7IWdUduBZb+U4BWzsiPlwoLnWE
	 Dy+raH/JQYmEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9999CC624D5
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177175349358.23225.8265219036646354496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc4a59fa54e7ef5a1e3e203d60cd51f48bd5b223aa2ad6edaa5b0caa2ad3bf98
Date: Sun, 22 Feb 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771753493
