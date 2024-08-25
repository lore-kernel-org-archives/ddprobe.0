Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8C48C11
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724618154; cv=none; b=ETsrNWPLDEw9dixmTmRA+694ZigrqINt2wEX/xnUVTqWQKaDnpDFKosxptS08nP+0K82w7K9R0YU2YdaabQkFN1BmFTqe3+PjdyV2uOig8EoJL015KaQ+pNoFW0K3c4otIo27qSGCJDxDk9ZzkdS/yGxoUF6vOYaEdRhRxKxuQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724618154; c=relaxed/simple;
	bh=mDeWEBtB3YFpYH3EEv8R3TSfHKbzD5ELiW8jHJDDgDw=;
	h=To:Subject:From:Message-Id:Date; b=lJH1xTaZEdjcf5ez2u8PGFawsuvQeq8+A1XyHmQWZ31PI6mXgT13E5Nx7TBPySkGB3D+QsD6I9IpRMnwmWGejPqtkhonwwgA6ETLBGGQgBFpf8khDezGFKzTNmcoXqCumVxHGbebKRDYaiqO5Ew3aIEyZmIJvMurkivQuTzk9S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zgtgsf0x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zgtgsf0x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B5CC4DDE1
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724618153;
	bh=mDeWEBtB3YFpYH3EEv8R3TSfHKbzD5ELiW8jHJDDgDw=;
	h=To:Subject:From:Date:From;
	b=Zgtgsf0x9AaaCn+X8Pn7gADxyRbMPhvC7hwRyhRDjY0hU+WvqWKcBNQ8AGFZbFili
	 fSi+3gy1RRn0oV2kKrRrAAwuSC15ArOBDUlRMcr7OMUzK2wJE/DVGdplBsSxEhZN9l
	 1HVxualNIc3sxWfub+d7OsWyrS2pWUFBaPuPUnOD3qSXWAQtaJnu2AEU0h8GauxpT+
	 GmTVnqV7RzhcwVmMw7DiUyyqDKnbv4FMJI3e7H3jWlELei8O8G1ZB6oTXOgIMIhfYK
	 YwROY0rs3KENb7JuXDWiEbIkYZfZZxwUTAijUUM7xRhaoic6ja0PwK9g6JUVfM9QSD
	 ETOKASBIa2Ysw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949CBC5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172461815360.12734.15807901693045040935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 069267232c673d2bcda62d9738dadf54f7498adb9c8706632a769fd0eb4c3131
Date: Sun, 25 Aug 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724618153
