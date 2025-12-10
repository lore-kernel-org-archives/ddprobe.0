Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3235132695A
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 17:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765386174; cv=none; b=ABMHAH7BvjJpLM+lzwjrGnaU0PF//RP1wkLFQuZmfP8L84cZd79nUj0o400Y3m4xC0kDRszq5xvMZIhfM2VtRGsVEWukJbAGAY5oKD0PHsyCxTHdQ2K5x+TF9z72Hsl9vU5Ikt2fk3nYdUpZWNzt3ji3WHzsdplw2AwgXcj/M+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765386174; c=relaxed/simple;
	bh=pQ4CraqGCwcJgVXKG6TmZo8RDz231ojyXNr8uU/O34A=;
	h=To:Subject:From:Message-Id:Date; b=XfH4y/iWsM/IkEvo9jLGJZ2BXTfDjwzLPJNu8SKj5D1G3AdKp4+tvJQgtIBK0tj0wDRpeDUakhJ/N4hhvl2tWQj/5e6ksbE1+CyLMSD2HclxCZN3R4CekItaN9BE4jvMerFm09DxNeH8rN4qrhKVjnq/77itVXQO7rD7H38q/nE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lq1eosls; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lq1eosls"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEC4C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 17:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765386173;
	bh=pQ4CraqGCwcJgVXKG6TmZo8RDz231ojyXNr8uU/O34A=;
	h=To:Subject:From:Date:From;
	b=Lq1eoslsTTjZ+ttEuD6z6IdweSi2KbjZwXgU/hcIVy87fkPhkG/D9KH69N288FBDS
	 klvM6QyrsuBy9AVRWP9cLlz8sRwCXt7TU4873sE4U6SGR+QZ/3akZA022jGQED7tEm
	 HydtXusDA96RvGK3qUeVoNZXc6csCI7FioUlWkM2Y9B5TtQLaa59Ulsa7/XAZRkG4H
	 gmWswFZJWV5SZcbw1itfl6Neo+SP8C8vPOcj8OAkmtCUQ0AHPib65O2NH8/YcO2J2r
	 lm1HDeo6IVWT1fqEURoPOdRfdUjNbEyhdxEeCzO9ptmsQfRe6iazpDLuDRSGQaNbn/
	 VMmd6Vr24GNJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9553CD3B9BE
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 17:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176538617360.13133.12539268934024412801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb2f4a4d171f6f64d09163d892287e15f11987ce9579e7c1248fdb97f159b87a
Date: Wed, 10 Dec 2025 17:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765386173
