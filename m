Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25ED2F50F
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762118994; cv=none; b=oJXLGh+CGvgZW5Z3WtPrpqVPUx0lBxcTl/LEUJbpsr+fcvKqIlp+4gXiWenpRZ8HLmPupizpGcB3zRmcaFiadcQHZ1ijlKHXC6xVNKe5vLSeQbygBrFDBfwP0ewDxqKE4aNku2pd1upj6kGvA7uMtE/fe+y+7eDRdx7YxUxaXiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762118994; c=relaxed/simple;
	bh=iQ/Bs8iquqdCbfwg43OFe4UoJOuFChHfeRZMDQ5xP5I=;
	h=To:Subject:From:Message-Id:Date; b=NZeu7nzDKjmge0hNmuW4bm1dBcOqu8/gagqEqq1KkmiswJLcTeD19zG/MQlikTjLHu8P5wqlJ3/g628qU9DmdCRprXeUD+QcJMp6x8+EQpcQ6zpIjcJeha8AkIwvUvHiG8R9jSA7MzUlgaOHgn4sU5EGMhEqWm5NpUucuzb00pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwmriHUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwmriHUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9849DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762118993;
	bh=iQ/Bs8iquqdCbfwg43OFe4UoJOuFChHfeRZMDQ5xP5I=;
	h=To:Subject:From:Date:From;
	b=EwmriHUW6XeyXXTw3sEuHF6eSduGHu71qMKYOQ6N63C8T2PSc8Dx0r/wgcDs5S5aW
	 k4CqzD2/tpQ50sK33PsGx8ngxqNkac6DaPX5GG1A75WJr0Z0bU5WnDgzuS38UKqiUo
	 SIC8G6Iu+x/Q5jtCnG8lGwZxFOSGOWrkg14kqWn0moQx4K9DkRI8ODAeK3zKsp4r9u
	 5QWwAq4M/11RYjizEeOWeHm4sxDlKYfKy0eVyUnw90QiXW00WYcsYwqSTMpZK5Aki0
	 iQ+X/qBPXRAqVpI7K3q1W4mDNMivXDSiRW7B+SxEYa2loKUAUUkIZYLXwtXphH00Km
	 SOrdSuCHjTWLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90650CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176211899358.25445.5102849868925316085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 712fb30b2d668c3742e996fd714cbe36841abb9b42d02974d2dfc414749498ae
Date: Sun, 02 Nov 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762118993
