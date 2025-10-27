Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6B522424E
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761560394; cv=none; b=JkxqwvWy4EeRHktmSDJ/oEkBQOgNH28PpGJ+o72FTj7WHaY8EShQww7pqtoGxeeccUQSWgF5qnSxE8WLNmoM9ntdI1MPI++QinkNqqK75cZa8QxTeiOIYH6lPLmdK23r/s1VRydSO6LXlo+C+Z5PETtwZgTTenkQmGg0byNabis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761560394; c=relaxed/simple;
	bh=7+CD7xHD4+K4yT/qFERYvKiEduCJj/9urxtsg2JAST8=;
	h=To:Subject:From:Message-Id:Date; b=e4+alBNE0aCrG/qyr7NzePNlUkR4fBTuKtQJnfu+PhA84Ei47TeRw7toWsTgqGpMb92KdBWn4hDcG97mZQMKvBYuKlPUtoww7Jp/xaSLeA/o+IgOE4vk71a/pUF5br2SX7hBNiEG/EYoTOBnDroiz/UnU+BqN/ji4ngy+uIp4p0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PzUWwcl3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PzUWwcl3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06D8C4CEFF
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761560393;
	bh=7+CD7xHD4+K4yT/qFERYvKiEduCJj/9urxtsg2JAST8=;
	h=To:Subject:From:Date:From;
	b=PzUWwcl34wb/h7Qzet819/YhxcFKVmyftDzar7t52aYs+ichZPBoT3I4zdgfxVQxi
	 cYeFedYbuqFXs/wUGZmADACqEhsvpUz83s5g5vGI/Uj08dpTEogtHRYsGt0deiJhQH
	 KymJtB6cOLlMYqS0QCEB4p5r8sd8BAfxdBr4eaa2Lp5cl0G2Rip3X+vwCTA4wrTUuf
	 bTD3u3GaSkWjoegwL9f168xVaBWEGjgJlpFZR3puPgkYVecESz9uA+kHGjlQjxlz0z
	 qTXSJAt6XwI95M6D/0EeWyYpgsOrsos0sdHEeDydytvZbbei2S5dvrzo6Cu2rSyjrz
	 qUWCjOjMuxVPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910B2CCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176156039358.16902.4918663572629623944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 203f8e893d65c5ea7bf155a599c2a4e54d67d536d619baf1689e005c9d2b6960
Date: Mon, 27 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761560393
