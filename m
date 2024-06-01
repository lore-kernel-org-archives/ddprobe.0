Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643B22594
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 23:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717284923; cv=none; b=gyxi/6c1l6Iub/eGkO26UiH1kRgnKmw3UF9LV0n8fsPGvDZ/5yDxcrHZb6ZYuvN6ax1zJYsEqMTGxz/Nt8+1rHNWjTq+RjEs5MwnStD+b8Snu7Y77BfKrsJpPz+XvNlJAyLL7ko4seSapif5NEHDJe5SUOOeoA+z/PYMC5Fd1oA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717284923; c=relaxed/simple;
	bh=NnBzTn2cS1zrc17TxSUJyj05NjaEDoTaZm6kcxepRz4=;
	h=To:Subject:From:Message-Id:Date; b=Av1DCuG/DNOWhC3zFlNv7WEDHI//Dt7cUH79h0JoOXMk62J7EPgoX65xzkdEz9LvfKTud6K4RP4E7D2+M/qT6JUY5wYdFldQqS7HgCTS7iXCXm/aZ6GoKFm20GqwCk/UvRoyWB7Ag7KcrqkgszIvBAFXoR8XhXvfB3//+HyJXck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SmMzQIga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SmMzQIga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA694C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 23:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717284923;
	bh=NnBzTn2cS1zrc17TxSUJyj05NjaEDoTaZm6kcxepRz4=;
	h=To:Subject:From:Date:From;
	b=SmMzQIgawHfyG0uJN6Qk0zM/QG1XFgVPJ66aUKazbxKZgWX8rFQWVIqE0p8Ll4X8n
	 Z55RQ1P+AtvIHks+24Lq4S8NmXASqp4mgay8UXAQk5MlQx2MKkabijJkKGGPncEY5w
	 aBmuHVtYHFwwXjZpuHwNRT2Hfl3px1T6mB+1GJaB25out9tS1sCudtJTTfIn+xGngv
	 aiXC1vTFITksQB9/stA19EztYhR/7b8rCBbi/PLRRb1PhzYyQik81Shsk0dctQw1xj
	 NZK9gokxEmobJCKVuWjFbzPFSRlelQubjHCsXyeDO5xv/+Tn7Uv4UeZSRWJvhBqtpB
	 vrQmWg0jnyH0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC1FCC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 23:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171728492280.18350.18270189498749840924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc9eb23bd9497026c2e6b989d7b72f50c204ab6ec1b623706f1bbfc0947acb90
Date: Sat, 01 Jun 2024 23:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717284922
