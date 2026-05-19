Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FCA1A704B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 02:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779157234; cv=none; b=butixr6iaHg6wVDW+0PiRYqqiwwZi9fKe7lTLUpk2mBRO9l1P3j73lrGGvyPwOHWxo9NdY9dK0j4rTiIk3E0Arpohl/fwe6B9i3ZV0+XWeTbRQ4ZuJKISNwMnaUaUo68HWop2qnkqnCQRw4vFTYY2OtVeFbM1GJZww27zpqeYvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779157234; c=relaxed/simple;
	bh=0qCQk+hpWnfD3yBmyFs6SaCE1JxKLvyuv6aSQmG+sqo=;
	h=To:Subject:From:Message-Id:Date; b=OhovFO6mbmcqlAYTdj6At7dRNrcK/+pjN5pPtb44CJDGLD1bVreIVd/C7kLtat5fMvwi9rRdjheEuu/bzI6QA85xxuqZhLK1YrwNrNJZ3MAWQbH5yRm1e7/6Wgw/5sjqtoh8kXVxZsx3tLuRKjg1y11EyonsyS1lHXtYYkJ2UKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCfG6Ebi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCfG6Ebi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C213FC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779157233;
	bh=0qCQk+hpWnfD3yBmyFs6SaCE1JxKLvyuv6aSQmG+sqo=;
	h=To:Subject:From:Date:From;
	b=HCfG6EbimfWoEyWphfj7H8riot3cg4FMwS5duBRRLBebmmmUczY9ANFfjUy3wNVCS
	 4K3FYKyGjZLm7BexpJeRLOHmT8KtiAHzPI+auM2FuhxEngJXkHP3hyVfnFgQd4ljLQ
	 hiLPh7G+GT+8UGnKnbb0Folh9tJ4hXgPxKPZ3BaTN/aKQAzfND5l7iQxLUbkHq2/+C
	 53fS9vGh1MidL4JX5dO6KVGsJ+GEJw2qjyx405OiXBmQNfYHSB1eyXfQKHI+tsgkLl
	 ICxkiYalqxEWns+HCXScSWgENnAa8pZBM1zF+cCI7PrOOZeuIhShnvQ7NMAjDlW6cc
	 XrniUyWRfsVxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4BACD4F58
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177915723370.5770.3905110377445009523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbc6ef93bc63703701430dbe6123240aa0cf9d37a443d3a586150f7e275a9ed5
Date: Tue, 19 May 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779157233
