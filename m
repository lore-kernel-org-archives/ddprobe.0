Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B64423FC41
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772674494; cv=none; b=gqjmIX6LwAbrU4EYYNdOdtNnGOJ2GF0Ob62tvfI/NUWVBU+V3pm8akWMxkxl509LVcfd7x9CL72IeMqrv2a1IsHfX4WKEEUmhPtEnOSdqFqUkzL/QKU/WAXClSOX3wSyFsagi+51/6sSo8FZQfLSJ56qzdh9ArgkUtQv9q3iIkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772674494; c=relaxed/simple;
	bh=DaEaUas/6+9zylSe+bFzycXFMOpW2lcBSNSAZdi+d/A=;
	h=To:Subject:From:Message-Id:Date; b=mKpFMJPeKkrZs2A7OyCw0gTjj2JfF2RoZOa1VAbHngq/oajr/0vbY6CHoDzgJRMjbHx+LDFUluhwO80fef5cdXjewpR/PjLxp/FMx6rQYRy5weLSuS4Ht7bcB/K56gb24n6GvxSoXaUjBBEX3VeIxBVh4T56RC/CmmzRvyJkw5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+zzh07f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+zzh07f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5631C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772674493;
	bh=DaEaUas/6+9zylSe+bFzycXFMOpW2lcBSNSAZdi+d/A=;
	h=To:Subject:From:Date:From;
	b=J+zzh07fjXReKdzFW1ovvQlBPCbgbvw7NpfX9gRpOWgyfplmTCEZnNjGMTazeo1sq
	 PjlQFxKuSrpJx1xXuyewDMjoR20kfGbd06g/0dQJalltIDG6TfLkSrTSgt6S2M0fyL
	 fmt5xpmmZI9AVyfOTIfHp9HksvvSlkhII6qqWpqn2NTwpTZs/dLk2lQgB500eOmwUa
	 7fH8I3Bu2RzSp8HDp8NAL/V/QYoIe5r0dn/vnWPnH3uhserLFkP0FIXQ5S22tr22+I
	 WcMcdbu1omIQo/4lUeFPcq1zOx7CXYb784Vr1TKlYn8GodSYbL9gHOmTSgyhnGeLVn
	 gjVxjA9bHOZMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99124EFCE57
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177267449361.2266.8159506103525161905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d7aa102b47d42b91a0165a9807b7af7f8bb3f329df2d798169140b12038179
Date: Thu, 05 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772674493
