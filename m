Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3FDE26056C
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771901094; cv=none; b=JmCZaAvBS9JlrVSGyXGHDfpyUKOtqhseoqwxmWLrE5ToLw2KFvyT3FxEWo1ecSGZVehrA4aJ7aPeS8U7dtmQICW+Xl87sdab4Gk8ufKpzlqjGJ/2Hg1iB0zai1Un81+Q0z8vgZexmXn7AUUWq3Q1Ad5WIw0yit5Fm+nokU0zZEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771901094; c=relaxed/simple;
	bh=XuJaTFOvw+C7cIyxdPZxFjiVn5LZlkOcYScaWeKeSRw=;
	h=To:Subject:From:Message-Id:Date; b=n0AzKVfECDal39M5PVatNRzghQHvNxTb1OYaIsRoSj7rgIHsRkDadjvo2aoPq9R1PnWKm34RIpjDJOwHzh/zvTN1KQC9UCytpWQRTXfoTQkMYuhSoDvO8FI6z8XNCLdQA2k6EGRXR8EZPr86+hLg1SNou9crtGG4oHbWbTGLFq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKz28V7i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKz28V7i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B48C116C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771901093;
	bh=XuJaTFOvw+C7cIyxdPZxFjiVn5LZlkOcYScaWeKeSRw=;
	h=To:Subject:From:Date:From;
	b=rKz28V7iyyDyMuyM4yd9gQbON1pzAa9LeZzi8b+apThTHnxZIcimGKiTnXh16p2iQ
	 ip/8145atM8B4Orb5xv+8sSdrBAZIi5VhhIYm2IjttNoPz23Dtb+a4y5ykh5LO8hTF
	 WzIDbUgs7CLIDgE7aFO5S6rrKiJIpQ/UTTH1i3YC4bpjZsr58/AqD/uNAvVVDCDmo6
	 a00e1flbj937cBNzSg9r19JU5CqPQ5KZVxEalZDxu2tanjkfWgNHOtDJLA9z0gRFn4
	 ypdwVUHoh6bfaQNTEBa9fBdT427Inu13HfAc1G8mD92ccRxmL0pN3YFNh0oofh8IFy
	 f7ti/Vq08tNPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A30EFB7EA
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177190109358.29608.17470563374141030008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5b01a299f4257887f373f90114dad50d852942a6e53d1df68b28f77d995692f
Date: Tue, 24 Feb 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771901093
