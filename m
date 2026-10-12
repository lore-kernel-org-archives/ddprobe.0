Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3615848A8C6
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791808234; cv=none; b=MlWN1wN9NTu8kr5ZN/M3uqYqc/kAz2ZCMqYiURMhBzet7Jdr6v6y4CkrMuIEknAE43Rprruls1OpsSf5YsR3t9qlzCxvQTHs4iJit1sNQaAPEa+1iecvzv2yryQsqzU79PBVk3HZzhT0vQFcY+uqxudBWYd2yf5oheywfSZaNLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791808234; c=relaxed/simple;
	bh=MT1LGbN8GqyqpBRgb3u2mg+gPhe3T3eJM2gbVJkmj9w=;
	h=To:Subject:From:Message-Id:Date; b=IAm/wMjnK24SJI0Z+Scbb+B1VHAKtn6GpoI2RuLAhZK+mJU2K0xZlXgiAbyOLQC0jeqvy/y9otBnCSTYqDNTqmTcYQJwA7wjQdDdBg2H3B7eTKGmpjM6xy2kSrcpaYCYQIBL8L9p1qf1S4DKIf6wlxMMU3W3KFdtC73LB6eKosI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H5irFagd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H5irFagd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D65C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791808233;
	bh=MT1LGbN8GqyqpBRgb3u2mg+gPhe3T3eJM2gbVJkmj9w=;
	h=To:Subject:From:Date:From;
	b=H5irFagd145MR5nuCz0ZaqZvVxnTcjXzZ9fsEJ1if2oJKFPl5MNAF8lhx+fWhOj3I
	 ppnJt+0FknCGnpd4wf0xUBqxGEkrETmj8uxQ+9quH72+DeMrDsuAHI5ccOdtlz6WHq
	 AKuSi1THkX2QT8R4KwmUSXBOr2Dh4Sk/+7h0QTk/VwggSx9riZmnhvXx8ueBFIWGLR
	 dD7g4teaLFI7bt8x3PQCvKO5AjkQ0e+wOsaaCaDcN0vXk7KXQPSGCqj38xWnoCXt+3
	 BSGNHAs8V+ASC2pXe7tjBvRN5G3uVXeiGAqlcIl9Mm9nuNydTFFPWOGG0H27/7dIYD
	 MOKfXuEciCXLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF41ECA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179180823370.23858.11981106111928268677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee5d184eb4b68ecf6a6abf5a3493112c53c70275b5da4d27cad1bda6975cc5c
Date: Mon, 12 Oct 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791808233
