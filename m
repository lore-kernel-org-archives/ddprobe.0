Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2253EBF12
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769397834; cv=none; b=QbkpCxP2plzERWljakN8NNzJNwnpqwZ+Ab9w2jGxvY/YNwocB4NX4gQr9a+iKG/QgQpf1kLVEfeYpArZ32UGvKJR8UiI6J6wQqLCSSeS0p8srNgRXDyH6O7r0/65L5TWj70+U9wrRIzm0fG2azqJ/MOieWtyoMNXVPrj5oF98yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769397834; c=relaxed/simple;
	bh=28YGqHFRwNrEBqwgdJ+P45hjYUXOGpVu8oojpp9+PFU=;
	h=To:Subject:From:Message-Id:Date; b=pPYXW2kG7wvHWTCs/ldtgsFBN8PA+B4uk3EEJHLcsyS2YiKNe8kalsXPtJHFV5LaJ/Y20ZhKszW8S0aS3cBFhQR9yFs9fJHQayx/4GSxTkAG/nSAxYt80xl63hUkw7+dD6ftTI0Gq0FEMGTky6tC9YNJQpzvQV82fwoDr4amRC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9IwJHJQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9IwJHJQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F01C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769397833;
	bh=28YGqHFRwNrEBqwgdJ+P45hjYUXOGpVu8oojpp9+PFU=;
	h=To:Subject:From:Date:From;
	b=A9IwJHJQMeeuetsJNz9SaLPqYIvgPDNj3EqOmUu0iXmkBobBVKi+JbPeFk0nIPT1I
	 IZ2dKuy1enTYfNW9Qeyda1YuxtiysGpiG76ku6EnZLjeBqIKoNRE8id4SX5keW2qjP
	 yW8fkonQxrQB2yVPx34x2jfuONB3gOwGEt7YnBbJTGutj784rypVcybtWKB2F/BSut
	 T3HN9eJEivOm7ItbVFZ9Xw5DWYd96A8U07qo8rUttd0v/FliPi40KwedtGBlIsY/8C
	 cg0pg17EBwjkW4jQ1Yz6TK/ZGWhfJ4zzu+N3hoAJLTcblEFcFzkLZGEZepUvKPKAhc
	 7l1Cm7gso+xiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3BBC88E43
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176939783357.15353.7252494600798695905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 936196044921f63887fa59a4c0f0881371a25875790c39d6db9f12d513c8fd5b
Date: Mon, 26 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769397833
