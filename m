Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9F523C8AA
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755508794; cv=none; b=A/sI9yP+UM2OV8huVoLSP0y2/EeWV+Re2+ekPeu+peK4/tg2UzXbceEK/ctoNCPTClvo0SRePKqG02suHf1ZPtA5sla5l8MsTN3uyxN9NEPcS7DZhFu6YqdmLWIaX+cicYzh3SyDUBr/aJQHKLyJQgayhBnE+kSYMoRMhd4+PyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755508794; c=relaxed/simple;
	bh=KXAUYkdkzSfOqVFQ2ezK/HcZyzT7sJDsGu2e1bH2qVk=;
	h=To:Subject:From:Message-Id:Date; b=sS7Qqq6vtAvCQw8+5O+BO4y6Z4ifeK9WUo40BSB6x0u2z2ROJH8RnRe0IqgB4JjXo5VBh1sa1qHQu2jkZTTsg5Rmd8yOi23cJdeK+u0v2qySE/mYLWpblK1jfP3UI4o0ARyVXNRmMXA3DonekE4ZJ9rhzOhQDdKeKlkfPtYWvS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tuFwxpa6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tuFwxpa6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A669FC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755508793;
	bh=KXAUYkdkzSfOqVFQ2ezK/HcZyzT7sJDsGu2e1bH2qVk=;
	h=To:Subject:From:Date:From;
	b=tuFwxpa6c3ozdc+IserF3msWUosnrrT38j+OifUR/CbisgeB1bt7NbeYL0ztS5ekh
	 1v2CGIIgsUHoHm7EV64IAOeQqrm/YDosAcmuRB+eE/N1BwBHfXRAhLhphR9PPfEtxZ
	 jPohQcmh4Ops+5kOJKP8kjpnj3+oiV7GaDaNRTybjcdWDNzSVwmAyKdThZV+4uov6E
	 blkbSnv3lJghiE6H/BUtUwGKQKVyqdoXT+Ey/cwwJ3HdhlGvNfP0YRwzd+P0EBLQYO
	 BfL1TOmZSIjrgjq40Cjc7aPJj+uVSbO6GvavHg803C1gXtWLN2TgNLAFcnVa4ObHWj
	 QuFfqfBUVIRIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919E4CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175550879358.21563.6970251906070197833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcb9b54b8fbdfd0f9a797f7cffddd6a6f9a7dc1745b4b8443262d86c599b5184
Date: Mon, 18 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755508793
