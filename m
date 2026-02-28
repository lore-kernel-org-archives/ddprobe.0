Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB8F13B293
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772250894; cv=none; b=XxZ7UVEYvWT3tmdn9HKCDSnAX0wxF7DOti8IfZ1cczqYtg4BtPfmM803O6EwrwPzYRqXK1BbuPU+MtxQHYElYdA/zXGYHR2dDA2yNBVpUlwhkYwaAcLLPg0Z4ONYAMHW8kd+qkvIN4FLt04O5MKxtN8K7NUAvEpN/TeoN2gX2Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772250894; c=relaxed/simple;
	bh=qTKo5a1owofwMgPrCHYVol6ReYeH5w0YFWsMlFgZeFs=;
	h=To:Subject:From:Message-Id:Date; b=ANC3JCtb88ekkQnwR88sGIuVDQ58xp9Ekam8AONCNmUT/m2wFke2ZnNVR6Kka69ckUgn9KnDVsFWahWSAgUV2TWZ6D9xpbPK2bc9ZLnvpt13FKwqSyf3iCn4o2+C3JrWg6hR46Q0KUScduBA2IBkLaFD7czqQE0IgKH7OEjsxHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rdrrXqk3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rdrrXqk3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50EDC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772250893;
	bh=qTKo5a1owofwMgPrCHYVol6ReYeH5w0YFWsMlFgZeFs=;
	h=To:Subject:From:Date:From;
	b=rdrrXqk3zyuD5lvAXNbcStde9HsmY5uHeyWx7Y+PuyBfyrCxHeEWfihfzvTo7Wh1T
	 uNIMyQuNu1UkF0nxo8pNiblITqACITMhIJcWGH6KzotY/3aWiXMB3xaZebwHDNhC1T
	 msYq7rZgq/2Wd9/U8bMzd8Ywg6iZNIsC1cLX7NN8QKp4fV097FN6OML5uipITZwcHF
	 e5e2NkqSsgVqPNK7krTBx+k/+iPcRiGXWqHRixT7iU26YSf99CA5c28RGe0v73NWVx
	 ikFTjo6knvuAuy8Bw+I2In2qhFJeiheGowFnvvD7LaJo/+oneurvY/GmtYtG/DLOrl
	 S18etC2AFmKig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CDBFEE4C4
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177225089358.16375.10163251347792827039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb60066f1d4e1a246a1093dffaaef37e9c8dcbc9825a1ec6305df358e7c756d7
Date: Sat, 28 Feb 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772250893
