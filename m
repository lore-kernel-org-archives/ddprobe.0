Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4209C30FC2E
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 14:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775139934; cv=none; b=b7syrAoi/HSe7zqeTd6/ozQdWj7EmtO5AYvirPfGy7BdjhHHSHw/wU9HkUz/C/bqejwy+4zgayBuX7vWkFNt9y7IHCaLQiacNwxog8zyDg3Opam86gQOjaNJU5aFcXBVu2jewY5WgacMySVJRy/di+b8q8zkOoA2a+IIdpwoRuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775139934; c=relaxed/simple;
	bh=JN6zoBsDgrsFlLFp3WlqUxSvyMo1NJsIiyG4aINlVlo=;
	h=To:Subject:From:Message-Id:Date; b=RmEnXg00AFmtD9o4G8EeSZnLjuSlbeZefMBOnvpiOBuh8YSpTWtKYoPFm5P+MNxDGf0DiGfw7vE0dfk7OgZJHUju8KwQ8lKlb8/dCVXMvIKdcjz6MEhzr31Cyh3DjnKhAyJjVYNgkoDpL9iiv4wtS265wJbiaeLGHTvYGP1EYVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDc5HkTA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDc5HkTA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8413C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 14:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775139933;
	bh=JN6zoBsDgrsFlLFp3WlqUxSvyMo1NJsIiyG4aINlVlo=;
	h=To:Subject:From:Date:From;
	b=jDc5HkTADd9m9JKw41rpunrNa0fN8fKD7/7qynJ4wE8fX9cUoCfLNodm1E27qZ1kJ
	 moR8AzNxY3DxdoUo4GmHVccUARLzSuV6QKxJZ5WlpdMxTPCLCePBgAh1cHjTQFCYDh
	 XKKWvpy81aDhwREe7ZUcSbpScZiFYE/u/BWVzZsP20ELNaIBVEnc8ay4wo0XcdgNEK
	 dB9hJDi3kYVb5o2EOxVCJpU+FIou46a5cN0Ye2D3J5wAHB+25IfWAhLAYxIzTPTpbX
	 ZYBP5AO1BNyfnWsrHsfqqqk5EudVwmjC/4Mef/wCFYg8XwgQ825RzO9RjPlVpGNjsX
	 ldZiomZJBJAiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47FCD3942F
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 14:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177513993372.2618.7032881219441335929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c6634941d7663c4a03bf0416ae9d11f27d4cf812e26cfb3d10bf64cb618913
Date: Thu, 02 Apr 2026 14:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775139933
