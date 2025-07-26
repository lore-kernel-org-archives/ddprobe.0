Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C638215062
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753518594; cv=none; b=uK9C1RE4RoA+s8WDeK77pQeij823ycVhZsob2LUXQhIuNp7CAgyuHgbiJB523TXFs2QTMqbtsgVhY+ljZknYtQ7VgoQE1F/krqKOIP7IzdfmN3+IeENdCCUVL18pTAWgUrfiekxLSg/Driq9QV8QKJRn7QimS6krtSCvSpepUMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753518594; c=relaxed/simple;
	bh=W22vS3n32NwwyRr+EzWRVKewWr19gAZZZPgqht/k1fw=;
	h=To:Subject:From:Message-Id:Date; b=RSXfAYQSUaO6zS0F/ZP/aWBya9ZA7hMpSspR8cLWbUwdlhmhRe4x3mGiozOjzFlDPsrcN2ZvHxWZNKSefpS0FloCex8wQW1smJKfmNxl0J5YnQoRUvQvmaosXLraCs6rN1zCkebeVe5u7xS0l/jJaB76EUmiLlGDZhZKBaLwKeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbD6bqcF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbD6bqcF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89A7C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753518593;
	bh=W22vS3n32NwwyRr+EzWRVKewWr19gAZZZPgqht/k1fw=;
	h=To:Subject:From:Date:From;
	b=qbD6bqcFY6uosxJymeB7AHAXiDOTQK+Tju52YGhJGLN9fK1amk+cD05WqGzYx7gDG
	 EBUl2uJzmTRG7FbN9gjfx+s+gyIjkgUQZqx9PvoN3TIt9hV/ua+292pnHIbmkL1BP+
	 IO4jENVcFABe4LVhvPGdlLs9NDQTm9Bv9QudOe2U+i6PJ6ZkuoPoCt5fMu+llaSSAp
	 4NgG+CiQgHjklEi3n5nQhlibSCzI+JJ8BWs2GgdoTt6GAHiqBcXUUWZahqc+f+fq+v
	 8YbRfMR4E0A4h5XOngPVzBQZS4MTVUJh6Xc1S7ZTN8FYdk8WSCGdW3VEm8HFfEeKJ8
	 XQWHiW1HjN9KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935BEC83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175351859358.6320.5638489234426608448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9631f036d8cfa58f77e69ff738456d46352f5873fac405c10ea04efb183ea6c1
Date: Sat, 26 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753518593
