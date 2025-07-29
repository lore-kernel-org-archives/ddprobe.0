Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC8171D54F7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753829393; cv=none; b=Hf76bb+M3U3Nkb44AGqNCxxB2mKIxbmDVeLDDFpQVd4U+jne5oB+5MphRwIIClaMQ5212L4lkz4IWocw3UtTdtmbANcqpUShrcOYm50OeIytcTPXoDy6Z90l+GuAUbUx3vIc3yJffeATcjgZSoCLdCSRnmpC6JYZsrHt0BPsgQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753829393; c=relaxed/simple;
	bh=MQMesxhg6976+atMUp14TMirx8XMNgxN35Tjk5wbTGI=;
	h=To:Subject:From:Message-Id:Date; b=jpsPqeCK1+dTgb2ko8NGb+NDfmn71Lxy6Ry3KAzMSp8EXJabR3tHXzBo/aj2jYG/nGWkq6iTPmVeFRelwfnNQfEmpXp6i+Dq0J1M9h37YnH7//L/ECdGbvhP/jxKKYS1qZdZ0UPHKRx/tEfsY5+FJ0aUGBd1vFtJoFAOrvVn15Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bENpQ2Yb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bENpQ2Yb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62B7C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753829393;
	bh=MQMesxhg6976+atMUp14TMirx8XMNgxN35Tjk5wbTGI=;
	h=To:Subject:From:Date:From;
	b=bENpQ2YbfgvpW/NiySoFF927VZln3IGniL/3bgqTsqC+FzqhlO1FQbEBAwMxoEfOG
	 kXIIpQ69DJ92J7SehUHkpzpu+MGMgrNS5aIUoQtq86dGjvfiHO/c+skw5NRmHvf8NC
	 8GJKU5VEQYHZMhBzAqt2iU02MeanQbp2TeROCaIYTD8Uqwwn/k3o3xABAauTwsV8Ps
	 yvAFSIH+3eL01/Ty1MInyTSChN3B3RBtaFmHqBuHBsOZ2IzLtpy14f1kBD9di8HTOZ
	 z71p4V9yEWOEydMQzUEAOYvp/PR0FJQS8daKvfH/u2WD8x6SFKL2IgHjLiKIyZansc
	 u7d0XVg433sWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D39C87FCA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175382939358.2867.3580978065184902821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a712a8a4b027ca5c8a02af2bfd6ff65572f13ae429602b86d8735b4913f9db90
Date: Tue, 29 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753829393
