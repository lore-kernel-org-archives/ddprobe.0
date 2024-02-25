Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F8C1FB4
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708865897; cv=none; b=o36nXko72xtSMSzWkkulvopSVjNyvO1dHaDEOgT07kDydfIWzE672BEJpYk3ykHctWt4t+aap8G+9RFtFZd4Sgysr3dAHlhTrUxpQxkpckJYvHxsujsJMp+teZI6DkPCkLsHDeN69wwjQ3gWE+ZIBqVbT7h9oyN50DHNmS0lKl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708865897; c=relaxed/simple;
	bh=WM5U6NzOgxaX+1Wa9YIXE1BrBcdOV1CW/kMhclLN0XI=;
	h=To:Subject:From:Message-Id:Date; b=Rs9YdnfaYo3ZTeHmy2kwMkYd4aGc4dtd9XTdjyiLySQ5ikrvC4ooGoe+LKMvm5wLlJMx292uvAWZhxm9miT+/ZAVWlOaJKaTynYiDnVQmchJknGVS+G5ADgUUAV+dTDfWMuKK2nRmby+qxOsE+MBkGXPtBI+Ps/tj3rKeaTlGV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6JjBA3p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6JjBA3p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ED71C433F1
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708865896;
	bh=WM5U6NzOgxaX+1Wa9YIXE1BrBcdOV1CW/kMhclLN0XI=;
	h=To:Subject:From:Date:From;
	b=p6JjBA3pyBiAbIo1WHCy6tXm14TZNkGU8P5Rppgl9GBPzCMhA71R6nc6PWx+12RMH
	 lI/SgEi5pYTF3mcG4Ap6tTxhOurbU4g9Kbe6VDte26hHuKZPUTrQAsnBqgaqX8+iZG
	 GtIcWh+epFDb4s7tJXn1Al6sVPYHh7PYbeswyIoqilZabH3q2KvB5pPPJ3Xu4a654M
	 L6/Y9/9Y/+B9/+aZC5/piPtmlSnc75K4GKoki/5wg9n3ivJEC6xeFtOHtM7SWi7GEp
	 YWes5MIxKR7TMaMvXmarmibypy0dE0ESdNwj9VCxnD/WsVeAxWvzBl7R6CnQinup70
	 xVSW5qmEbg33Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6254AC47DD9
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170886589637.5108.5678956006076531741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1114ebc5bc4f1a5b9852a26d64c299c8a696f9148056d43a4d44740beacf1437
Date: Sun, 25 Feb 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708865896
