Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106B49460
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829094; cv=none; b=pYusp1LniRjU5BP2dy9PmhKXQo3zqsNmesjDwgUr4nhfgDctXCOGrKAkIS8G6Y9lOAnUCDCtOugRjpUWTOCt1mJdrbE+SnBNHM8X+I03Dhsu7aN8F25d4rhPoOlGXeUOhJsFPFgTFZ0bfZ4BlPHxrOX1Cq8yN0OI5s+ZzXHLSDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829094; c=relaxed/simple;
	bh=9X9LNk2pX+5wrDvd5Cw7/vyQEd9zVOdrJbDktAHN4r0=;
	h=To:Subject:From:Message-Id:Date; b=sycrGE9qAoSZeJmggGXj2c+bNBsJtTOcEDFOEH70EkbYhUUIECCsnL6msbmwye1ANQ3/r8JSWIP8bXuVSFEpuKwKxoaMkGE6r7ckqG1tJVq3Sd+XWXeO9lowr3oILQ5yTt/9U2gKst1KtVG9qvLOcoZU/ZhnbePhx2of2g/D6kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFt1BHFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFt1BHFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4D6C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771829093;
	bh=9X9LNk2pX+5wrDvd5Cw7/vyQEd9zVOdrJbDktAHN4r0=;
	h=To:Subject:From:Date:From;
	b=bFt1BHFYeysiYPzyKXoFhJsFJ6E/6YTlqi2h7Dmw2cVMotfvjilyPiVyBOSiIh0E3
	 wsvp8d3NmAByokKktrbvuIKanSWu1wqOMTCkeGGWzN3qLW1ROQzV5EuSRIQ65TsQdW
	 UNs8DdOsdZtH1yj9EZcF1jfaut/A6pYD7VkaA1BZkEZ8hzxlKHOaKG3sPZD1CFpE4h
	 AWMbk0QV60N43nGHEimYaIZEb5WCL2NoyKZUcG7Nvf4gfvCUgMVl10BjaKkponMVm3
	 13y4Zz2LzvsohpC23LMvbPQ9W2IArNS3g1+BmzEk94/LYIB8YNK4g/3gJ/SkAZjXwy
	 q7cWBIO/+992w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C68E98DEE
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177182909359.25429.12829740957140374939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c56a26891b03a036fe19a3e66a33a1bc0e83a41e2605947baceed76ef7d78a76
Date: Mon, 23 Feb 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771829093
