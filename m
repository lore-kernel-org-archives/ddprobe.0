Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31624125B2
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767044034; cv=none; b=L8oHrUeNYLGWr3gfDXh8gz4dSD/+FeLw8blQSRNNiJ/SUHFkNsJgk0EM7kjjXn0CBc3EOB0/2IUuH7OS/j4BxKXD7hb/vPvYz/20k2hVVs9iSPrKh5DoN3q/aNiZRxBluDw95i5UxYshMjXwKpUb+0+79BIimFd0+VBZTo/YmS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767044034; c=relaxed/simple;
	bh=gUBN2TnWwytVTjGSpYNpZgpQS3VCAWrexjFPDSfjGes=;
	h=To:Subject:From:Message-Id:Date; b=KWi7nW2562QTj7XEkNC9rHUJWHwMD9dQQaaSwbHXtPT8tjBJB6msNpj2v6cNxkPuPKt6KcSSO4sc6LbI5aLxuQ3UssK43qMoEax46Qq09VKG1KyArRYwAL6OM66/ZUt9482WPH9qBrBmCDEmMtURUwRKFckJ+IBM1VZjofXb8SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ly4lQ8ty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ly4lQ8ty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3228C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767044033;
	bh=gUBN2TnWwytVTjGSpYNpZgpQS3VCAWrexjFPDSfjGes=;
	h=To:Subject:From:Date:From;
	b=ly4lQ8tyOGGmotcAv2bHTNXGrkVSSk239t4yn4I9ryZg8nGGfqJTmddtVsR8K/HWL
	 zc+7TThs6geQ0ddhFT0txy3SoEyPxFDONz0KqG7fQ2kFkMkFzRzGc+Jy4s9vyBq0kP
	 hYsT7HbEVLLQK0ySvkRoFc0vPPhVZhLsSZ6ZqN8Qy5xbJmlQ2HIzeubyZGEMdAUl+v
	 aREg/I8ceX+C8epYjk9D0ZPh5VZb0fZ7/D6vl6Y+TvoN3gLPYyOaHtgrOJaTJZx7zO
	 oE3ZyzkqAm9OHSvX/m/s7izcAuMW2IAnuqCF3hljckX5uR2t/bBLbrLbYigBq1X6wX
	 AkdsdSCdS2mOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6FDE92FD7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176704403357.6745.2629068933719878103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04454ae7b1aa0e695d0b97cb543f54fef556c93a805be3cbe745172f9b7af18b
Date: Mon, 29 Dec 2025 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767044033
