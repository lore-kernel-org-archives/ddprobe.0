Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180821A28D
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735166754; cv=none; b=W5RLNHvDVpelWM8CPLVEJxXVkJOXu9MGJ9XmRCRsLHHvuqLC+YBPonUxwJiRF4ZlCA5fnpG80CJHRbID3ssfm6qF8OXOVRpZMuWip8aYV17/zjkXi9ddNhvGNr5DdnGlFc7WUHrqFGpKWiGaPUqSnjea8d29SwBSH1aToSrMyI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735166754; c=relaxed/simple;
	bh=EuvGldc7YnWU8nJvr2pPExImBZZvZjnyTVKwDm2KAFQ=;
	h=To:Subject:From:Message-Id:Date; b=M06huzAi/micELlJuuc2OEC/zU2/kjdwRBVlG1YhdsjiuRcO0X/9xh11Drmjl3qEqqs+xBvuf/O7j4oArORncmA7I+k9ZbVAEVVprR/Xml9869JTZPfCdursn4lhYIERzd2n24CYV5IAiFIp7RMPK8U1UA4oVODrBvZNM+PduJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrmSvWhA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrmSvWhA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A884AC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735166753;
	bh=EuvGldc7YnWU8nJvr2pPExImBZZvZjnyTVKwDm2KAFQ=;
	h=To:Subject:From:Date:From;
	b=VrmSvWhAZEK57j/BI03UcPxP6MUpQXO6IMBXsrAiVuhAq3I2n6CmsABCy1QlLHS4M
	 MmsYntokhfrbhr6vtBC0EGYkijFynT9sNidgFkDE4yzDoqn7wWKUpMdysk35B81BTO
	 p1I7zbxjOZu7ZQzqafckMOIHWCdROnj5qhaY2MZDdd+4W+/zwPbgmSvvzpVJWPElj1
	 w9BudB/+KsEYbJVlZzP9AWA5KHSPfSwEJQDIwmHNCuSHplicV6zg1qMkW4YmK6Ysz2
	 QT+y/GJsoCgT3dchc3YdZWe5WoIExBRIAl86+4nWddHmpgAQWMyg3GBK8AV9H5Wt+o
	 NZsZmnJ2dfRpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958D5E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173516675360.17485.16404238399126606222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1858d9c66205acf2e835cd1c632bc3cf804878a506b4e0014db0b1f49d34306b
Date: Wed, 25 Dec 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735166753
