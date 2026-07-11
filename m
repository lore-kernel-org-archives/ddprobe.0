Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FAB38E5DF
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 09:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783763914; cv=none; b=YB0MomhcB13XvKKOI+TJ1L5cQDBDiqrvkA368ye+yBu230MBjokB03l3hN5Poz3JxrfaEMB7Howa/KwFdP+HQ1RFXPRCXbD9jTYgQqUnzWswabSckSdJccbx1feCPoAQDzbdiCY++lQUNwW2sFV0KjtfkWhe+9YSaAiiyXLCUOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783763914; c=relaxed/simple;
	bh=vgc8mnqB/SML1CljrwVxgu1yJw3AbtZZuBC8zVj2Fd8=;
	h=To:Subject:From:Message-Id:Date; b=CSL1pPdjjkuSnTmIprGhv+MYwvm+KePjxFDR5hEmzj4unO8wjPAh/nbTxD71gM2mIT20DvEbI++Erc9elVuCBtI65OOqFKP89Ar8LbkpWdkfXZG1dTQt7Wjnd8lAVQuRrYuDb2JQZamk5HckviJlMUG8LLFefvsPu1CNLE5pxbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dg9zZUTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dg9zZUTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE53AC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783763913;
	bh=vgc8mnqB/SML1CljrwVxgu1yJw3AbtZZuBC8zVj2Fd8=;
	h=To:Subject:From:Date:From;
	b=dg9zZUTiySI2EXx73wZPlIsRW++sLh0hb4kx3Q+s1afBNY70OjE7NFd1qF6RBZhQc
	 SctMNKDSnFdSaaBvajNC/LsPADP2wDgEAkrrTGr6v1tqLqIw8WJENomembntbpQaq+
	 K9czAfd/gOFiWu/pLY42j+pDhvnNBKU8azktufAr9jOyjmurgyxMPm+gv4Bk3n4J+O
	 C8pgnQAkFEs6vVE2KkdRb4KXo5r9GpOjrY7VK0F9H8gw+zvekgvAj6R8UhWZeu/7o0
	 oEIOAdxgcB6YXhUe6OHqd83lTuSfYfBaN0dN0usAbmhTa/tkFAjamTeFsxGIKxu19P
	 EdGEY07nQonEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCD4C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178376391368.27115.2060243514813352786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f2aed96653153bfde1139b086b2820a26f8e3be4062ff6b82907d63f0acbc81
Date: Sat, 11 Jul 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783763913
