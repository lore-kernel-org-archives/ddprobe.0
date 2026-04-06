Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1A712D21B
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 02:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775441734; cv=none; b=rSVyCqbLB0Z09juqkdZeY9AG4y8BS2/rokpWZclfpibUrzsNVuEaVFAvb4M67sEqbYfKrffSgapfuhU8zLm0Qb8ZQJF+ues8Qh9PZo8SuTD4BPzY1Mm/x3Dk6L4G9g7V8Fnmw/iJorljVZ8lM0os3EJ1Iq75cbLZ7sWUF8/QZus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775441734; c=relaxed/simple;
	bh=3fk/pnwa7igu+hyNu/tJ36JnJsFnpkFAVKKfUJHtTgA=;
	h=To:Subject:From:Message-Id:Date; b=oqwPrPfd5/cJHIoAHadekLfeveZrSITAqaNkWpj0b0AAmZErwV6+PIYpB61Oj7/sC/OibPLROh68DjM04Jhz2P1G1NgODAvpipxNEA19ZrNdYxEbSFcFNaHc+2S8ZRuF28gyGIh2i9yY1G+IDY9owq9J4gxxYdnt6a1XwQ7qgis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FaxOTO+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FaxOTO+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C697BC116C6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 02:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775441733;
	bh=3fk/pnwa7igu+hyNu/tJ36JnJsFnpkFAVKKfUJHtTgA=;
	h=To:Subject:From:Date:From;
	b=FaxOTO+Vkmz/p7bMF+Mfk4XH9NVmekK6xM0+x/baHbyAd1bZ2FTX+XQ2TauNJrM0V
	 ZgaWa3KtrGk8zjFv12a90oPKepAVHFvoZNuNT/sziLXkYhSFJVyKCCI0tWzp6cUoYV
	 GSzVVUU1IpCoubDHFCAAN+0kpwYvoptNcy37UQLsJgC/wpn9s0hXvgatYTq968JQiT
	 C9lBBKUzEgNkd0ARZLq0eeMsDLkHhZBKvyjChx9mcX+YFeau52bT8G3e6NcOGz8YVy
	 73lmT4R5lOCsgbSR5vuPXfvvjo48vXLQTGL48JyGr8mP2tpbcj5eM+TMNqBJyCEtVd
	 CES0AlAK9YlgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B163EE9D82F
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 02:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177544173369.26187.3623285692395844734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79de45f68443f0ceb533f5f2ebe77127287db6b1df70177cec74ff846636e27e
Date: Mon, 06 Apr 2026 02:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775441733
