Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C342594B2
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734698154; cv=none; b=ZWk++VwBjXk1jhhZs4dhzDQIsr6IwAD4Z4ls5floHit/BGCGPe+Tqucs+CN6tarsyzDuIA+41EB2kf8XV8kCdJB+ki/kDcC+ul+Xh1K4rq+pGtTOkrfdf5dcPF/IaCUbzHfw9VYCg368vz/GBflt8TS8tgULXIL8FJhh+bi/JLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734698154; c=relaxed/simple;
	bh=AO5rSxvxsqW4VkKZQ6uYXG7lBshMVDgMCBwrOiWSYCk=;
	h=To:Subject:From:Message-Id:Date; b=XwDRINrq7ofAyLaOK96AAcZyamhFWzepHSp/khdlyG07SHXnDb+m1qTJPttgjmTAk6JmkGkvwPh1yn8ASVmc+yZEW3FEWqBW7wrd1Q8tbm3HK9k3uCJ8mMvidLP3CqirldMA68HtLxC6PPT3WCrxjKhY0uBFFT90UbCkM5YsSRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e80JoGoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e80JoGoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7108C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734698153;
	bh=AO5rSxvxsqW4VkKZQ6uYXG7lBshMVDgMCBwrOiWSYCk=;
	h=To:Subject:From:Date:From;
	b=e80JoGoZ8VvwKDKM8iVJy3nWmkHZFPyB4poFhSO+Por01oUrEAQvnx3GLL93SuphX
	 Vr03bbKGjbkiU/Hs4rTQLOveP7eWxyvoYszcl0oUwaGn9NEbyZJi9A1uNZO3+Z0YRN
	 NHebVAw0CGPWfvXhJFvEj8Qc7MukSWunc1i8VwhL5h3ykhLAHcssWBiNiFqmAeC+5S
	 uBQzASeLsCyRcEUCkjGGwngLpsFT3m1CqSC+R4D25zhZkWKhARQ7X5i7k4qYjFSwEe
	 lKkzCps3Cd0BtqKe8wizG56pjgjipUS9sVmJ8NxatySUGJ9t4+IDSL/bZ2qunRQp0t
	 A6wzq4wsR9DQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2789E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173469815367.23131.13037881379939959793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fce78376d8244a1ce0c74f8495a6be7f011c89682185746f07d229510a298fde
Date: Fri, 20 Dec 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734698153
