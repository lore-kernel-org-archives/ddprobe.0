Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A9C23A9AC
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747868394; cv=none; b=qr51J6Jp6Nh0j7EFDmFfWLHhtZ3BCxjy8odAIHK88sntrNE9jreQbhC4EK5SjED2XGDfHlwQjgwQjchVVUuavMHUZKBacBJ3C9twq31Jjw+NcAivxyAqkpi4rEe7hBOI2qKjWJciljhGBlkcJCGNAvqZt6465YlNJVNO+pkZLUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747868394; c=relaxed/simple;
	bh=kuIal8IbNspFzU4DU5ikFsGfQF8abUtCFcCUu5NrRDE=;
	h=To:Subject:From:Message-Id:Date; b=ArUe9Dr1tCoYsWQFdisy3uTL4DCd0N8pEX/VUnVXfZFgPC+jc8vP4pNAZRyjXf6C/9daiPYuYuL75ha8Lx97AlXuQUn8W+vc0LXRdBYLSNoDHtjIZzuN9mPCRT7Wy2g/b4YjRehipJQEEPWjL2Ojy1MPzl1mwtUdMlIU550pnvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzucH/jE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzucH/jE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17EEC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747868393;
	bh=kuIal8IbNspFzU4DU5ikFsGfQF8abUtCFcCUu5NrRDE=;
	h=To:Subject:From:Date:From;
	b=kzucH/jERQAuyqlVjVIyf0CNNZ8Dg6yB2nkIPhaj/HFkz+doB6rC5GS1WRHBoJq87
	 2QhkSHSGwrXu1g1pNi+jxh6DKGoqQa1bE9y4EsXXkPg9S0EZkGbOJn/6hRYZdWIzr6
	 LQW7b9psDBwGsm7tjacMXBck0kmUOYAe7m01aWFDt9jwVsPWB+3s+9qTWiGINL0A9O
	 Tkk2BkgvEr7eS+cz2xYgYrq4kufwNOzN5AejJDMbi7coO16G5LqwfSOLYjtZF44aJ1
	 CZlTLl+HZEYMtpdUTzpALHaV86F0hQvTx15pYrxk+2qjCkOQlUUBFrYsaD5Dzj7vnc
	 oidI3Axk6smug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906A4C54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174786839358.28370.1462714144188742597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c69e270e3a57274de75d7f71cab6103e3706c3a47f851b919513e8c2ab1f667d
Date: Wed, 21 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747868393
