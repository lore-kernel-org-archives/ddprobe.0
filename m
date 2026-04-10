Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E96386C28
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775817454; cv=none; b=pQ9OkhbN5iRi6PbjlzbAR67XcyuZ1LeVdClxdsrtF2R9cFwpKnFr03I2wQHoN7h7trDaIUEylU/swovq0Rn/W0gDzNh/tVg2+XtFBNIBtkFTb2q3EQ0b5U6MXJRUQ5c+DlP58GC2ERqGolEPlQz5D4KqVolVePGih+zMH4RuGfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775817454; c=relaxed/simple;
	bh=QmU7m+cfbXUxJyfV1Qj+j1YV1//P6vXxL0C18RN6Meo=;
	h=To:Subject:From:Message-Id:Date; b=M9YHO1fwy6/jh7YbNVJtIFeXSpr0QhII9lkOEgoPhrf7z6LCHBkpjpdchHOO2LyWdU4h9nvfifoU1jAku278Ed9FGzltWXaJp1vOY2/DbDrG5Ogoy2+VYvGGGQJOzVKMca0Eu+MBRqUNzSwRSOSNJtKu8bhmAWg7yTzKxvBlLyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVuXb7Ov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVuXb7Ov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D10C2BC9E
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775817453;
	bh=QmU7m+cfbXUxJyfV1Qj+j1YV1//P6vXxL0C18RN6Meo=;
	h=To:Subject:From:Date:From;
	b=CVuXb7OvzxpDIfCLGWs+ZZOFC+2/zcxgQ2j2dGUAeF3MJgTv1+V/ixg7AZ6TLTwyM
	 v+Ng4rOfDJdH5a6cz6qpK97GXd6h0XCuYZVmUgQHjEuXZWuyDni4DK3LoRAvKjHmKP
	 uOvdam0w6s0grKAEm4TYnFwDNkQAF/vM9SOxRtKRxvhfSXaswik79CZLJmTceialbh
	 6vRSXfT/+SeeqiIk3AxzpYWh4TeOHFObfUIvMfIjGOyyymCczE8ZM7S3znpARNXgbW
	 eOwvrJbLlQGlou68UDFpupoYq1TQfcgZ3Zn7EbOK3Xjc1k4llS5g5r6dLJKIY7UkjJ
	 2dbUkBKGgVELg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6F1E99076
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177581745368.3214.14214015851306970699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf52f27996b642b9729ac4ebe52d3359d0669fecb020e2eb5295961297bbabbc
Date: Fri, 10 Apr 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775817453
