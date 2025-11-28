Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDFC52405EB
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 15:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764342173; cv=none; b=tcSA7EU5DMUvnnfgviLbO+K/Ij8WLUssStSXzpJJA8BFZgGv+TlRLxjSIi9ACLO2ttSQb6xXe5kea0W0uPGXIpwoyGkDYWP1TroKb8xAYu+Labo1oXh0/l+40x7hv8lB5OO/hCTflK1JvVosVgL0O3TUvzG54IYFXOQuSppPQ00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764342173; c=relaxed/simple;
	bh=PqOcKFEsqF0CVZAJ0RhDQ1ZH5SpVGCMlSfquTr0lz0o=;
	h=To:Subject:From:Message-Id:Date; b=Eo9PEfKH0NUtJZkDOgP7Z2bzzGOEtmbrmaa7xmdmDlgTDiuLR3wBt9VUGV7ONLL15yN+sLNz8JpB7vUeKU1Z3yUCOniIgkp7KToMvMfA0IOaDa2fDd5KC//OCpFckNe8epdOp/+Se3Yxtz/ublbcZhRcjPBhEaQ10bb+BRrIwwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hC3JnrhZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hC3JnrhZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC857C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 15:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764342173;
	bh=PqOcKFEsqF0CVZAJ0RhDQ1ZH5SpVGCMlSfquTr0lz0o=;
	h=To:Subject:From:Date:From;
	b=hC3JnrhZJlP2tJWAman7nttDCqK2MeiEBsPN3SnbvnKcH6XdeP2vKz2j5Cpzs4Agb
	 1TQUHLvk9S4qsw2X51eOwTchdnlCjUM/a48/fJQ0+LnRDt3h5qaaEdSnW0pKXFNuN9
	 kIyRcD4ulp2iCL53j0Jyxrsi3HrOuZLdRYjOM73ooYFtK90qY8tWkE2GflQa6ZWI1v
	 xzu8uCPFULtTvi3bwxAWZxFzjttB2eVSRlO5oG7J7GCrSlCZyDWUzNhZUrf1zgpnO+
	 MPR6TO+3IxR1B2F6aBraxdxNfN4WbqkFJC45FnIqd5cnKhLXIcwlKenp8pmSIW7eD7
	 2psAjO+yl7QjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF3FD116E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 15:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176434217358.22361.14291298346078724043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d5151ba61569ded7d5e7e13c403d4d16a2e8323bde7833efbae6765aca3c5ac
Date: Fri, 28 Nov 2025 15:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764342173
