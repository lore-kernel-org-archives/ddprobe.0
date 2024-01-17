Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C038F47
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705473497; cv=none; b=NSoGFpLzXbhvXkM59oEagaKg1TfTtGHPa7bmmZu2X6nB0YA4pgDoN1r++bHOWVpHLkJtq/MdwtE94wqQA0InhlvGvaKEhROZs8xY2tOQkbT8P22C4p7HlITWN2vEjze0bvxvoMrabtiQBJGeDBFJdrMKgvEl8zAArXiwWUpF2nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705473497; c=relaxed/simple;
	bh=rXISiI5NoM5uunJwGbE2geCA6+ux94TgduIN9uO2+Nc=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=j8twFHXMyR6N/tWwQ9otky8l09fKcMn7CDJc4mEMyh8tI5bdgmn4T9cjRa7Fd1cxZm3J1nbawHC0P/6RrPcpCJTpI0z4EuOGetYwp+ZuIceazLqDB/DNJteASsLr1Lt+sQom+vaBMk4pkt+HHHcxr5bpyRpTPe1ndA76xM0ydT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQ3owWpf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQ3owWpf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79333C433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705473496;
	bh=rXISiI5NoM5uunJwGbE2geCA6+ux94TgduIN9uO2+Nc=;
	h=To:Subject:From:Date:From;
	b=oQ3owWpfh12U/2hSzwMEFWubHPAC+zPwWCPm6d+UQkqW6XVOEvhZR+j4DZgbAZZdd
	 llnmzHkvxpmC1VuVApcAqMVOQ0sJtsllpNhjN0NRuKY1J5OWiChJkc/YnzW4Nh0tp+
	 XQlIYGJUuNMJGriTNdWpfmEb0HQnRfRcLGK8Vydsa/KBkixhhvNQoh3Q7I8Q8DB32D
	 bwLqRtGFDbnmO9M1CpJrnt9LtUkuyLEEjNjS1ur6wNLCbKJXJ50Md/AFaD3f8dZkgH
	 HktJxTqweuYLbPOnYAua4lY+zrvRq5YB9x95tpht9DGqphEoNQOlcb8PKqL1pr2td6
	 G3soCuGKwFikQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF4AC47422
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170547349636.6641.15634687616068080690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2045d690718217775db1dccf22489a2e740a9deff6b58ec6d9ee92541927818
Date: Wed, 17 Jan 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705473496
