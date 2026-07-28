Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75029233936
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785200434; cv=none; b=V12MtJ/rdwQX+QxfAsthY9LILzhdZTNjYsvyFDF8h4v6/zYpXcvfNuuJ/9HBxHhnJJL1kT8BB5QJxa1/YPOYuL+NLQ39ufA6cDcz9X9E1X/qU61l3m1NbjF516QsUmhLR+Hw6Tf0r3LOTc4EfAuUHTWEGej6M6/IQrt9CB8xSro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785200434; c=relaxed/simple;
	bh=ZE8hXriftvoYLQsYZVFJP6pVmnM/RXoLtsCxNwP4S7k=;
	h=To:Subject:From:Message-Id:Date; b=V/6GzQbVIBYxiLT8Glv4CnlEUU9hsJ9X41G2e996C1M+d0QcD+zpYLJ9+247Sd17KLx5IRooukQ6XYqoxsVl8ZdsaHUOFaX1ZDi2JZFKrKHmLhqJ+K58DXupqjheZfFF690DSjqjWlcia3h+aZRJocVOm8ffBVhSFAWG7q0Oixk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5QzUS+u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5QzUS+u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34BCC19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785200433;
	bh=ZE8hXriftvoYLQsYZVFJP6pVmnM/RXoLtsCxNwP4S7k=;
	h=To:Subject:From:Date:From;
	b=L5QzUS+ugrIWw1vw4W5rEWCvY7236XwzH9POCrQ/Xs2XINMTAg4ICa8uFG/1iFdqh
	 o2K98X7s8KhwyyNwGk11em/cwAR4pIJauSHd5JEfaaAt9K62r2IUMOCgdMF1t0VMdF
	 +GRnmGYQmUsY2ziynNKoz/LLcaZ6UcWYfPJjZTE6dZHwqz7x/i8kSLJDH7eaPEsb26
	 5vS3Z4Ret4TyhFmKuloZOirNdPhfPbTp40phJbSHKhflhg2KgkkBlMx1Z0OIh2YFEi
	 cZiktckWnp0SwyQdfyKU51s2sdvUMY8YVDWrqU+PLz9l+DMFGPEtrTs208VpN9n7qO
	 tPp9dx5oCOEcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2F9C53209
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178520043368.21155.1010683167102744915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6482dd4eb28bfa8976a9e3e87b75026b13d64067b3e90aa95f8f878d0c602f4
Date: Tue, 28 Jul 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785200433
