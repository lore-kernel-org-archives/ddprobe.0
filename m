Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477A93E6DFF
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787409634; cv=none; b=sQdb1UuR3p1zNraIbtKPjmHflGi2mTAJsJFZZsBDEOCjqzW0oLP8rMG5W+E8uTkyX133EFY5ofks2fxLjaGRRxAAYm6yUuAiQkx7CJGEPRa45Cu34vOqFsC4/HUg8+boi5b7+cgXHJqabpcLrYQe+JBeJxiA+qex4f3ceSDnum0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787409634; c=relaxed/simple;
	bh=MGGA25m3TP9FPrabwIJm32ERnv71AwObH9uEB0lKQkU=;
	h=To:Subject:From:Message-Id:Date; b=FTkt7DAwIzUGSmXd281iTmuqcbhpPbSdBZEGnfnEeY8i2yj9Z8WIgul6UZ10tfKNteBWWjXHVdgS+WCGZYzLVq+TaR7XHnhZ2JIsnrdXYA8jhegb1qdoihZEyDIt8I7J4Lr+gP+zd4SVjUC55XJJ3ax5I+ntGEn8EYi6WkQn+pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tg7n8vtz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tg7n8vtz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D71C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787409633;
	bh=MGGA25m3TP9FPrabwIJm32ERnv71AwObH9uEB0lKQkU=;
	h=To:Subject:From:Date:From;
	b=tg7n8vtzHQ+SKziDqNWPwJKPlEuV1r+S2Z+MmHm8wXRBhcVCP0mqCgFTgEoNyqR1F
	 az9eg4JkXYEbaXSFEEQGW7MQHijmBtqQcJDWVJVOx9HQUQQ1VCbNpTv4sPmX9W/0Uw
	 1IhQjlSYKxdcpH2fH45wkMJ+2dMewmhCIfmlQJQT/D0UNfhJQqaBtBANHCcuLWID/O
	 A8Pu+4m9tPXSTpSSQd1h76QEcmqSs7Mt9d+UyLIvBL188RICYsOtGD97+Q5d7KZbYs
	 pxKjlkRrSnBsiFGHAWkOzFY1Gxxidz9PTL1JRX8Cu3tczdRLzg1lXUGHNSu0zYY7bn
	 lHdmIU5OHrEwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21F6C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178740963369.716.10122739400774740745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d95e4e5b4fbe6f663298052cb174c4f232197e908c0ac6f6b6b7811a49f97351
Date: Sat, 22 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787409633
