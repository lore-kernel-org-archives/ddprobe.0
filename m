Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F07533ADA3
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771869894; cv=none; b=KBl58hP32RlD1DC0O48sdqwK/tTsz3ZZwZ6wgZwo13OWDtmVCC+PfJqbfQ9WdcJ/WqIk9cYa2XfdpgKdVuuVBt0wRV1GPdJr00CQgynkf6xzFVIU1EBrY0KzXggFKMq0NhUyV/L+yaYoPbjl03l+onDEH3ctdqR8FByJc0jgHoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771869894; c=relaxed/simple;
	bh=AYPZeTozMcoxZyuoATY6AQYtYiHtJe4jw9WC47DxyC4=;
	h=To:Subject:From:Message-Id:Date; b=m/2bJiHhSzg+hpF3MvtHsvjrI2WmzEx5h1YQX4n3Hb9tO3JmcDnRbB46u2tIWcrWV6xxSMaY0mx/N9AAuOZtmIAd6o5iUz6DQOnxlMftYSAwlIcLViyFs0KDRaPaG874oFE+1m/+MIsuytinWGK9feHo3RCaM12XE2F9V7ABpQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SuWPrPRx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SuWPrPRx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC8AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771869893;
	bh=AYPZeTozMcoxZyuoATY6AQYtYiHtJe4jw9WC47DxyC4=;
	h=To:Subject:From:Date:From;
	b=SuWPrPRxK9XyNw1pcdLtjG3yhPZMtLUokThx6PfUjJe4U5JjipFfhh4PZJ7xx7TOr
	 HsVfZ0a9OdUxkGa8XQRUCtzK3L9p/vo7fs7GBaTAuiAMroVq2JLir3C4YSMQ/taTZx
	 poIkZiwRWImjiNNg0xHUXC4PeUgSmQNNJqqFgXBOyPatqvsTI3J7mv2tO54t/yf1ac
	 UBKoL0CvBMrvGfN8km3Fhi9PkgyPTJfFHMEmjU1x3W8QTt5R79uCEEDg/q2VZYMHnq
	 wr6eXvtq8+dNOu1Ae6pe2hoHim2ucrQM3ZmkYC1RuKsH2fvNFNwgkq/7mpe3y3VBg7
	 Y1sBsNOmBLnrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A88EC111B
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177186989361.23322.9595255647989008137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a65a70cfb94a3f5b9fea6825879106820bca6aecb6b656b35ad35c08291ad421
Date: Mon, 23 Feb 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771869893
