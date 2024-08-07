Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E90BE4E
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722995754; cv=none; b=LeM5QBmxiluYGRoVaPweLO1sufaiIZoWpjNLdgfma5RoXVag0pv/wjfSUZvV2/VduF9AHzurEVocolOqRSFcYlxYCDEBU+9PQMTt9oZeI8tvi/ahclqPwFZKdQr1D2UMHKvKkPpKtevtrS08A3U+Na3PiIaJA70NeDJVEjbIblA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722995754; c=relaxed/simple;
	bh=SWfOOkZvVbtwb5+82DcGPK9rg+eqUHIELKanB/l9yWI=;
	h=To:Subject:From:Message-Id:Date; b=BymiR05ytzcpBR07XmKFJ1+Ae1dZcbmzy9rcv1O+Qhdkc4QbqVtmjaYo/wZc0VYuEdtww9j2dqYo9H66JGgulEe5lXgcVssSEg+Qi8kEix6vMwYTr7czkBlDtrkDHHFq0CmFyJkVTzBmlWdRwm90wEc/OolkW4GtZ+W5Zm0hrRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYAB90Hl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYAB90Hl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6A5C32786
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722995753;
	bh=SWfOOkZvVbtwb5+82DcGPK9rg+eqUHIELKanB/l9yWI=;
	h=To:Subject:From:Date:From;
	b=NYAB90Hlf0tfQ+OJKPVjxbVQpHqfCDUIu9RWNajKfMgcmjrIFA492ACfb+bh2IZgR
	 njVlyd+fE2bh/z8egHUJJ11PuBtuaggGaaai/oeAMQDOuVf8WA+J8xSuT+TQoLEE40
	 xUATyPcAZ/U6JL8tIlKV0rIwlYa4qSIyXkM/XmWaNezyuCbD9LypIhNj7pjZktW+iX
	 Cl9AZBT74OcNRO8HMV6wdBKV8gnqknLSbWJu1JajM0QgOj5TL/fIegW+X/e3WJLUcO
	 E0snWBoMXmtZQbwshccuFM3ml/+5y6eO/ESks8FRFoKhou2/gqEnavxohLE1vg0kNK
	 6QRdZQKuwevOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98996C52D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172299575361.32545.9034685776975454666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b60d4d4715874ce440172d327e34f8e2e14a2353ee75aa4d7dc2f0811563df13
Date: Wed, 07 Aug 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722995753
