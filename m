Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CAEF19B3E1
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 08:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718873423; cv=none; b=ZjILavtqRIj61j9VKW/7KkpRxwN7c91RT9adWqZThTTcgR/AlXu6o4IyWpp7IzzFVDlnx2lfmV7i+JS31bnX2G4+r0B0MRk5NAsAKM6e3lQieEdRuyIi6qeqafc1/6nYnXiGQcU0DmIGDIy1IIjWj6KFL9iOeICk1QJNWw88MSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718873423; c=relaxed/simple;
	bh=ab5sq1Wf+1i8ZJsfgcsMaopSTQHSfgkfR9zzXHyE0mA=;
	h=To:Subject:From:Message-Id:Date; b=W2f2Sk0fXaeLokEh53LC0fGVNAA3Q3Fhs6LGdoNF4mf4Qs35iOvQPJLdWCjqeE7GNUtTrQJ/dy4/ih2SL6XZrW+OzqAquCLyXmKujwoNDInfiYZEkXDlPD6HQYQgM+Iu9jPDnqodzb3Birapp2nu1CExXEHvwtXbdKnueiwEEA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JkK9BpNg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JkK9BpNg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E08B2C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 08:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718873422;
	bh=ab5sq1Wf+1i8ZJsfgcsMaopSTQHSfgkfR9zzXHyE0mA=;
	h=To:Subject:From:Date:From;
	b=JkK9BpNgZa0AS7Kt5VDEhEC7jSyozo/ok+iK6NXwEqmszQb0YXZR6O7JSYmyFqvao
	 uV7wU1EqjgM0enu7mks7/3Wht3zlmDPjkYd+KMLI92r8hd+IwS89bvWIx1xovLH9/s
	 jsG3lDzP7sIF+D3+OYx4V66JqW6/r5ZpnUBKQ2jEA5qyduCM82uMba7bpUEzwbyc5q
	 fWckYd57eM79aBsOjeOZFn154IYj5kW3Ny3gIalJveMFrxtVgOfKgEGcdjcdNiADFS
	 kIN1hYLEwJ5XHoIDz/mg0Ob5uYxXDkuJlvsLzcP1HrjDK8GCofpkvoZh2mtm4a8X/q
	 XpNWmv13U3Jsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C846FC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 08:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171887342280.22079.7797320178590851506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84c5950fcbb2e8f0af0275390f6ddf83956841d2193d9d2cb3a2742764d14bf0
Date: Thu, 20 Jun 2024 08:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718873422
