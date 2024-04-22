Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671201553B2
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 20:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713816023; cv=none; b=MMb+VjrLVnOOIATQmd9ImFAn28e5MEYn9Gxmge95BkM201QeeIGwVt3hQLDBEnX635atMLpitGLnz1VmrOc0fzE4M+jnqKX9fXcH5dQuXT5r082ofSkNeSMsg/1JnD0u3cj5L+FT7ZvP/eb7INakx9FOiqKlZaUk44g7HAEaHd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713816023; c=relaxed/simple;
	bh=0s713vDVyKbVTY1km8ghIn54AI8q/VTefDMdj9bbhnQ=;
	h=To:Subject:From:Message-Id:Date; b=ir17Xt1gbqJAHX8GMEjnQgvAW90NsLSyWgEu+nLUi1WWAJKrhvMtjQ6jIvoEiSnypNI/mdeqiGa2VHtQs0EsLl6uEzVpPgiZgZBSlVga04sYor0Yql+mAUbPdAmO/uA31sYcHG0bGQvDaz3crG3dRpkiWNXmVUqyL47jJVxApN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8HUDyhT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8HUDyhT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E58DCC32781
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 20:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713816022;
	bh=0s713vDVyKbVTY1km8ghIn54AI8q/VTefDMdj9bbhnQ=;
	h=To:Subject:From:Date:From;
	b=Q8HUDyhT7Ju0OePFEh9TVKlIkBDQ5XnSedImQNQ+qbIvLecSuPDqGDhrkjcqIcl3G
	 MIKPlnfj+g3+Gws5JnXm/BjV4UqLJeuF4ba8r+R7HTTkCWxy6YKFY/PMYkYiee5tgL
	 50tCVBo/SY8pUXkLGgKnBgSs/CL+OWnCWxoz8X9/7KN+PolnOm6OMZYgZ7FAheJoel
	 jAcFHozb/if18q2Z4DuTRiUNYQwMF4JP3INhH+qslhErWvyAzpiGs6ILnEgQ+wIaWy
	 UEzmaWhUpvIht4QY9QkUouQ0A43Wi/vDpcbxhkFC/tUI2IXtnZDgPSoajnI1lVCSFs
	 rXPe8fdGEDgyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC3C7C10F15
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 20:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171381602282.12334.11687176266759186004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fed8765656b524d4a41a0006fb54f5709088d6939f61792a4bb66fc5885b39e
Date: Mon, 22 Apr 2024 20:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713816022
