Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7F24C92
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 20:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765656174; cv=none; b=JtzmN/UDE0cFBwzco4G22o0hpJkfWfviHr+3YjViI1ByARbOrabYAB6LvR6dfrQXn4Dr514OaAa7Tp+IYWxuDQVecoEvzIQdNmdlK3AIynFUwXNaxN/MC33Mrg/zRpyNtvlpMgTGJcaoVPy0YlpUQGE3wmCSnww0sXM6nEQmPQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765656174; c=relaxed/simple;
	bh=VG6E/CBKSy8I+ZiA5xjHHhWKDXeXaRV/zfwrHHkjcVQ=;
	h=To:Subject:From:Message-Id:Date; b=uZWrbmLKTHxaFaMP1VSqe+YXNxq1I0oOmY/ah1Rbl1I91HEa366mkWqclBUns2Ymr5xgdZWjqtKzvoZkMlMmdD9dtLPEaZbSNKxnm1pM9eiJ1uO2GQolqSC1daDliTD1IBxUZQttXvoZ/sy6+fmvkezmLWAleztGr3Jc1gfB9Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqwC5cLD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqwC5cLD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC35C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 20:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765656173;
	bh=VG6E/CBKSy8I+ZiA5xjHHhWKDXeXaRV/zfwrHHkjcVQ=;
	h=To:Subject:From:Date:From;
	b=mqwC5cLDbsJe6nNCxMzecjFGsd6cyIUYor0XQlMBfaq52xtvShO3MwqGTutk8UOHw
	 bmEkqRC7Cmd62CftA5GHWVNQaufwUstvOp56BsK+aq0HAy0g2W5qpnU9AnT9lMSIKj
	 rpEUNKoUHSw9j0kXB8Af/B0SBAQ40q/4bBCHf92JtC5wCi4lVvu/RK4WikmImWw3lt
	 OEobHd3c4/Nn1wT7pqJisekoady3Nhyq1PSmbJIQC3BJKwlSEZUfJZXpJBCpzontKG
	 YkWatlsszOocvvQu/8dFZzdzz/zHewRM7abXvfDMtYXFoCVIxlXPElwFlynHni+ixa
	 Sctc4oMZaTphA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9788AD5B162
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 20:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176565617358.22714.8859022201569361231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c12c25abf739ee597bc39c4995bc97d44c61080b717bea8e33b89855e0507ba
Date: Sat, 13 Dec 2025 20:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765656173
