Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B92D220F20
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750529394; cv=none; b=ankbh6gVV4S7PQatO43iFfGUzGqiSLZE0P5LZF+LoLp0cWyRrueGVkjt8hCNU+5Y1+H4ow53Wlwneqs6kCp6baenpwxlD9Y9HHK9EyHYSjMk6ERrKGP5txWqIrvwWD097SVHsLR7FmyIXbPRRqbX7V9fw18SFm3RvaRENVtDaSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750529394; c=relaxed/simple;
	bh=OlaRiXj9Noe78ba+tKUOW2qck44mK9SKRnjsrWJNLNs=;
	h=To:Subject:From:Message-Id:Date; b=m36IqHdYvVkbzVmS8zjzAEai6BsU9moMUS2i/02Z9+etNZGh8x+d7C+gWlxhfEeDW/pJOc2l741ZMzRyyO6DD3YA9ymhYuLlgb4SzGdKssZapmuj0SLP2w6BYEgOiir0W//rAqUGnjAwrsajiv2h8wlRl0B0Xajsd1ocAub1/Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojqqW7Zq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojqqW7Zq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21BAC4CEEE
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750529393;
	bh=OlaRiXj9Noe78ba+tKUOW2qck44mK9SKRnjsrWJNLNs=;
	h=To:Subject:From:Date:From;
	b=ojqqW7Zq3ndhYkiT1xP0p3hNTeBRd5iIa5+3xO7iJaUQ5x6mgP5/581fBUOykpgUk
	 6MESSVM29hK517dVSgMbZnFMlc5LmyOZ8EGTBZmwLJPDyyR0zw0r1TeOpf3k2lAEp8
	 JmqnD1mLEitq5BV/GDw9rdblfQ5ylEovbIhIutQyffpfLfSN8RJcG/mQOKXC0rGztM
	 rYY1ClWKiN/Eaz0hd3aEe9SA2CAksqMugG0wWs87byz6X/xDetW0VQHrRJaCPber82
	 mP+YwvyPPGzBSFiyvZPfHW61vpWjZp+NC+qCzQCVm+NT7OJT136dO3cKkHia6NpMoy
	 RlnU+Ys3aCiEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E1BC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175052939357.29117.2441877994771938738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27226bfd153f929be0ff01b24bf1bcdf6f91af4c83973e825dd79292ae617b40
Date: Sat, 21 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750529393
