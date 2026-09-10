Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B7F3DC4D9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789038634; cv=none; b=OVk320mNnvJQlwxJ+Fv+QNTZ0P5ME8K375DuMiGGFMQRgTj+kp5M2YhyerwYSu5njeztta8bdQbbGh6rLvllgG7zxOZLX8fT3LmZKrvmPA57Oe5SWgqt83hrF1IkqsxB1UHMaY2G9EB6YXO5UG7YVd+jlx2BWcaWXaJqRlWGqPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789038634; c=relaxed/simple;
	bh=6UqJjoWJzKeLWuSm8Y2qDSAs0kfmQyL5klbIBzGYW0U=;
	h=To:Subject:From:Message-Id:Date; b=BZb5UpnrTdXvaku0etumjIS19TOIl9vQejTpu/sTg6fb8U8FLO1T9DHCECeV5sS6ol4YNHvcJQqVxLuLtL6ajIBww9wSz9EVNSfIGNV+nDOR/1RfjPMYKyGb7copcW9r3yolcxp+AB1PU2yZqqLcPBsXS7UXgeWV3ohBLS+XYlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rdl90Heb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rdl90Heb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBA9C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789038633;
	bh=6UqJjoWJzKeLWuSm8Y2qDSAs0kfmQyL5klbIBzGYW0U=;
	h=To:Subject:From:Date:From;
	b=Rdl90HebYJmcc4DC7XcsU7HsCa9h9RNebYyNFxNYKZ3hd/TER3XPIg271ElBfFys3
	 ohHeaagl7hUd/3yI+R/JavMeu8VP2sJv0GXkLQkzsFd+I99xTRzoSjzW1AjNeWu6aZ
	 2+2qNSvYrV3+iEg2Ytzf3W6C47UF2JD8tWAaqsLl8uXoZ9du7ZWY0DuiFlriPhwaZV
	 J4HO1NfNRaZ+sDNQJ8UCOjBSL2+2ovdv6HIhv9P0Y8v5hwFdGxG0BLY3ULP44VW+WO
	 VrF8sQvUaIAw/LCCt5UeWMyMX8sbyZKaW01+bK2Qr5Eqj3akdp68bIORlc07aP/P06
	 +URZuspLn+ZuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA0DC79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178903863369.21139.15219717562736105509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b872d5e708629f13c94c30033235611f1b26b462eec9df50c66451587215d03f
Date: Thu, 10 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789038633
