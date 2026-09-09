Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4DB3C465
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788914434; cv=none; b=siJJuS9tul+ZxaNvPDWizV3E4xKccDXpijqygPrj2YJpSp5sg7uC5+UuvONQji+VYLvO30vh3bcLJEcHBrqUd7x+OAgASHO/SykMwYNrpy7s2oNYxTyoXZfB1tpAn5GrTm6VPS7/hN0VntwnpkKksFzZBr59sDdfYmBuiPIUeZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788914434; c=relaxed/simple;
	bh=yJ+ZDbyYsGL1ZQpyhFGnXnB8k5kJJPJmctmR68OBBcE=;
	h=To:Subject:From:Message-Id:Date; b=aGZ8f5LkwXa4/sugvQipLj2ZxccINbe+MZkQdA0NYRojl89Nif9lVwc6QJ2xQ8gU8kdNVT+LTAU8FV5sfcK2zAykR1kU2qYYY0gqfoafuCE4fIzT3/iQnM+9eM0wMfeFzNlhgqcVlGG6cosaf9mn8oMnDLxRHMyo4sjyP20OEFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5oUMy4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5oUMy4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C87C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788914433;
	bh=yJ+ZDbyYsGL1ZQpyhFGnXnB8k5kJJPJmctmR68OBBcE=;
	h=To:Subject:From:Date:From;
	b=u5oUMy4bc96URzgN0PJ8KqVHrnfCZFgiaB2zvV6YrgE3uQHxTaO4g1ta7J9DwrQKr
	 eMQDOekDFgY+pMArv+GeJTqZlpH8kQmI5sCF8azoVKl7cbNcJYHpRU3yy0VltSX1Fd
	 my+mdRmJ4+VJMi8IfO7AkHIOjQKrq7CbYF/oc7iASw0Kmn6iE38ml7nkjnXzdaUbgh
	 58jrRqv97/Sw7gRIdKidHD8WPWxXKilonpUNa0iGVDwB463mf98hdPubwqeWhbox+d
	 NYgj4EcrXFcEvVYfXiJcV3W0TBnkrELT4tUqi7gtzGDSV9g0cyXT6hU3UKQSqdunX7
	 8sJpAvOIizm4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8A9C79F82
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178891443369.12393.17289964102748776601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c81698ef81bed78e8cd395f309d068d4e5355d7652246fbb0b7e718f0ac4c16
Date: Wed, 09 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788914433
