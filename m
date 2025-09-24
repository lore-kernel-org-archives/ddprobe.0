Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D3E30FC3E
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758727794; cv=none; b=YTGlK/+CYDCaIbGJh/WQLUDYwP9X4z6JnjkUodkTOjBnuoVGqSLVThEZZvW+HmoLtYmV/v2IvXId3FlqRC919relCYbNdWKN6W2PHHddHciYJeRsLhNQ3DV1i57TqUoQ4mQWytWs8Ik2ynoEttZ9MM25CBHCDe8DoOx7k/N499M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758727794; c=relaxed/simple;
	bh=dMuyP9fb4/9oh1hZr8xauHV5wSrjGRTYxWPrfvvSUVk=;
	h=To:Subject:From:Message-Id:Date; b=C8XUjPvTVFJ5Sy2RrTCGPuKYaEiWCoI6+llEqdpZB8EaEWjzVBTOMfvOD5SK4BdVfhM3aAw1LfWygnOf+d+AnNrfEySIk8g54fIx+vydIEl3ZwoghbvPvZo3GwgWECQ0rO1q0Czgfy7G2dPONK6Pd60PPkicBpaonJIFT0cWkZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJ9TkM8P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJ9TkM8P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46C2C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758727793;
	bh=dMuyP9fb4/9oh1hZr8xauHV5wSrjGRTYxWPrfvvSUVk=;
	h=To:Subject:From:Date:From;
	b=DJ9TkM8PT2dHxO5zW73q42MEXH3FbA2a4NL+6iKAxLmlq81l+3PamgGuw6jWBsvC1
	 7kQJpjPAuU8UEP/n+Qynh51LK9E1+WsWyEU78OGF7wbUH7tg0/+606LLmDh8VpGcF6
	 L1LzgfVUmvNzCEBCBrPqVsg6pXOQCkLaKRDiNgk+eo2f6GOx+WXTHfo61KjrzZieVT
	 49MrDeWK5YAMZbEjzkDwpsUoxakv8xORo+AOipCUcWoxKBsgHlAi4CUjntb16JjjkQ
	 ewWgI3CA7grEtBvRf2pdaO2DIcLE++i8x3FKfoq+wG2n1yrERtG5/wWtaWVKDNlxMS
	 QQn1JjNvjo8qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E2FCAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175872779358.17376.8237126050597497057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c13f2ed7b2fd523bfcd0537b1ea13b2d46f60c995949bb73adec5c9da2bf25e4
Date: Wed, 24 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758727793
