Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B0F1FB4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727156754; cv=none; b=I2Dbx4jDCOKmJDXtZK8jWuRCih40pQMHAsDct1BB7fcASrjeoPlOzHCK4rYA2rIkGi/A6zWWJoIiDAl2siHTdUu0/0gnK5ls7Pghb/HebsB7XbjX/0bMMBfOGPq6+0SYSws21EKcfimqhXzXmifCAzudyG+scGYvFWk5dGjCXx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727156754; c=relaxed/simple;
	bh=2RzFkOMAePYyHjE4f2xuv5UziYjuOq+HIMFVog130Hg=;
	h=To:Subject:From:Message-Id:Date; b=GkrYIxSshFa1Y8i8pfLqC8fITRJ869NuK456a3J/ENUkuo8Js7u5TVuvQ4J6xDfiMrZRfU/vidd2m/sMMOcX+Q6d2eceSuSjXh9E0+c7pSTsdcxcAyxxYgztb4BCmDalQxf9YJKNyM9ByE6GYoT1/fpoBDpHhSHceJx7KMeYXHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=in+ZZutS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="in+ZZutS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6914C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727156753;
	bh=2RzFkOMAePYyHjE4f2xuv5UziYjuOq+HIMFVog130Hg=;
	h=To:Subject:From:Date:From;
	b=in+ZZutSo7eAfZZ+yGHpG9EWQhmyDXs3w78YPfJs/i2eCZ8w9esb9D9M9ilOy8/O+
	 V0U//H/DQ8nXLfvimNdI7CyakN+NHdB0dG9DWlWYmWZF2eLSpf6yCtEgvoykP/aVPi
	 KNqhzv5GOmgH3ZHSQdP6L/dhimTOJY0I0Bh3hivk+G78pPDA8s1j4cMbAyebqwpjvl
	 rCIV8FZBiV9s3zw5d1Tc1QlRRIFR9e0YxYESJunv2rsTStiZ/K2xw+I2TOXQ9dzFKN
	 30qNVps8ggzyoiMvVcjW9+pHQYUttp/HWrQmQhXWHGh3ac54wifhVa9ZnH1X+O/v7j
	 7P9Jp996JB1Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95473CF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172715675358.26658.11230902508644993224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f22fa00e4360eaabad1cd771b80869906a766c61e402b6be5e9d062c9ffeef27
Date: Tue, 24 Sep 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727156753
