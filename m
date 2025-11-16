Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B882FB0A4
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 13:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763301055; cv=none; b=uM8dchlBT9F2aZBP34Pzchl13y2GvJ5ljEL6xyfG8qA/d63Fj7RKdy5U0xS3xzzjTMWN5RFSFDY2DI9z3uottwEbEUi1tDxR2y7zXthZiWoQ2q67DBKG7O+YDN8ssBFrfIK2shszECv1LS/XWF4w0NDstns1cdCyqPPE0LkhI/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763301055; c=relaxed/simple;
	bh=LlM9JOd/f5HV7x9PDkGUuQ/+Yu7VpAELTWBcgRh0b1A=;
	h=To:Subject:From:Message-Id:Date; b=o1dFQ8IEdm048Ajh05Gj051m1GmvEowWjWPlFkhsw0ZApiRHHOcUcbmfg5Vd3zLWYwv864IjOQRlSbxkcxU5hi0wbvthYCB9bC5JV3tJumsQvkJycDpts1AFzcCN9GQEoqPz0lbrh4Gns1WFNbJ5jxlOjG71JaizW99uhHC7eRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2wY5XTo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2wY5XTo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DEDC4AF0B
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763301053;
	bh=LlM9JOd/f5HV7x9PDkGUuQ/+Yu7VpAELTWBcgRh0b1A=;
	h=To:Subject:From:Date:From;
	b=W2wY5XTopOg9sY3V0jF1p/mp9c3kQ8XWXLTOTtAMdestLdKD9h28ou5fmoCPEwEYf
	 YzrMBZmOg+J2xZyVDwYi2zVtPb80UKMEiKxHbRczkVyNW9vkMZ2VJ2JNB8feTeeL+q
	 9X7yKQm08Ysw4xNZdGfSgu379C8j2hAfcjtw3TKpEJYjkXgva5qHttWTXQ7x48ha3S
	 bOyyvEIGNKtziiCKUhJo7FmUvFLtJnnvnF6HhGbcM8McyGn7hlM+wCz60MI5q3w6WU
	 yGWnw1ex4UZlas+vROKEq+RVszPVKSEgTcQm3a2Xv+vu08pXsk9vmXhkncQ8eWJrht
	 FqEzkyevdNEaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD6CCEBF92
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176330105363.20974.9162146981533835645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64d83cf0d2923243d07368c320b0c057da5b2095f47be0b88bfd27ac13c3345d
Date: Sun, 16 Nov 2025 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763301053
