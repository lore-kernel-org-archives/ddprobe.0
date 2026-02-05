Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F41A3F0754
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770302634; cv=none; b=OnGatq482ljadV+P0kYI16Z87w8BeW3wWUC6BJeLHmlW1F9VCbWJTGBvsgMsFdhXv7DcEayxcVpDfFUYukg/9GQ5jmNkvK16JbkXg3BOVUvZnXo5IdQaptJv7Q7W0ZionpiWVfzQ9zAVvhOYtrvWeeguNSGMEnXjWdKNMKFcfjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770302634; c=relaxed/simple;
	bh=f5UAkig9jJ69+ZxW8MkkSB/kJu5Ol4CSsTnjQDnrCTI=;
	h=To:Subject:From:Message-Id:Date; b=FXiRMh+wks4X7VIUDBVlYqIAlyQQpmhzXGhwAxmXwBVo9vPG/Tirh32aabkh5SJAxarMXZ5jBUZ9qysV7c9GgnKHUR4ssobdFDcK3fgt3Ztot6Regc27O0lcu7gMsAeaye/dUwj2MbfF4YMah+lAs0xDEPJeYvdlzbbULe3K9+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XY7Wu1DZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XY7Wu1DZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2EEC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770302633;
	bh=f5UAkig9jJ69+ZxW8MkkSB/kJu5Ol4CSsTnjQDnrCTI=;
	h=To:Subject:From:Date:From;
	b=XY7Wu1DZrKdr2BOGSk7DX+MLVaUbj87C7Iw2fsFxWtElNY5NCzR+B95FgQJuO8ssf
	 xsJHl+rZ/qszdiVqelSW72OQ4l593r3vUl6T9j/IXx0JrMNWHeXoiCaLtEvK8IQhD2
	 BckeL+D41BeD8wfony0ve0V0n6a+r3MuslSzstBYR1LZJxhLnAhuR2i7gxeysBkuCn
	 1DlOGOuHb7SvAeMW4fixpqHmnasKS3MFAY//SVk2+s0VqdwiRstiuznw1QrXoDTv0K
	 QChdqAQ8zBmOwl8uakc8ovK0WlluPJ5sBFh/i9BEAoOl0K+wYZZD9ZlM3eDOwPax/C
	 s1PqQeHVpqAYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B80EE9128F
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177030263362.21062.16450511542588944112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66800a7d148a5d75b4d509259aef6a403121d49f57301b825c53098e1bbd353f
Date: Thu, 05 Feb 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770302633
