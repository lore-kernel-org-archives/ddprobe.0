Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D002D28642B
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 16:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778344054; cv=none; b=fi7M/sg5RLj21vKeJFKnd1nGSjeuFniCRoBB+Dyi9iqIi0K9KoL5rMMYH5PfVq398GXxKv5EU2Bv9b7V1tFzraMErgVrK9CLxQawjwInYW4Jz8Kzo62clDKOpjWSAefhuoxlRbnd9c7/sDiM3qw+JwBpRZyfL+j7ee/KqsEd+9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778344054; c=relaxed/simple;
	bh=cHgiCalorhaivVSnz7B4K345siJGeNJUFitWGVxuiSM=;
	h=To:Subject:From:Message-Id:Date; b=RLjwIm75wjW1KWT1IjKrNTa6ZCw61e+60qHZMDM469kBtlpzwQSRzwI8C3gDo1zl0e+6Vk1KD9cwTRPcYkwQ32TQj+v27Y5j034xDL76Dh3rIgKisihKAHzp6i4VAl6pPtMV4bqOMYlOf90qxUWiO+VDh6wLd+ByikhCS1xdNlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgzZ7Pjk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgzZ7Pjk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 37004C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 16:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778344054;
	bh=cHgiCalorhaivVSnz7B4K345siJGeNJUFitWGVxuiSM=;
	h=To:Subject:From:Date:From;
	b=IgzZ7PjkikLf65xFvMcJGTZnMvhCKUccpGqQ4JB7aFRwfTw1oRzchr5096BSVLFyp
	 3hy25kqp4mZx6JCYw5HFZ5y9U0Jogk2YxMqg0M9MC16a+TYOe9Uh5gr2zfxkhkvYJ+
	 vd0OeTf9DrefDKeSuJMZ0BWsrBr6VIaES9KlKxwq8XeHxTggDELYnp3CbP79Q6T0W1
	 s62mSLSuibNO+avph+d5OvmFo+kup+8UKOsTlh5qBMfeX8sr8wmvJpNQzqEx0Q98xK
	 D3LgI0IYOwbkfGseks4gosOriY9gCV2CwHGzx7Dw80SUFSN4tj1kXT87LdtKq9J7gW
	 2vEJZf6U6B0DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2260CD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177834405395.10587.17547161463205508029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 419b3b4072ad3bdb976208943fc93dddc75db12971319f09c639512632e2d14a
Date: Sat, 09 May 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778344053
