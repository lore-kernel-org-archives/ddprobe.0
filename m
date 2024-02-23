Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F24597F
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708648697; cv=none; b=WDvqtNt3Q3MdFALop87IoixUOTr85JNqL8fAHxHpqfxNQ8Uj1AoCZDASjvwjw1rUust1jnxs1CP1Bh/sx0FzvkvO0c0abiDyByTPBtwBV5o0G9IaxVSfhHu5opmTF2epItSC02c65TvjsdAnLQby2U84sz7V3k9hb1GwRhO/4OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708648697; c=relaxed/simple;
	bh=/njEFLH8zXJPBfDsVpFRzzuiDn/ftRvSx3M33g/au2w=;
	h=To:Subject:From:Message-Id:Date; b=MrL5OBrYWUDt3bYCExdOENl6puyG0DfFsnN57KKTN0jhM03h5qU/OhQKEzWHsxJpliEDCaho/kIxbksL0pnjJSDmBh8BY1KlSRi5NY4+HYAE4PnOnJBsKD8Lwm+QIfCy2aXuGt+hhZ8C1wpEELru2hEryGnArZM4m6mdfaCT0c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4AbhAGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4AbhAGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FC4BC433C7
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708648696;
	bh=/njEFLH8zXJPBfDsVpFRzzuiDn/ftRvSx3M33g/au2w=;
	h=To:Subject:From:Date:From;
	b=I4AbhAGoUbbk3hVTtEKyRo5VOwMZ7rpbpG/jrObqYsJrSUhZ9X09IQCHSF9v7xKW4
	 KT82PG8fgFCY2eOf7bmoV08P9rgKNl+IliCIf8CashqC4uzeN5dIjf0Gkqt6pyVuIy
	 cnFC0OexBjxxS1O84U5EJlvi7idI8v1RWUZ4sz5HPenO5XqXawMSBr3Q/zxebeZH29
	 gA+uVhDY5wR+OrJrsq0WniUwiKu5m4NTHuC9aaEBkLOnebi13u5rmh7RUjMRtIdzE/
	 HVA/sW1tM1ZwDi1r2dGN2gSpTDJ7yL2EanbGWEXLUOj5C6JZ4NmEOChsrb1MT06vL0
	 /p6EeMzg3EhjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63849C47DD9
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170864869638.8957.12656360820635925426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97daddc835354717b9d518ccf68be6246f949de7df9b8569581192c3b8741fc8
Date: Fri, 23 Feb 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708648696
