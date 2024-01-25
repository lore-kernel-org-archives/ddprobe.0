Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119546FC8
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706154497; cv=none; b=re1/wbNzNArTBSsBRHJnLe51rRaqqUZZKlrL44on41GFmwMdy+yPkyLZD86RkcL1kylydRl8O6Hd9xo5hf/uC/IMWQ2a76RUgUciykHU6BY+MasmIGO8MiRVXdpbkNHfVn1Jrka+q7u00GQdhAmdx6DHb8hPoOZCUPYUI4MjLlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706154497; c=relaxed/simple;
	bh=gEU/7EkyuYMsTjuzoc8/z26nIzHVof+bgkNX3qVPJlM=;
	h=To:Subject:From:Message-Id:Date; b=GtlL0wVOzeY6/WnvTycJmzZAiwkREKSEKg60piH1x6xAiQqsFxI+YvEeihEljXm9Gpz3xYzK5ujDSFHMBUklAeej6Q3A1j6FLV6Kb8ZQ7BDRLOt429u+J4GIM9hpYGB89L7kqPhcZjxko72jSglmHMnRSkgBAyHWivxkdLBZ760=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msiHV9Wt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msiHV9Wt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BC20C433C7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706154496;
	bh=gEU/7EkyuYMsTjuzoc8/z26nIzHVof+bgkNX3qVPJlM=;
	h=To:Subject:From:Date:From;
	b=msiHV9WtOfn6RHH8jtspJ6XSG/pSW2rDOTAoQYET3g/CGLwJ/6Aoogsl8DLCXxRvT
	 F5bLUo58aHHWsPLWSVLLrE4S02W3tgUymJOdQtUXnTA2s+iB1W+weLR06XIM9hwyLL
	 YIxvvhGRHAzpreWl2x9kpv08V8BVTSJYAQHNKj7Um+MGBKxYlXkiQtka/PfAte8+Xl
	 LhypShVXt7S7D9yHX3V8rRg2on6PnhSPa6WoL1EduxHuWIiVEFooc/S+XjJq9UFG39
	 XP9RAZf26PXvdi5GWiFR/+dRLZnE6r1TAXlEy48AkV0eX4bYl+OVFZXFLKwX2VVSls
	 I2zCfyD6AxFjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61348C47258
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170615449638.20496.12304802646532900685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d04a919a2f2f45c50cde3cc58b361179203b5a60885ea2b90d9938993611ddbc
Date: Thu, 25 Jan 2024 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706154496
