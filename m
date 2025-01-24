Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C56101E9905
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737762953; cv=none; b=ipJ3gjf5jg5kxEcLxQMTzNO1exuiyGg0LuwqY4W4CF75+Z6sWsdL8IsDzCGTHfHWQppDMwi2CCq9trPL+CbtPSi/uRjLnbs6FyIXSJp5JuBBqyzUqTPjthvIC2cFobHc77yLba1RDc0RkqZKQrLi8SdYLASbBui6GkpYmtqFJuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737762953; c=relaxed/simple;
	bh=dNnQv/GQBAMs/69z4dOR4saSe1DfS5FTUqryXCDyADU=;
	h=To:Subject:From:Message-Id:Date; b=UHWam3aBglil1xkMtiQjoVICtOiQTUwctSuHvh0lXqaozRKx7FCqYaKn6EayUaa/RVmuzDPfDTTmaF6wRH4tx6ju12LcNvR5PsO1WUlygGtXjzABs+XfDZHQnZglBDYazQ0Zb4+kUFa1Sd8udQ+LHCDc46zlh24pSWdYYXwH2Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSDGWP9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSDGWP9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13EFC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737762953;
	bh=dNnQv/GQBAMs/69z4dOR4saSe1DfS5FTUqryXCDyADU=;
	h=To:Subject:From:Date:From;
	b=SSDGWP9WT4434R1l9YuRvTETaUhK6BLAY647erlfD+GbDrGnkm1uYSMZlZ1Qw1U35
	 t0NxCveKFt4wtFNldu/M1PG1UQ4p30vc/B2+ozMCdqbjdpqxzsRKwgF5rH19/9i/cd
	 T9Dy5JOyexJOTZK33X4FvsLhmTHKuYPzBaIE8uQKYPOWUwgpU3J3RBN2l7Xti1Xpl9
	 cotffAw/w5E4u42rc92jN432mTCSmLmpwm4YK+6cjtDACmhAsJCbRAq3sYlRrCg8B/
	 MJYFFR+Blch5USCKGZtg8CRTRi/iqMnmFYcHo4ERKPm4NkGJofIDYvcFiqMtlSszTP
	 D2dnXMpsNhaHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FE3C0218B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173776295358.30786.2358339951786399461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 542c47ce3c2b8d1d56c81138e95ee05cafc91597ae643f345b725d963898494d
Date: Fri, 24 Jan 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737762953
