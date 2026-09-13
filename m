Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7572A768EA
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789260634; cv=none; b=Hf2g1ShofDPUNxQaes0IhWxO1k2o/SxKz45PiqsF7RunKFwP++L4cmWDqd6M7KqVQroSP29JYu+Q5sUmOWktxO+Axp5I+ORs11AnpFpLIaPnCnYT3+SZTYc5rkWOj1VMLyh4eYim/eeV8kuiBBI7CCRb4Dz7WccU7qMmXIA3TOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789260634; c=relaxed/simple;
	bh=5WxnI53RR++2WFHPwkF40VvkA4CPLJF5TPZ1AC+/D5o=;
	h=To:Subject:From:Message-Id:Date; b=LsphkLHgfvWwusvmp3oJDo1TOlqaOSeWwhOHMcZ1uXFkBMPcpvvKkpmMoBoYc6DjDAuRcD281nDynvbMQRzs/PkqspJ5xRBYa8pxORj5H2Vc/sXNIZk6KFzyGbSmtVqU8mb9diYLpN3aafea4bb5YQIYlJdhGGYq/3Qjgg5mV8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cltb0Fuo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cltb0Fuo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7857C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789260633;
	bh=5WxnI53RR++2WFHPwkF40VvkA4CPLJF5TPZ1AC+/D5o=;
	h=To:Subject:From:Date:From;
	b=cltb0Fuop3OXxS9ZZbopcM7dWNpzbIAokn9ogFMnNm4tyoIsLV3T7JyKmglY0962k
	 vmASEegAUWRCulRR7hbS2Tb2O7/PoncRytE6nXiOfX9dmOFwWr6fys88cMlwudp7da
	 zvtH3N/5/xS1dA0tWW7pRSlnqQNQQybK/fN4q4CT9ORlnbagBgHr9njaGHlbxLh8H5
	 ynm+unZEzLqH+JzUXUyQDMLkYSDpuGoBC0FbksE6nUA31VslvGB9RDvP47qKf5xpyn
	 kKlZcPg8aeQHjMJL5yOOntKutbumU+cqYr3cAm2tTCayNK93iD0sB75wCOhQk1KdJh
	 FE8EvrKOiRSbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2EAC88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178926063368.2394.9050934409151437194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf1900cd7971edc437dc82e8c00c1fa8aabf64ebea869d6fae4df39ea18ad972
Date: Sun, 13 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789260633
