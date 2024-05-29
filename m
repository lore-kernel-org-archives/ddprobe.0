Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7197C16D9DD
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 10:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716978263; cv=none; b=rvvVakECjitQl7xpfcueg2qCQbIjUKf7nJa8YKQF7ZtRDfRtY/1aLlAP4nlWJiuIldQTVrnjEQl6rcuRFvYjKh5XRkUA9yAQjj5IhmzH34cficlxsOAA0yGN0VYMRbXIVvDLilmmfpg+x6jVgn9dfr0oT1Ku8GtfYaHf1lkKJFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716978263; c=relaxed/simple;
	bh=EoiWaPX9tj4L4LH7KoCUfn+Gt6Cnh3oxfznmHIG1tio=;
	h=To:Subject:From:Message-Id:Date; b=Upk7ybTHPFn0G2tlEZfqEhq/vnBBH0yWUVBvBiRHnhsIpmtN3XddmRV19ZOMEeEf0coBFBeZ2mfxBGoSahuU87MPN1RpqkUxpYBibUxzuz+Fg+9TMzVUV9tPbaaWAyl+hv6hXm6sAeuea+JpdAiqBqY9fgpkeYebZnuRRuITpBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZKUrt75; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZKUrt75"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E624CC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 10:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716978262;
	bh=EoiWaPX9tj4L4LH7KoCUfn+Gt6Cnh3oxfznmHIG1tio=;
	h=To:Subject:From:Date:From;
	b=TZKUrt75sByD89PxdcSfZ7SFW38I4Xu199fNQivYWodJC0HkHB4V6pLUTA0EgBzah
	 FCKi4ObO9FfcAOlpm1DnyJ8PnRDIG6jYMnSSZ8QJcrxQMm27Cf9GeAYlEI4DTw7GdQ
	 oCRak5pXT9n03IUNqBVrfBWL7asBsFG+294yV3vVtQtSlNolIK3/QbKvq8LNi4lOSi
	 YgmzuEYF0vI1b9Tf45ofKOZkqhEwjadm4aT9ZG+hp7ISzC1tPYLWlpPZh+pmG3R4yL
	 IY/Q8eAUuhveZEYkI/i+sGGrEh/0Ajw+uL0LR24gCSAEsVQLuiOWXNc1g76VJcl4xs
	 ZSRewzBx6Kpyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE94EC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 10:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171697826283.14804.205016762859649651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f13681c172bbf1b7215783fe1dcbabb4930a9d3029286acc3e4f4146938297
Date: Wed, 29 May 2024 10:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716978262
