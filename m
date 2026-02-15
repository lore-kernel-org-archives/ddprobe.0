Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A5E1DA0E1
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771116894; cv=none; b=Am++ZhhUsx2strnQEIotut7pfA8Gie8E1gUQSTavlzj9WDSzBtmW/swJ39DKMFvVzi1QBewvdWBofHocAzMftHBRcKj+h6DIZ7YVIYmQW9Qwk9yGam/wv9M2cB+OyuNs3zcBnPoEiF+hwBFU30xyARb7FDWKynHwb0Nl0HySpJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771116894; c=relaxed/simple;
	bh=++ACKC4qA6X7GhhOTHgrfghC7DKeIopr6e/jiN5rIFg=;
	h=To:Subject:From:Message-Id:Date; b=LCE26E8rkCpLnS7ng7ZZBkuAdJvPSXpL6VEDOZ/oS9KgakgL1WgpQghtqq7GGBepYdMcjrqwJeG1lbr7MyGu06eTHm4Ul+KarTqyxNBwTTI8v1kPuCAnewjMccKQlPZiExpjB9LYqYG67r/dt2VcQxjIXfSIOqZWRirMnvOx96E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l47iaNoN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l47iaNoN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99EDC16AAE
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771116893;
	bh=++ACKC4qA6X7GhhOTHgrfghC7DKeIopr6e/jiN5rIFg=;
	h=To:Subject:From:Date:From;
	b=l47iaNoN6rzyJ8E/sjfaat8+g0cctdFBw1iBVrLjS13FpvYqZclD+8hEp5UxFlnWv
	 AbQLrXUKwabeZtTxOWP6/xtMwXeKKFaQjKIS0CTkalOS35/o0G3tdT+9OByDyPWWWe
	 hwEirKpvF5RwR4BU5ckx+xN/iSy6p0bvMbPJZj65j2QBbzVfxEQ9LTwfwvd9/9snDg
	 mSZAwk7Ll9lAmLCmuP2WfJbnsBRz9yOPVpBH9wHiBq4sTtoIXM/d6Sw+pEkMRM/fpp
	 esHPT8lHpgg4SM8oh2cmYNGvw8CvjOhYgHmIHxUlAtlFhewpO0Ms4adjaQU17bJs3Y
	 aLtvcepWwejUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F443EF585B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177111689361.7353.3886094285481623632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29e30b872ee851d55ea05ac10f0805433d6f1cdf7be6bd409c5f941802aa0ff1
Date: Sun, 15 Feb 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771116893
