Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D323471D0C
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786640434; cv=none; b=kAcGEfLXU8UiDx+s5hZFsThegzuvl0EP04QND1hi+LqED2thesmJeBbZT8KyamahuT0DvidnBDLiXa1SnnRf2/m7MfP8uuUYiLQwzvgoXgWy/3IryPbGRukb6dUOYhljJq/mLRbZ6kYk/FheXYhGqb3i0l9ghY+CBcnleZxaAYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786640434; c=relaxed/simple;
	bh=J9YJnIAxizrz5PBOpiN8tPjNiL5Hz6Fyyg6zZFW02oY=;
	h=To:Subject:From:Message-Id:Date; b=Zmqd8o6zXBFVXEmEnvp6kbiQy5scv7elO4zAEuQ18sFJqYIoaffVeoKvUa1VFDzBdLOOwNhZfkrc+77sfafC1KB8ESwkZYMGXDXBftKZ7uOyzgU2Q/8VtNw1RUs+ZjxdR1HtS/M3OAkkvilxvKE9KgzEP5+bhFKTatbe7q7RfRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MuIfYbyM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MuIfYbyM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB552C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786640433;
	bh=J9YJnIAxizrz5PBOpiN8tPjNiL5Hz6Fyyg6zZFW02oY=;
	h=To:Subject:From:Date:From;
	b=MuIfYbyMn4Za6MciDgzk7sprTnafGkxEMrtLkxUL/+wS1/Uk4wnPKD+xaJWs8Qj5c
	 kHAAzlt1arj7fLwnvrTsG8y17lN80lKKC+j2JsSzobsYAV4zsqQzVtl7hO6SOGOHaA
	 fX0ZsxACGRxoZxntLeW0IqeElCd8h+c2Rfvv30s/nC1KCMzKlbB82Pq2QBbseZxpkN
	 iE+DoZ1NSnzLSaBJdHfNIYY35mi4eBhUROfd8eFx2bEmxxnUGJ4FSioqaOmYJCzJv7
	 ylT+34OS2UgyCtXggMI2Vo+kxRd1dudCujYjcHB3LbfnLNdQkggbVA/NcU0JTAWGpd
	 3kOKjPb7DpM7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80E0C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178664043368.30778.3811439080151208754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 041b68759d9c3886e435fe5ec80ce78a87afcb8e81fc20b55cf2787434157429
Date: Thu, 13 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786640433
