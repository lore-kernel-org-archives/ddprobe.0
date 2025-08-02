Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D6CE55B
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754132994; cv=none; b=boXjvlDnE1Dbi3P39Uqss/S9vZ9pQVirQJfz3yG8j8BQUNs9pJdeUIXhQlf0BhfFE6qBcNtzwDGUgbn7RjpxJGx77CK8g4QjEqMOROJp8wI3rF3tuSwJ4N9yF/4Ar2FYqI0X78XAaCGo0Oa8aYoNi96KMQasMElOAvvMguBzEV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754132994; c=relaxed/simple;
	bh=29XKOWd09dSJy39i2aIqrPL8Qs5n3VbMnxxlgdhttTQ=;
	h=To:Subject:From:Message-Id:Date; b=MMFPlVSb2y8DjT9JqXQjZw6FPG9Toeb1KNikYDSPW9YKYKK2jlvGVg2B8FQnBDU74UdCdTUPI18dPgqLZgYT+DZCuLCem6nZmbwe05kJzkshQnewGJwPbaFk8RimXcPk80Wn4i7zeje0xF/J3B4DdIkY5x7OtwyAv6qjpK7M6l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vEhhK5VI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vEhhK5VI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AF3C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754132993;
	bh=29XKOWd09dSJy39i2aIqrPL8Qs5n3VbMnxxlgdhttTQ=;
	h=To:Subject:From:Date:From;
	b=vEhhK5VIZ79w2z8AAL0C+aojuvJ5/Jeuy63vJxbUZQ4yKYeNPVNRANpHiGedXDN4f
	 lEVE6GHOgLJ3pPFRiBae4SSRcFvDo0tNm6yxt3bzl0ChLargQU7EQfpPevk2yoxnj+
	 pzplhnemPUj4I0iOtH1FRgMVULAIAx4TeFdTkYzZCY9BPEBkTz0ZO/rNZkN9Aza+a4
	 Axaq+zvmUgI50ESWXrVwZ9O6hreU6UyDQ0gCvJ75a+8vKgP7RywQmMHykCByLeejE0
	 awuOLBpAuS/woB9dpsU0T4HA79TgF/z2sQrPIXbazNqmN5F52sfrnZieeU7KNRbIIG
	 kxAvMWIHMrFKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC0CC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175413299358.4095.2290460394264199796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 395fa9fc314584fd801caa2c7967b0f94af69a09de914f0af7843eecf412002f
Date: Sat, 02 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754132993
