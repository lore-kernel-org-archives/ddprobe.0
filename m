Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573B83234
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744345194; cv=none; b=DkSjhxQXp0g9LnAAmuWLN1kciWvQ9dGf636CmX0Za+C84b+QF+L7pZYWbqwMGyyIKtbpoZDfUP5NuuypOICctOJVQogvT8ck1HCUXIOqTK3LYTjKVtPE6KfOcW+bswkMtxk7CyWvoUGt7HdF19LUEEe0zRydaeY40ITeh29Qnd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744345194; c=relaxed/simple;
	bh=bp/T/fmdZtMXpl7xZ0YWaQcOAnSumU1ONUXBTwlKAh0=;
	h=To:Subject:From:Message-Id:Date; b=Mo+wLZxQUmsqvWCvGvH2bfVZNY830DZaj8H2kh31IU4cFdNLES0dY1ctaNtne0QZSknuP+Ki1XQahRAPkzauYtYPR8yzrID3A76LSpIzF+5xXxq5OCwk5qSNWeCfqgRoROcM8u9+OmfPo01KcRa8ODvDuqO/lCpJdXAGSO6HEoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfiSPUVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfiSPUVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA375C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744345193;
	bh=bp/T/fmdZtMXpl7xZ0YWaQcOAnSumU1ONUXBTwlKAh0=;
	h=To:Subject:From:Date:From;
	b=hfiSPUVtEre1iX0G5zC1bsuDH4OW7LNLfLe7buHzhztmE0cssCt3dp+uxTYXSQseY
	 oHVlrzkQ0fVh/W0uqxl5yJMPpsDa09r7akw2o+ova02peC9dow5eL7IpZ2CUifoTZB
	 iYC7fNYlcK0LO60C9gVxbNfg8OJXq9m6IpnG2LJb6I1LdJaGy2KWDB8u5BqFkn49UM
	 /WQA0Ei15b9obHQN1VH3AIX6mrdDMoo538OGoIJWQA6Plg/tyXY3maVY+4VLYBanE2
	 4MK0fIGes8oPrxM5iHQA9RM2d91pQWhYQB0cf7dhMU6SDtGYL/ugDxAyBE+yxTJGX1
	 DXlhliFcOCd3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0238C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174434519360.11787.11720584287477840171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9430311c044f142e24336cec3c603d6961f899cecdc62029d7c9e95c94399eee
Date: Fri, 11 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744345193
