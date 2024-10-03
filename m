Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8EE3FEC
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727922954; cv=none; b=HvRkXwv3wjvI8a7qgjkabWXRLyUYpocGgHLoCxirltnjDUXSIyCXBLmoXjil8QpMJOgolDbajzCJTRlXnoZvnIuM4AqcHGeMw4Y6TlR//sjqrokJ+1rXFFe4BVjVpt4U3iT9JPoTPA3YaLGerUA0QHDXeWxm0UD4B3cZWs6uQVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727922954; c=relaxed/simple;
	bh=kNBS307wXVcrfJWprW3JatRHNOt+c3MaQvkV5R10Q+s=;
	h=To:Subject:From:Message-Id:Date; b=j7MaoR86fd//NQSDLayziD/JtPqqudH8ZWbbBgeDjdrBNIAt1lknsqIG2mupLkXYb5CLBJWM1AZRk0oWO6j6Yhj6J1TUse4vGK7pnkmYCV6tfEfVpaDh4cqB11Bu7+2DbgqP3LmWlLLzH1OG/iNy3RpYljKXr2FPn3O0t2oryCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkd4ldNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkd4ldNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD6DC4CEC2
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727922953;
	bh=kNBS307wXVcrfJWprW3JatRHNOt+c3MaQvkV5R10Q+s=;
	h=To:Subject:From:Date:From;
	b=qkd4ldNPGCG61D0I0vZJoXk/zsIV2tgbihwjYmbtEDc7rw57UXl9TSpuEhJ8T27Ur
	 wMZAN4qkuhqHfW1vj+eD05QanCRcFZPCAAEA3r/8Rj9Xw/elSAhbnApUaOLejpsCdU
	 OuiVxi6FCY75nJEJs5+y2Z05p/DiM2IhSnUt+/ARkZ4OzFwVIECLqzS5dAB1uxlEdR
	 bwdziXM1HntnBFlnRkgVIK7QePQMVSVmI0GZdctcEtq7Iff7jtFZliWQ45QhOt03gV
	 a6vExClWKjcerZb9dn8RuO1iX6fTQEapiGrwvJ2RLynBj/3COXTcjWu054q3ej9/mE
	 d4SWxxXUlKp5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92921CF854E
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172792295359.23273.1820850277204503613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a81735b2612c6a37aae0e974b84ee525280e50d3c81b0afefd2eaee36dcf9aa
Date: Thu, 03 Oct 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727922953
