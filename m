Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE6019539F
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 13:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782653914; cv=none; b=RD5w02V4ndzw5IPaRbEDNp2AINUo9D4i6+x2KU8LTAhuAOjFH6jzj1gkA/Gm7k170CqEVtE2QCNFCDTsh6Kx+bSjC4m9V+iu7RykqKirIR2Psv7Gn//Zp7QOeBHR0mCyrIhi1PLAv6vgWxZb5TvVYvQFTCyUN9wPPoH/afzoaSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782653914; c=relaxed/simple;
	bh=wB+AAlL/IvSOfJyFZbjHOyabMDKfNVWL8y0W1PeuVy8=;
	h=To:Subject:From:Message-Id:Date; b=b2PHU+pfnALwO2lKGAQoLwIxc8mNgCRkkUffVN6DxM342bDwUEzPQtThYhMMWJIDl6sQjq72eXqZxaJFDPu1wX5BnSjTTZxCXvpUZ30UF5OUWpcnU1vMqKc1rF4hqM0oETmM3pH0JQxmUERRfFGklqbjLMMMTesk4XzyGF6zPTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ej2+WgJC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ej2+WgJC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC0BBC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782653913;
	bh=wB+AAlL/IvSOfJyFZbjHOyabMDKfNVWL8y0W1PeuVy8=;
	h=To:Subject:From:Date:From;
	b=Ej2+WgJCHV4QokH+TDcPqbEux/++T8MInfTb20YIhwNpgvUie/4qSZ3s5XtzYijyT
	 ZT3unxUDd7swez5FV+JR4dbgWOckQuCKZMpQjRb1qxNR6RbG6mOKMHHmNi7CW996/8
	 5CXUWZIA2MtffLv8PGoC3W4XPNiSnxNB646hccUA1dhPb6aWb8d3Pykj7CHz0Z18mJ
	 tZxP6datfYSHzyQcWiUwzyTNHLIA0GSObrwCSlm57K6JcFsIK+YUNB22PUKF1Q9PF5
	 uC7srWQZJz8jm3Z4qx7RTcPwq2DmCZg8HR+uZwvn7boZctm13EMFE2AxClouUWVWRO
	 1zEMhnMFktOfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B16C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178265391374.1560.8044690427182920937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e25c1fda78d218bdec45089984c8dd7ee15b8b7c260d1210c8f1a05348264d2c
Date: Sun, 28 Jun 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782653913
