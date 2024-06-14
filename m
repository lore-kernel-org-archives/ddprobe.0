Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555327E574
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 09:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718356703; cv=none; b=SQ0QrAQ+lOVQp1cU9xlwILP9UtbH+4In5HI+KVm/f+kYzXgzBWBm6RPKvqbZB5gGEadQIe2O80nV733CaLMQbc/lIGfJuYuvgfa93KJE0zE3Ie1cbUwUtSfeGapRHKD92PMN0+WxLV2e39r9md4rvC1bzwbtQ+qwEDvE8TefeNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718356703; c=relaxed/simple;
	bh=u1Ey/JtxF9RD3ldMOPFHfXR5ereetY+ljlN84C14J4E=;
	h=To:Subject:From:Message-Id:Date; b=HD2Is+njSsQov24AXkfv3YMws3RfPzKUnhasz3Q27cpIVT/er7exT8ywjX1AkPT6N3vG8at37knY7H4PS4t68E6c50LwvWXIAZxJzbZiNkaxn5BT+m2EoUiqkCfVLsuQPrfMa1aE0RVLOBB7VgnlkMIhm4x14CxnOfIuM7dxw4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8O6GLI6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8O6GLI6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F7CC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 09:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718356702;
	bh=u1Ey/JtxF9RD3ldMOPFHfXR5ereetY+ljlN84C14J4E=;
	h=To:Subject:From:Date:From;
	b=j8O6GLI6gqZGvvTV8FsGhRj4sCbszl0gfWLm8xYl9K5gPrGFCDPraFFznv10ig9RN
	 3gozk6ZJAL/4tubfuNbDylf0LXZh9FbOlnA+6ZHEJW4cElxDY05/mlW7AM8S1U5eJy
	 bcDPTPjPMXnnQjokx8bFipl2mO1StdUtVif3eVt/Ke0V5AJrfWniN3G1c/ErA/22RS
	 EBHpXzEc5IragfjErluJh5SoPXs98Lrr9uUYB537COHmxhzXQT6Pqbvri8ZXb7lwcL
	 0qQlLRS8pLotnsc14xkK1vWV85qJypfmVMdEB2f0yRljqgTpP/+FZfWZVhyehL78sK
	 fulBGE6sNYBPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC842C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 09:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171835670276.29731.10257438811077195603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51362329d89e61ecb348e89d903606b6b89663a2879ff673638267fe22ac9e27
Date: Fri, 14 Jun 2024 09:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718356702
