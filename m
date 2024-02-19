Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F04A351C2B
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708372697; cv=none; b=NzePffxFTk/ESLspn9/MrAz2KbhhG/xQEMA4Qf6pTP2OYCbE5WFvRowm5+Zy1jZ9lnE1GjzAvHR5Od7rtqljODUwG2A7ijEe4Ikxxj8e9SVdoQfKsQbQvX69GLoXUt4oV5zTTT+laPMpLOwFOAk6kDEwWJ4956cjadhOZ74Q3Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708372697; c=relaxed/simple;
	bh=e208Z+1QUVC6BV6PWBZ/hvJzbDMG7+BT8uq3TlQVwc4=;
	h=To:Subject:From:Message-Id:Date; b=nuN9uFoDUsJPdmcxxiCZRD/EIm0f7EHoD+Xi3IMoJo7Q50U16p4Rmtt1aVH+G7T8OggsVC0HSg0voUF7BTUrCAzXyH/bw8ItIKRjjCbNp5laIxHCR6UdxXh96GqcXb+Q31R+gjdj27L4KZj/8Xy9GtWdHmJoWy6xB9iznIBmdGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwOXsMTY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwOXsMTY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 730BEC433F1
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708372696;
	bh=e208Z+1QUVC6BV6PWBZ/hvJzbDMG7+BT8uq3TlQVwc4=;
	h=To:Subject:From:Date:From;
	b=FwOXsMTY7ldZ9gR4b4Xs5uGU38it6lTqX/yRbUcbfAo2cjIMg1WBAs+5vpdrZjoxX
	 BKhmJwqvL0s3Skgr7thhN6Id9ts84UrWyaWVlp/PcbLitdmHST+3Abunq43sqk2FOU
	 lT1xJtJ0yHnMy+9T+B9cdRg/LMQZBspx3ka9p89JjXEBAq4xQgSTMhTZN8+dbECpB7
	 KsSr7oWp9RPFC8lk6BKCUzoNcRRUsOXbEcBONlb+mH/EYjycKKPxLzlgsg9/XzC0pt
	 puwYy37x8F1BZozaWl0ryqP7qIQNX9HlLLyTD42Jo0sR4NAR94pTOicS1AAmicJkQj
	 wInJijSLSqmGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C21C48BC3
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170837269639.16059.6659443839963905692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daa37e39633ad7999af6fdc1d36128469c66ff6274036e59d9f037f450612a7a
Date: Mon, 19 Feb 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708372696
