Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A013FE35E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 13:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777469254; cv=none; b=G0PQYGbPsNYN0MA4Q5ZC/Amt9h9D1d5mU9BITT9nvE01MTP+lRpGxBrwErFnZ1pcLJmN4oVM0q779et0851VUVgIAPhh6NkKmupGZEnNNKbnG38FY2rMS5LQmBr3sRxBJIoKs9PYX03Dt9js05k6JAZZzumcMAvlqIbYIsd2Ul8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777469254; c=relaxed/simple;
	bh=sTf/pjQ+cA6jw0QgBXXo6zmGivaLzajICshh1zTIzvU=;
	h=To:Subject:From:Message-Id:Date; b=ZEmzMZVa1bROlnDq12rl+/GAVuyOsNW6HnoOGIW/yv7igyYj4wAwRKLPxhEuUgkCbe5TW73UrAwg5sXwsOK74Nv7PlYmKCTsIk7IqpEinwpO4F91GW+E4CztYb8skgLmFi26Blk15h9Cr/rflioosC6EqL0PM+P6u56BrRx63Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NB40q1Ff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NB40q1Ff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBFAC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777469253;
	bh=sTf/pjQ+cA6jw0QgBXXo6zmGivaLzajICshh1zTIzvU=;
	h=To:Subject:From:Date:From;
	b=NB40q1Ffy1kuz5lrzMpIIF8jM7d4jKptE6pWAqJzfKaRfBGE49HyutKe5xTAgIZjw
	 tKkh0rwAaTFkZtRK96qE0kkvb1xwO6jo3afOjtFEgGivUq6xDwu24PpvYCpn5sh93A
	 xrp1DSawnV5SE//7XzsegJii1Q82BZybICuc/rqvDa1N04bF7z6S8qUSMDUNGom6Qa
	 ZdWNn/Hn6ykx9urnU1a1WCX7Hb41VoFN7N6ERIstFANTWGucXwpfO4INIBS2O/ChTB
	 W0/3xMbEMvadImLyVw6reeRmZI3PWlLU+tBprC/qIDkBsZ25EcuIuGb2igEvX28Txe
	 86nZ8/EH7JVvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA422FF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177746925368.7630.3222985232121232641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c407f44ce893c9fdfa0a9d5beec9c025383238829bb819aa642b78838efcc41e
Date: Wed, 29 Apr 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777469253
