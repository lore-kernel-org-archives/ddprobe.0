Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36261487BE
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729671954; cv=none; b=LXocqH6ukrAdZ5VhyVKagYdqplrRFFi5tL6S2Hqkx0Gq4MipErY692DOLmHE5T7HfpFiFuZNHbsy15mbDZUVzQV/QbolhxWUz3kgVJD0QAA5cX+NH+OLRwztu93VUb4u7wMwaG6E1JriCdAzyohOvQIbBFyVLnrCsGQhjhRx0Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729671954; c=relaxed/simple;
	bh=W+Tvqlau5mg+oRmBq2hRQI5SN5LDW7co3oH6YxouA8w=;
	h=To:Subject:From:Message-Id:Date; b=SwpiidNfGFVcgFizcpAYCIRuYVYgjE6SvUwJBWKXtyYpajnvIfeDYzYdrEIBTZp78u0qWcIkoB5KV7+r+m6lKuNYOW/UKRv5y84jiMio/fHnCnTr4GL8Gd3t1cYkU43WHv2+oAhP5CpwCcRd9d9M/qZzw37rmCT5tdf5DcPsAEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYRibg+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYRibg+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7BEC4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729671953;
	bh=W+Tvqlau5mg+oRmBq2hRQI5SN5LDW7co3oH6YxouA8w=;
	h=To:Subject:From:Date:From;
	b=uYRibg+FKTIh8BmzxY/9vqtsHedN441hMgUv8Rs8UpJoPm/SQt5StJBFdGuguapD2
	 hcwSSv5gSG5gkBDHcjf/wgrN8SZ6Da3v/gyUvaKtzEs1TnLDDNNMN3qZRojN0sIQor
	 aFPzCqQke6ciOX6soLMzvrP2mwDGt40zAftQSNCtPfrjah0hcbCb/zUf0av1Xe9vIk
	 V4Jo75Ev1ARyc7ewxEI7iZw3lJOShWGwaY3ClbGFfzmXgkgEB6gSTVg4meSl/ipDby
	 RhmzJIfJYulrvUFufJJu7Z+N7TnWwIFbuRpuJF6uRwcMoKlmFA3dsipZppumiJ58xD
	 xjFw2bJgzpNmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D356D2E021
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172967195363.15013.3735743141091162558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2636fe4342232d79a0c376e752e757efac564f3886b264bee971f7e4c14cb8a
Date: Wed, 23 Oct 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729671953
