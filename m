Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70ED24E2F1F
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790954434; cv=none; b=j8uYpglOn8KGtAWb2Jjl3oAU/urhoC1Dkq8A7BCgYNZZRfcoeuxtq1FgigyVDYiQwFS/oNGq3ER33pACEcBmvwZvRqp1hDbc6qhliYJPw2KEzhSRgJJvnX7aCv7FeQkgQWQW4i0ahkYXpiIw2UH9OLonaFq6P4EVJj15W3ofdF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790954434; c=relaxed/simple;
	bh=Syo7UPnBonTZm6JoAhedH7q8QSC3VZ+Htgcemudl3nw=;
	h=To:Subject:From:Message-Id:Date; b=dFvt4wQYUrFGNckQMRrbSpiy8v48tqUOlQdpt8l9e9BocJj0sbTFFhWGaFOGeiR5uBL2nGXKM6Alm/+F+nK+/SwcqQgVc4NDXqSBnL8bBd0CvW/c3ni4LP+zc1+pbNTKBUFlONxIxytU6X4ZwXNkK3RwKnohU/flJBXi4kaG++Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C66fsu9U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C66fsu9U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13F3C4AF12
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790954433;
	bh=Syo7UPnBonTZm6JoAhedH7q8QSC3VZ+Htgcemudl3nw=;
	h=To:Subject:From:Date:From;
	b=C66fsu9UvQvS3QDQMFpt/BX9A7B9GeNaGUaqYeGYqVfA4Zx8CHYuq+6QGhSfwdWnr
	 QDKm7mpxOUmk1YV+bTGwSswtVtE35d9qknkkMdJeXgZz9g2pplCQOxf+7cU9R6P19Q
	 2ZB5JhFr/VksVlAz3xrHj+Y18HGO0cGM1pVrAsF6q9FnJNxwrwpFX2cZoYuM6Ml8nN
	 i7s8ZajWT5Ibkm/8pdKN8OC7sa9Kjv5rELY94sykkT9d+X2xeVwBafqzzibgq1EmLV
	 MIz8np6Z+YXwC7XT1odKC4w7EhCZYm7UwqAjhRg9FF29pYIURPj9vQfJsNHnbvA3yT
	 JbrqpD8D41FOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC17CA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179095443368.17877.17100180951245357549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3cb768d4b4e548ac4275b49a5c321e385b214bb3a9b718ecd2b96208df25f2a
Date: Fri, 02 Oct 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790954433
