Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572782F3E
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738931755; cv=none; b=G+Prr8kyUK4wOTGRz7cBsWGSpeGQFxSxMYaP50Zz4lh4b5omDc5KZh3ZLMUDpuARY/jiGyt6GoGlTmoJkccZdaHSY83xnPlLgWV+Fdm5NURg1zhoyOOFZQgWHrA1QfuezulJ5ROa7vphYuF+BUlbgacFl8N8dsuwI7B6hqHhoBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738931755; c=relaxed/simple;
	bh=Bdx2pK7aGyFf3qaUw+kVgPztJSLTlLPDDufm042w5c0=;
	h=To:Subject:From:Message-Id:Date; b=RGFYvvsEZn8IakAMMY3va15uBI3oeaDbhGxFdTSw19VKUVM1rrrZB7Vom2jzzeuDPDmW/hy7/UParrhTr13t61uy7yzlrYfAp9U+p+QqSshIUoGeR7/23r7uiWajXxh3AodjoNsINL0C0HQpxwdjEt3YNhn+xQHwu8sNHySHjuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTEYSNYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTEYSNYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF857C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738931753;
	bh=Bdx2pK7aGyFf3qaUw+kVgPztJSLTlLPDDufm042w5c0=;
	h=To:Subject:From:Date:From;
	b=RTEYSNYNnod4Ag6oN7Bvma3pIC4SQiGO/04iTdGnjLW/AUa9NWM0+/zkEzEnAdfF2
	 u2EW7y8lRdjEloYINJWEwwYa0nGEtZcsBPL8zNcSqX1yI5bjNyhPZ4oJ2s2KPgsSgt
	 D/i3ThIL90nwbtmVVT7632wNVFDPGN4bptRkKy4+2VBJuR3lUxYoMgyz/sce/4dFBL
	 c6kNExwvJajGNgXXc8gT3sqzRcfaPEzKnwSY4qmBJBpkbCezBoyW6LbtG3yjPM0mo0
	 RGQGjruUOxIzI4AP+AGiUburb3Rb97gmtHt59AFkKiZekJuVUs2TSQMQm+fqcYvOaD
	 xhDrgPskhJhGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A440DC02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173893175366.25674.9132857133997441836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 675dc4281ef76d2c59c9c7724afd26bdb4978263fbb13d06666b54c353f8df2d
Date: Fri, 07 Feb 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738931753
