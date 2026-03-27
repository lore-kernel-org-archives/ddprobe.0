Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3B43B38A5
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 10:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774607094; cv=none; b=Fod3bDXlSVlPpfGoKTEwpjz+cx+mUWEGxVhtyGuQmc4c1Auf1ZcSJwuHFX3m7JfAAYssZC3EcSvus8lp2CySDvgotntG/dM23B0zTHVfhEXqJEdn40vQSr69QryaZJeOnKJaSPunUcmwWjuxOZpQAv1CiF9r90B7A+OlD0u5PHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774607094; c=relaxed/simple;
	bh=5JUFZN8pc9S0A5142EN3/RUzaYI6Ek60B05ZGMLJuwo=;
	h=To:Subject:From:Message-Id:Date; b=Yk6nVdzcwlMXKNwzfvgRH509UTcJZRrJg15WI4FJBp7EXSCMF4TeWnDi/npl5AnwnhlX0+5EqtZJ/buPcTRH+qvbm2qIEU/6UzR2KnH33JciZSXDN/+OPsiv3od+eKwxsRxQnzIgfO+1qF9HYM5mbkfrHqBkz8i4gpSwdJan94I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QmXCxFyA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmXCxFyA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3CB1C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774607093;
	bh=5JUFZN8pc9S0A5142EN3/RUzaYI6Ek60B05ZGMLJuwo=;
	h=To:Subject:From:Date:From;
	b=QmXCxFyAlovU6bjD3NlaJESLVntoi/6smjodFanB9n1YZwqQjfLnyzj0dtLLgSDR8
	 EEHZFhFiDIykEbv5fErmTmssr0htgvIXiasvC5HrBKqb9ZwukJQ5mWQUxSJTSGKq6E
	 2s8immPFMwKaNiE2W37ztjmLbOQRxWV5JjQxmjUzdEN4UDMNrxhhE7BJlRlVI7PyaO
	 9vRMKaeb57tVyLhSNAh1bixvjE0I+o+B+9rZQL9tGqwfR+oXadl3r5/J1mLzJsN9ny
	 UytyqXLRQB2oFQ19yZkRbKWkvI28/IIcQ12sZ/SD2A0ltM/7/Ef4+8SwIsufRSMTYa
	 Z41RAjaVAHCUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EF010ED651
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177460709358.20833.3716025294542286913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d5f7d81a7f41d23f6488daf04b4a46d79b124d2da51fc1be9f9f01ff846c07a
Date: Fri, 27 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774607093
