Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BA21A9FB0
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785793834; cv=none; b=mBk2sDrieq9aVnLzMCb5jQmpapAyHHyDt4MtzItPiECq/ura6gZ6qwE91LnlpzmZDR6assEIimh4oTLZM4d31sBcibZ7ZMO7MFRnjgrzpQm/OEJ7WSfu6D6pdHz1kHKfURsbOxqRW+8w09alfY5UGAu5+MW1ogrzDcwbJ76515E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785793834; c=relaxed/simple;
	bh=kzBmxG5rp9hOInSczfgowugnTWSoJoKMUO2EAWrLaNw=;
	h=To:Subject:From:Message-Id:Date; b=SJX/RcgITO7lLev6xGcZRT1rhXbf5meNp2w+qHjPQDBGM0WK6QB4FpEC4QR7sBv0eVdaGuW04f4bje5Izt7ZJyHytwmsqtUKg5co9sGHdSCCODItR0cw/6yXqenvts/cXJY/yW6/zU48VRt6rK4b80GUX6i/6rKGxtDjyS/R8bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UghRyB0h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UghRyB0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FB7C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785793833;
	bh=kzBmxG5rp9hOInSczfgowugnTWSoJoKMUO2EAWrLaNw=;
	h=To:Subject:From:Date:From;
	b=UghRyB0hjpkASiwxF9zGYgSV7rovFYf9toLqtsz6/W+rV7nU4591CJSIy/nsUWHKc
	 LtAw57kh5njxnHWDBeZ/NxSjJ4LXYPM95oK0VZCnAqR5Not6BUJMwPzL/o7fSgqJMq
	 N/fGHCnwGfH+oDlca9mvF9ccjCBylPHCEq6Or9RBZI/b7revF+STL9lkYSo95W3gBh
	 pRCS6xKBlthywLFk8yqVVMjkwUYeiZhgW9IGdA7hK/WXu50MmZ9AI8yDg/X8lZX7BS
	 1xr3YrRA9oU329zcVWlJgCNAhC3QT/TZxOKudqx1I7owCxXqMJrJ2XnBApwxWoAMT4
	 TS1jLq2HjsHPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3A9C55822
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178579383370.24440.16045503327260192062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d2bc2eec48b3155db139d21527603da0283f050d1200d6d4dd4fb683e11d82
Date: Mon, 03 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785793833
