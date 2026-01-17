Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1572C6A33B
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768610034; cv=none; b=oBXSMSTdlBfQygIkGndVYNaD9oOAPxnp5DSTsgcCOvfboKoDO4Bju3o9W5O6PHLJ2BYY8vkftsHvAfZvlCCNPjYI875Y79fp85VkWV/sg+j0CSHMbNeutZBF4qRPCb9dqumHEQCl2KIXCTW3nEvaWh/IZN6InbrLGQTnGskpTos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768610034; c=relaxed/simple;
	bh=UcI922gk32ajZCVbrVm9jHkRP3WGyzoLlk2n97rI25s=;
	h=To:Subject:From:Message-Id:Date; b=FRnEs+wRwCQiZuh6YRTONNUYlP1tV5uBg4EBOA3J920KMYEoraYxlGnLYHGa6H4bn8H43s55a8X/HkL8NIOcrlYEr15ZiMs2MxWDR4nclqJQmvDRCFyAc8atjw8MwWNqKC5omT5/+yfHAlfN1S/Wg94KvdxU5+wpyrMY0gimV90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iH5jeia5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iH5jeia5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D21AC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768610033;
	bh=UcI922gk32ajZCVbrVm9jHkRP3WGyzoLlk2n97rI25s=;
	h=To:Subject:From:Date:From;
	b=iH5jeia5eTx6GpH4d0OcxFFuXLHnEYciPRRNJoNaI51xyyAGKg/Qp/QV7o7kNZ30K
	 I7Kqwh9e63HqS299SgXpTs+thp4FL2W7lsVcA+V2I+ZfQ0QvDWu7gY3GzGH6CgofsS
	 YhtYEubWk8VLEokakZgsukCLOXs97mSfClkCS3DWnFrvyk19bLottEWJjhAljeEltz
	 ulxJEOaokyhWwLqmZtfxvKPQcMZP0lHk6NzPbtVrA7pAfZpQ9yOYoPDRIIwnGzw5I0
	 jX1kLIH0Rwt4n8n2LA1ZIyWRA7aHSy2SaZHFgrXdMhFUepfX0kBBnL3I1K1hLUbY0X
	 7tMeYdQxXL1Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA10C9830B
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176861003357.22936.14447436239398617229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e617af4e61dc8b10b07daa04f824a4f186a11912dfbec8fec21864729f0489c
Date: Sat, 17 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768610033
