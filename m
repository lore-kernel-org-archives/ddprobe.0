Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4498710A24
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 08:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716194543; cv=none; b=puqlGagUt3d6/FZLCDjpP8BHF0R2gVPTlTtu73qG5E1xUBAZ32RmXwuhmQtnckdqehX0bic/5g+gxP0AaxowAyIJtnQ2LMflusKOVTlsWQNJmPd9VSX9PYaglV6F/i5eOm/q5ltNkA24tHr1UM5oLTnC4tjhJVMoGAKQ47//seA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716194543; c=relaxed/simple;
	bh=3FzgTTXHL1AOP7c8z/5PrXTJSk6y3gs70knd8Byv3mY=;
	h=To:Subject:From:Message-Id:Date; b=NZyBcJnXTPhQ/W7uRqvb0oYEkHkhl8q8dRIHxTSINMb788e+PBXVgwgnz7LkWHQ9J4UXnrAwyYdVX+IkUQJNEpEQYryZwvCQSffzNPw/yf/TSGn77W154YzDOJGVlplVf2ulvUAd119dgNZJbCMW+YNcsQMrTmG8hZvh3rx1rIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=naac74Cw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="naac74Cw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4ED0C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 08:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716194542;
	bh=3FzgTTXHL1AOP7c8z/5PrXTJSk6y3gs70knd8Byv3mY=;
	h=To:Subject:From:Date:From;
	b=naac74CwLmyDfkPTROYn9XZmbW6XuFhxgaI/P/QfjF/U82CMyCmoUuhfdHgmQghxe
	 +UzawXeDKGGqsXdrJQUthSyBJSeJKtaB5qqKd7cwnI7+Hth433zW145zu0N0B5aH1r
	 0AbeRk5cSKKRcARFjPLDXvfjapawHm+ZgG7tCKckH/aQYoPiPZ2UeXSWUPh+4PGhg4
	 Q/dTR7wsdTu9oBOfdDuSgGQLnF+7QP7duValR44Be8U2vwcMLnSeNRHO5ujcaPtC1Y
	 VIlh9pdQmwRx0MksW3mdui+NAaOLoyhP6oTo/3pQeHmYIzqG7T1Cl7SmJqtaBDJfMJ
	 0U0QSZmCSqqvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC2EC04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 08:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171619454276.9176.6230620738816466763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcceb220873a4eaca054983087ca5bf97245e8c6474b0607d54db9d27f1d88a6
Date: Mon, 20 May 2024 08:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716194542
