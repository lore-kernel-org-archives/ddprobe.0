Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36268314A80
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762948794; cv=none; b=FmOr6cgyuvYC3ZX4fDsPZq7i83BibdGoyM5wse2MzYspywr2ShitwbOvIMEdDNP6Y8JtRQL/ndFKacJmJSxrEvoEJV1qnDESiq9V27isJYtHVfebNy2A0PLJA07nq9xS49yH5tCCcw2GZmAU4/JMzch8pAm0xVnNR4bZ7V7NJp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762948794; c=relaxed/simple;
	bh=Hkkrr8D/QTdD0jWvm3M0veeA2nM8EgHVQ9qdxjP1lBA=;
	h=To:Subject:From:Message-Id:Date; b=u6wMLm+RR2JwB6AF64t3X+zeDcW2JYrlj2YkB0CV6TeKlIEcL7p4imbWH5jijynfP4FEd9rFnawM2GYFT78Zzh88eOdjKGtH1idKTHV95fxL7P0aNLNi4R9yjZhOzeEtHkipztsS1NmgXpUH1ufWKUpSm7uSN7oYilcUSglpQOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wtavy1SM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wtavy1SM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD7FC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762948793;
	bh=Hkkrr8D/QTdD0jWvm3M0veeA2nM8EgHVQ9qdxjP1lBA=;
	h=To:Subject:From:Date:From;
	b=Wtavy1SMxiWu+7BB/yeRGyYrJ15Wyu2cc77vVyROSwgfcoJyh7TFcm2WintUYoFgy
	 WsvVX0wEyG0S16OkiuNb4Ye21whA+CTb5AB/k4XmH4h+1A7HBHCoNUiFYXnjdIvOoH
	 mhasA4yFIFSfibagBvc7RdqKDCYVtdC6oGijkVu1xHP2xYEyioQOq4ujNgjdGz3Ovj
	 07N1BBumfzaHrbYU+C2pH2JoLu8ZyusTATHJ6cEqJSCKB8WAEWXKA8t1gNnpTQmOM6
	 umeIbRFhXBq1cmjTCZxYLsHeRbes9DDyJashoxgYPFNeW3WWRrdCkiMyezrxjGpAaI
	 16JIZ73HI9xbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90723CCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176294879358.24179.6380085898771718029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c8e694d5ce36ae720f33e5dfe355d8e39ce44fd5241fa73734135ca434c9d41
Date: Wed, 12 Nov 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762948793
