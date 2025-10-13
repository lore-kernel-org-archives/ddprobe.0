Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407901E502
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760365194; cv=none; b=pVa6XmgqZa8c1bgpcFEaiaVV5BBWeyKgwZRUrnFIER9uxZY5/FpFdEp7NhaYxPe4Mim6Z0ynpBvYzt1802jMj9r+JRD4SG256dRKkLc2DuwrLOh6INvjhTmJ1+ZJAMMLgYwdAprI+4X8cQ9yzgVNrczxtvocQulXdDFFS7I9e5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760365194; c=relaxed/simple;
	bh=Axw7L2qhEdFNQkQppOG3HmWAmges0RhDg9laqZEvthY=;
	h=To:Subject:From:Message-Id:Date; b=RrxJ3WlumoOOyhAIjdxfA+YO8Vq+oAzFQzUnfP/GNVtpW1w+Xg4Ktje1sLgnM8fV8qAB1AI1DNSP77DIy8QN0qjHHdjMZ+PtziXxiWzxUhzpxBejlbeQ3A1jV/7cGHFjuKHDSnT2eaM/FTB6vwmHhOotpFCCSroVXIkqqT6emGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAzAKUPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAzAKUPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6291C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760365193;
	bh=Axw7L2qhEdFNQkQppOG3HmWAmges0RhDg9laqZEvthY=;
	h=To:Subject:From:Date:From;
	b=qAzAKUPnLqLmTQCITmJZKhpjLYd2YWoRcDC3jgVX1BXR8rTzBrWCuDCmtrhHk7k/B
	 v9Sbm6qKlIe3IAQpJg8dBU6tB+OBYX081RqUitodxeU+anA1P10Z9L5Y7ib8L7FPTl
	 FBGaoYYxYFNHQXm98BbNELInFCseQKGesftvrrPQPwkqwn7mufwSy4mykqfem0ocSQ
	 VEPrZAkLCjXfcEiYHRUWG5PNrjoBSdeUIGyvSxBMtwjYJoxPJjYnnh2+nqSvDiTx07
	 QOCvo8MC+iFP+STKpq8KFtf12ATgT5hehTA65ZIsFDIANaHQmI8uPih2595R+3FpEm
	 eTPTL8B/61tzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9342ECCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176036519357.5862.12849608465516391999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d871403b894152776672a3c38136be355b1d56a5164b3a88bac6a2d6eeb2db08
Date: Mon, 13 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760365193
