Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B47A2165E2
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753742394; cv=none; b=WcVEXOmxapCqcXyLfXnhWnWO6aJ0NTqz6bFgyt2iB7ZqrpyTMhIXu+jFRYiWMPeSPu1E2SSAZXlx2S1uxAIUYG/lSSHml8RvvvC1pZUC6nwQy8WDDEl1A8UZ1F5pUIiRS2NLvzaO1YzByfg41mfKdZtYkI5x8TgVxKk3qC3ibQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753742394; c=relaxed/simple;
	bh=aL3xE93IIWVCDYL0fivCVioYfmSu02Atjc1nbzXxaEA=;
	h=To:Subject:From:Message-Id:Date; b=o13sgr2H6rA3oKAoej7HLL7QPrUNBk6SvF9YxtwQeUBDZiHkvUEcB4tbndk/RbQrCKfdqH957b9M+PkcPhLqY2R4kayVxYvGdpg5S4LT9PTy2z6MPJcgFiU9ag3jwfDS7oMf1OgKkFHJllyAZtFwxxT4qEele770g8fEe0Tm3/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLzxOlMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLzxOlMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C8CC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753742393;
	bh=aL3xE93IIWVCDYL0fivCVioYfmSu02Atjc1nbzXxaEA=;
	h=To:Subject:From:Date:From;
	b=FLzxOlMWv8KqAljtNzquao2I5B70bsd8yJd9hogI94XIO4n5vM/LGqtxh30YqikDP
	 aD2c0yK71sNJIMhCvqUGXwnbHDYMqNCoZXNLP/hu5BFiedk84b8IIR+ZCDdeOctyBC
	 2twVqrN4hv4t2Dk5q+K3/IaK7QXEQZ8WxhzSpcQ/dgdc3STpr8RZoXufxBjKJ2taDd
	 wvPkEdk8MHIFgx9zR3LofpJnYYnHnMcqvOZPhKYHH759x9BHqlsHEOJ+SQxfKQsZhT
	 X04sgRvOz9EjBdQKPpzZZlYC9yVP2FarQlOxAqqYqKIiU60afq8HCcyXjq55Fq/SdH
	 Xz585pcTUTKHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB72C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175374239358.10452.348270146580624402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d65fa5c9006eeda6d47a81949e48a42903df89443970e0b56f516d16268dd9fd
Date: Mon, 28 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753742393
