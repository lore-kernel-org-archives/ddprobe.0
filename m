Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AFE6FBF
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722906354; cv=none; b=IRWeAThn9FSNpmGduB+6XmSEZWyEZl0k3UP/M9kaXnqfXRrx3Jft34r8cAmyFOTujqC58F4ekhHeFB3srGqw57CfSFe/WK58cTbPLzvCaWpT7q6CnbZDAGDqkQDU0Fzlsc06GQQ1uR+T/TJD8zJgXVN/7Ck9ufI/0vQmuTT2i8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722906354; c=relaxed/simple;
	bh=IBOKH/uRR4IjcYbx3tNgUIXjATP6h3N/BYecDWkM2lU=;
	h=To:Subject:From:Message-Id:Date; b=tMHVm2xnYp5oEeqW4/QvV+m+eWOO8vUb+B6J0f22LirtrxPeRUQaZ4B/TV4OLBhA3bvhM8drLW0W7tAisJeATfzIXf+7AEnplHOeiTIFsFF/3z15zvlvqKddbeZiUy5Pkpi9mO5vAmcvY6o7yRXjmsIZ4Tfu1kPffHXlivWCeb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDfTkrxT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDfTkrxT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0082C32782
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722906353;
	bh=IBOKH/uRR4IjcYbx3tNgUIXjATP6h3N/BYecDWkM2lU=;
	h=To:Subject:From:Date:From;
	b=hDfTkrxTMlmYd7PP9BYN7Fr7DD+bAdzAXVjN96skkuyX8qZ3Heayzqpzf80nk0AHt
	 5GdvNUYp3lldR1DLUFAfGuft0FQG7sywmgk7kHn/ogXnxN2B1n09A5TIwT0UjtTvI8
	 0maNWSe9honZqb5ap1DIh1wTh5CnHj3uTY1zy1809C2s7el6Yzl/sfipqmkO9HIsUy
	 lrgikEop7VANCwuYSZ6xxgiLEhRl4uzK+1LY1EWtjiRk25ceOUvoeipCOC63x4EsCt
	 xk5Evi3j3kOPnx4QBl70hptxstCpAa2Im70EMdcuE40cvzjtzZqBhe340qO+GWjjrD
	 Uzq0TWIJpK9zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958BFC3DA7F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172290635360.29077.13583277921392644934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93505637531d59b972432add5ae67f6cd0ec95b1958bd700f61643193c61e3f4
Date: Tue, 06 Aug 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722906353
