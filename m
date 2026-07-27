Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6169238657E
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785187834; cv=none; b=RyK8gQHq1kAz+8EU7YLtoF3Qg3gweHz9WzkLMqq+JUycknRaPOWsr2mVRpw+X6xscPHOnGKTll6MGLWnnK/C3iLhL3bqL6K1Hmjbd3qluiBi3jGM/nz58bmO0QpeA0OXKOuBEELAZchzBCKiJn/5bgY/YYMDv08571RL2r4cmIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785187834; c=relaxed/simple;
	bh=6218U0/Od4J5At0QLehkz7iIWQ8JsT6UrUM3lKloESc=;
	h=To:Subject:From:Message-Id:Date; b=gmJ5WP7AmnkiM9sbM0MLNC2kEi1WYVjp3l8bOXA6HARvrhKhNO9rz3GD55ka4wNKDP5EslKDD2NjrcN+fmjKx3MRxZx4sqpibHdeh8SfKe4mB89HS03R3mk1myrOKhrg59+Jjvfb7DbcRQ081kB6U4ywuA4HkK01+RJ6Z8RRIfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOrIYsjB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOrIYsjB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B17C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785187833;
	bh=6218U0/Od4J5At0QLehkz7iIWQ8JsT6UrUM3lKloESc=;
	h=To:Subject:From:Date:From;
	b=AOrIYsjB3Y5yBN3kM7+aCTiro7GB26dIOJlmsnjR3TW7bwGT4sGfkO/G3Hv0pnOIg
	 B4ynC2Uq5YNfYjDuD5QNTaEaY4XnEsxbMUQR8cr0eHHjCeLYJ4ulRsH+o5I9y1WQTd
	 niUJzqjwHIxQqTeQYa4XO6AIxl3DgWOCyzL2VZXJd8DB4VhOBvVV41FX3/CrUILxoT
	 KUhEE+vh60Mgb5N+oomB9FC80+gCCGnPLBYUxUCm6m9qke8QOLvjE3niv9vJ0JsPZZ
	 +Hh5rCPmlmRfNzM15FvcqPK62hs8bANdNdtw1t4VoAuSg+Q4ka7QUD2hoC69OuY6EP
	 4Kz6jVd9UVyLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC13C53209
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178518783368.28170.769549877509345107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1cd8769949dd3cb4992d52a65d3610d96f6656beb801b88e469e1b649c75c4e
Date: Mon, 27 Jul 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785187833
