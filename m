Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4852154BE4
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712739497; cv=none; b=m7D8jdECLFZauTVPIuN15WGFrnA9to4Q226CQxkINvkRLT3rC1cd5L8BObQIuCUzol4VLePLUQ+pJEOgWrW4pd/L76UhM4Gh6O4rjL18Xd2xMqsFF+GG1AUwoUjwZLx+LI3JSXGtzC0MPXSH0iRgFKIPd9CRH7byrIFNJiFdWp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712739497; c=relaxed/simple;
	bh=Lz2Q1NT540FfoCa/opdETpXIRQ4EOAkzprAUfVzU4Hs=;
	h=To:Subject:From:Message-Id:Date; b=R3fhxLbO9rxQNkne5ZqQ+9xb6qahyhW+vPSfPw4YYC15eCwsxK0lrz9b1KFG5nzOP1aGUrJ70x+U2nlaFsKzYJlsucsX8ZhKth7KQ6wBF2xUxjsCTQ6iCRbNLYxcTTuZJBwcU/NLhnUR708tbyTv7/fZ7wCXuqeNinqZjK/NiHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzb6wRKf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzb6wRKf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 818A4C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712739496;
	bh=Lz2Q1NT540FfoCa/opdETpXIRQ4EOAkzprAUfVzU4Hs=;
	h=To:Subject:From:Date:From;
	b=gzb6wRKf4OSpySGDrq31v6I3xg0X061nWRdLQPHpdg2cZt2QxIq0l2Ui93ZVtRQm+
	 2FMN5rmZvRPcKSykIgVBtBRIfERLLx4ZqKHOWBI5iIKTcQfOrfmZy3K0DhFz2Jrdli
	 q4le40FGc83sN31FiCqF4m3K3qyQvoIOePB6oIVwfaD/apNRxrxlYUpOkpa+QVmQl8
	 x8RoqRaTnK+Moi8+JjtuKJzaL5aCglh4/9nb3J7BYha3lGzlt10AyERymwtdjY+Lx7
	 +cGvBjs2Ui6/yyiO5ojTfMwYMxev3iB2GNJDkUA3aydi2U8MH6DdPCKs59a0eSKZFX
	 TgEiOwiEpLy1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73359CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171273949646.7674.3088697105194644585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae57e312e67a54a560d2dd1956e079d53fb767684f2125cb0d5f03c71556a058
Date: Wed, 10 Apr 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712739496
