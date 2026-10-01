Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5347F23504B
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790823634; cv=none; b=V4Zb0WtTthYLTf2MfEiOZbkExX+f1od2n1wIpwrI7Ek1ObYtGqCkgCSKgULZvnC8YvQzIBU85ok2cDtHtlJLG4MV+Y9uwd0yPDhFyoxPhSG1f9xgYXA6NkeMXk7eJMRNMwNptWqiMwa90Efc93RnDw2+WGMpaQnPKl2oeJT9H1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790823634; c=relaxed/simple;
	bh=43n4eyjmGFq7RY0rn0kDk3+0OzXFJx21ZrVHZJvoYmE=;
	h=To:Subject:From:Message-Id:Date; b=eg1/a6z0XNUmr4jZ7QZKU5GJ6GcyPJjCwmsTWo0KwGoxEYDs5lBjXN5pYxeiuzHWpt13Waer15Akkvieu3QowPdKNB5G4E3VFDPc7NxjG6J+/eLEmKrmOrwKh3dpJNB7AXC3+6mhY44/gG4zTpsyqLhN4pQ+XJPN5o1QzkNzW8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AsObxwzP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AsObxwzP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4ACCC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790823633;
	bh=43n4eyjmGFq7RY0rn0kDk3+0OzXFJx21ZrVHZJvoYmE=;
	h=To:Subject:From:Date:From;
	b=AsObxwzP8zpQYlAELioFEILg/XOi8vivSpYwDSGxOs2UPCPiYj3VbraGg8hmjRa0N
	 d9YXznf8qWy82fLh8wOHfr7jHJ7Ryo98iiZokUxfJ1/0pEeA+FI69cpmRwicth8iFm
	 gprtd96GS32Fc3tZlZqH4r+3YT20NSjgQV/Aj5wZVdiv8ToLgIAmtqVah0qZn+ZBGX
	 1Z3jvY8iZ0GbXy2wz9ZcjZQm7oVMg0dnCdvNYai5lTgDQaNQanFo9QJaTpHLf9e0Z1
	 TLRdpnnNLAMebmrevbCTEXy9+T/PH1n7dYpMWZGiSaWBL+aSIOxm1CCe3qTQtjZ2MP
	 a7FpQu5V0qddA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE7ACA5FC4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179082363369.26607.5103253759844080360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4accdf0d3943fc96ec9c76153ae9e1e9deb51aa6a4e0e444de96a1a08c028fc2
Date: Thu, 01 Oct 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790823633
