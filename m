Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161571DBB2E
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755341994; cv=none; b=pCfYawvuEfOC/hcz8y9CEsMnlh5nOfw1bBR0nzWyAbE0J8u7052jPrtjs+KzAGcJDM+EgVk0M0naxUNWK/pBisk6IzBctFUO9dLVPS33vlqi3QN/Ws3ChGi+/tG33n/yaevXi2ITkKQPofCOtEKXv/eZaC8kiX6zeZabFIreSpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755341994; c=relaxed/simple;
	bh=K5hJ+KrKBy8qT1yjrjmQkg1K6PXQCXGulrqPzt6VYPY=;
	h=To:Subject:From:Message-Id:Date; b=etCm3gmcU3v1D2j0YOzXHxw5RtHQgMqX+ZwP53Fwtn8/Zmh5pvDxfS1XpbTut7SDpK5b8Il0A3wuNVdk6DlbClSlQjm0p2qkfGHL5eDhMbrctsWuB8pHF2JNkMl7ZluyynYbdqBxuPIJmdhZrA5M0xXOx6QeuNLCSVtMxOr5tig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxhoYn3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxhoYn3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A82C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755341993;
	bh=K5hJ+KrKBy8qT1yjrjmQkg1K6PXQCXGulrqPzt6VYPY=;
	h=To:Subject:From:Date:From;
	b=kxhoYn3yPe0Lr1HREz0PDfvrP6jtEW0HCWKvPQGWyTxy4QhIKG1Vmst9A7sUsGNoP
	 uY/mJTYArKQYvH08bFtRLosGNwKpm8aHgqtjMiKg4HI6uLyA09iGC5dXs8jggsIIJ6
	 idodDI8VmmSwlpG+TtuCL2uNmDjwLq3H33BKkIFaTDGUcohNZdPKdo6lI+zAdBHXHs
	 1NN3IATequLcqUPcMXaYHNPxrFCFUW5l/EAEJRp1gOZ0Had52sjEQ/CtzdRcfT13ll
	 A89ymgGTlM6PvFizgHCPP9VtsrrzgfaZGLHfWkJOI0gDh4UIYckSKxPjuKf5sf7NQV
	 MTD5xiwwihDIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B77CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175534199357.29064.12716180235729972819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66981169b429e743b127ee0b49f0e4fccdd2afaa9c22078c3c99d090d641d37a
Date: Sat, 16 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755341993
