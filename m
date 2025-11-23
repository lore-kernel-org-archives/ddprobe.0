Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BB8231827
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 22:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763937714; cv=none; b=s4A6Go227Ob8ybTJsdH+pv83OApFQ02uEhZCF8flFXEKMVYQ3HDix2zoSVhimHR0Tbd7+SqxnKjXtspgkyRGnAi16WCS8wM4alwtj+EnPM7PwOgwW0XjBG6o0sEqy9rmF3MMOb/K6R9kQ/8fZaybWSYAjRZ0O0uFUNni6+dUuN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763937714; c=relaxed/simple;
	bh=SfF/keZxWzKlzIq1PqF/0NjK7SQxbImadJdu5nj1KBM=;
	h=To:Subject:From:Message-Id:Date; b=OXR2/Ia2IsnK4tUjSFDoekDdLl4Z+yuh8VflWflL3HG8H1CS6ow8r+w/qA1O9xCf+83iGjED7AUCrholypWhNXCTWVQH3zNzf5APQ23BVMqgvvytg0mefv2/0jJwb8IA9GZa57LyplPmlIHQRQn4QhA1aj2HtwfRarE8GI5Fw4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eC051WRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eC051WRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8260C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 22:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763937713;
	bh=SfF/keZxWzKlzIq1PqF/0NjK7SQxbImadJdu5nj1KBM=;
	h=To:Subject:From:Date:From;
	b=eC051WRowoJoRose5mY89iO0i55yudttwk0AnKxHUr7G+kOC1gYwvczr9uzQMJeZX
	 qr1nGTbmxaA2TeuDzgPJ5GMH/kqSCJ3hEOzdFGVvUA8/5KZks22IDCqvhWfVYViDj2
	 v+t7DVtpedwUuzhcdrT+0uhil3ZDWItbTkE1ogKKdFJaJLRQ63viz2hTkQzDrfKUVJ
	 UskdQj3FyrroWMfyAtczQZT4NYl3G4s48Tx53Q2bm4enF3UknXVwKwgzWYIH8ZjrKD
	 DNf6n02aFVxLX+DU5k88pKXGbOFJAdu4VtiRAbQG82PwGehLi4HvfSecqy3kqgxuqo
	 7TFOk1aJEc96A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93950CFD2F6
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 22:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176393771359.6002.10932028253678750943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe5b754620934ebabb520d181b047f0c104659565e83ac0654b1e4cfcd0dff2
Date: Sun, 23 Nov 2025 22:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763937713
