Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E4E30E82B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750363194; cv=none; b=M/1kEaBe1VBNrq31WTvHuaAx5pkjMHNGJa1fGffh/QX9h3FbOrnvjzCHya+dKJ5BbP1h8/B0f3Iq60jUz3JyVLUYQbgILRzt5KF7aGMgz2MdjghRAuIzmNXFigorjPKCAdH6vSAZwbWAjkvruN4REoBPvu/2W8ErrZ1ABhL6mZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750363194; c=relaxed/simple;
	bh=ZIM8hfagJHngE7LkLh/Ja1brW5Yx+rcPwz7cffR/Ybs=;
	h=To:Subject:From:Message-Id:Date; b=vCu4N50glJ45zXQMVeqDRiL9Is8mNK8ScFZ5PHEj6Ca03znQgJOYPTChrB7m0h7avuno/JK+TF0l6v1L1bEvC/A7ZEmtJGxmzm9XEMXUJzZBbssK38qbKXr1cYTmttxor9DDLTwr1ESLklxiqSDYeIOdWAv/OAQUB6tTi3fO6+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LhUCYJL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LhUCYJL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B94C4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750363193;
	bh=ZIM8hfagJHngE7LkLh/Ja1brW5Yx+rcPwz7cffR/Ybs=;
	h=To:Subject:From:Date:From;
	b=LhUCYJL/7I6pTDn+3mgWRLIhzOkDd6eNGZg4rDk/ag2vuZmcrtA+c2+6Zu+l+aaJj
	 X1SIw7t8kJzpCmd8hhOfNcyhzDetQtMO7Sv5m+/WQzRJY8jp23PazQj4OuETN23Rxb
	 vY6MCEyfW+/o/suDDxcX34QcbMwdJqyZ/IgcBjyCtDwR5jPjX5ksBXbkWgj3a2D1Gq
	 /9ZVKKvmZLm+G44VgAmYEQWEADTB2VIiZPx1dgckhCRvrXFyP5cBNdkXtBrWj0sXGw
	 3YIq4iriMpW69oL78rnzLFu5QgeMDAsjLmBeCzmSJUuxEPj645r6eePdWZQjtiq3BT
	 6gPpms6AZNX6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE83C7115D
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175036319358.21097.11598098440825888059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16bb8760a2dc6a6d64ed387c4e0302ded5e3edad6965d19c29def5d3341740f1
Date: Thu, 19 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750363193
