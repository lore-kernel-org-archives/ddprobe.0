Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8BA1DF974
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752964794; cv=none; b=S0P8rS7hHbOMH+PNfKka49SEUW0bTHsN93Pg1D4p0SZNhZo2mp7zEgMIpHmK0iLdo84ttdX/pNvyeIfkrn1zMAMRUZjDL8lFRXHJLu5UtpuI8bXAjY/IhzFbxIG36pqdx+UBe4I04ulgEiyJfU3v8JyDwkDsxMkwOwhURyKVMKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752964794; c=relaxed/simple;
	bh=zut+/T94UvO/68OecypYmw0sULphGUKYjSWhTgPsLQQ=;
	h=To:Subject:From:Message-Id:Date; b=fqSDELYGg6pWWEquG5A99QVgWEjqNF+E/L7C54iknLxut/XSn59fzczXQlfhLJfOzkDQJ/lTpFMqJhMu9sgN9eIFE3pAP2yslI8Wc5mxObEn7SNYr+D+e6OrQhs8T1ji9Dk2w6kJhkhxObNrHiQtH96mhagD5LUwsGrzgBmhktU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D74xT0Ie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D74xT0Ie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A740EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752964793;
	bh=zut+/T94UvO/68OecypYmw0sULphGUKYjSWhTgPsLQQ=;
	h=To:Subject:From:Date:From;
	b=D74xT0IejiL8cA1/FN44AbXuYzKhH92uhefu8TAM4MUQSENS+1AZYsQunYCmorAnH
	 +zqjUdcKV8C/BD3QTWJXh+id4vas8eR7FOrJEo/KcB1EN3iQNjKgNGk7dKpeIga9q0
	 c/dFVNkC2i1isrlI1rvicBA1WRY3FSRiiK+TAYFJaiiSkPeKXk5FeHbx9uc0TJWTJZ
	 itO3txMXpNCzobWd6RYu08XozseXhcwJQZ87tN5ROgWVj4T1E6MZLSYE6LziVjZIDO
	 2WokXaAPJodEXKdI2Iosanj8iEDTtnfEkNb93U5gZWrcPRQeXqz08V1jTThMsd83jL
	 xyjJPv+jY/t4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E41C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175296479357.12808.17056413060571575018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9caa0cca0d8d7de6e13c6fcf6823d8b390eaa2388d8c7d4f327c8e273e9801b
Date: Sat, 19 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752964793
