Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D5919ADA6
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 23:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739663334; cv=none; b=QYYxhTOxeMtVoA63JgkBl+kT7ezABnWkwxkBqRenCF6uBmS+kqFi/Zu6XBjlBTQTPgUkrXgMbnWlYlbFNZCyIaIKx9qMqfkQJ4KPrcIXEQBKqGY6tdDVt3bStfV+1FPqC4GdguKEcaWShgzLuEKCwgfHiH9JrV7ihylJ/9cbfoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739663334; c=relaxed/simple;
	bh=Hcn41vvXsyS1zLRJLo8JjxAHy2TKb4CwRQ5mfN2Pg/Q=;
	h=To:Subject:From:Message-Id:Date; b=BLHfEnsLw72DwmJxAnQiiICkAgUOwwPTd5/D39gSZeAiAyEFFWED2bPafgJQlHvBYjCR3hcoguIPt2BRSqBHl2LSCjNSx2c64paV9wWDcSQNfJVbjkN85FxgNwBzMVJyozmTrD9+JxThjZ73jK+uKVM3kHmBG5TE7BTF77JSB7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWP/qMQv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWP/qMQv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4251C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 23:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739663333;
	bh=Hcn41vvXsyS1zLRJLo8JjxAHy2TKb4CwRQ5mfN2Pg/Q=;
	h=To:Subject:From:Date:From;
	b=tWP/qMQv8oTWSoXcdb61SwINt1WO1BZStcGtLe3I3NyYZkGDJJJi3DXQ90tzwmTVX
	 9Qq0JPSK2yn3SO2RPbEytii1ncw46O9lZCbwP0ARNj24OyF98tQ6SMU0HS5Of014JA
	 DyLEpLLDX1hOOIJrKpNBLrq9+CeGwPqEKdHfN0LE+Zjp+Iwpz2OsKLmbdOiUKcjVow
	 btRL+Iqk2p2JRQG5+n/6BdGBh1y8/5xl9nZciFe6mJu3zib7Dvbr5DmLw298CevcP+
	 Xwvh9LCl2IhuaBWdNYozHP+heC65l1BFGrR6pHYahyivqc5PAKQJ3MAMxcozkD2As8
	 fqnkmjhvbFQYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915E9C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 23:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173966333358.32273.9089863527806133884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 460377832cb5b622a925aa4885a11c45a231000410d2c7e2f6fbf9444601fc86
Date: Sat, 15 Feb 2025 23:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739663333
