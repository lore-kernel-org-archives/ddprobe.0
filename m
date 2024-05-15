Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569832A8D7
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 22:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715812343; cv=none; b=jsWT76XyQw08T3YtDjrt6FgerwomcOwDr8+jtVZQQXY5KGxFkjPGjB2lH16JPwMO6BBUKj8lxIpTpJVR6DpoelNWFE3bJe3jAb3jvjtmPNOrkzeFntQ7vau89QrBnXPdtHhmlUbU+jdAoWKwQjCiawcFz9XU0RJpyzgRwLllygE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715812343; c=relaxed/simple;
	bh=vD7yI2Sf5p3EGV0lZWSmv0PduLIZhSQM+fPOkiUTI9Y=;
	h=To:Subject:From:Message-Id:Date; b=j6wzt5EtZyCwpl4x4RJYfWJHz1G8NUbhA7nCtTIq39iH+iMCmXvrFvJxTylJ3wuJBjej+KzVeLOngUmRY9Cu4YG1NZfwuYxWc935jrVfDIvII8IvbsnoxntJpMOHpD6SnLsbdZaO6v4vTHdrrjtIdv4Y1sB5uS1IvIQJR89sOoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAnZ1rSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAnZ1rSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E12B0C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 22:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715812342;
	bh=vD7yI2Sf5p3EGV0lZWSmv0PduLIZhSQM+fPOkiUTI9Y=;
	h=To:Subject:From:Date:From;
	b=dAnZ1rSidN/SLBYH7zQpZGVjH34qLecn4ORtF232yTZJ8h8Geq1YNz5qRjVHht+Q+
	 29l+jgIx3BhH4gIzbW/QyEbPXrhiV27INY4ajC2Cp7ht4Ezn9uGEb5gvErne8dM354
	 3326FEl+IJHkBImz4e21bI/eV+RUB3xrcRCJgxWf4hS6qdj7Iie9HXgDx4VaPCjqGr
	 2CErZZS4zN+E8A23B68wQ9TSCkPAO83sXUFQtlkmXJKmM4WENODFR8IRXJGGsjBIRz
	 CbCxlMbwuWrWeSeANGbCXhR0lDTZc9ri8AlKRjCr/sxyc63Alf+qRmiLn3o+sbtiHi
	 hnBSjlNf+xzQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D1FC25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 22:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171581234281.14912.1239451839783587492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24ebdb2f5c1c837b4480f8f595ba648029b17e9cd2ac8cd54f6e320fe1a49f8b
Date: Wed, 15 May 2024 22:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715812342
