Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 030EE3A1E70
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772726094; cv=none; b=RLS+6WQ5wwAbUi6qAuzmJCSXg2lUgssGrOi/fBH2mnsQsY4Zb9lWETV4JDEg5xcCC3g7aV4tHaEEvhSbjBzCu9rzHGtlBMUEFS7ieXaLBlbZCABsSuPtRtL5gEYtNHW5Pm1lxSVKPgIA8AfBLJASqvmMRy7dVplx7vGueuK6NoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772726094; c=relaxed/simple;
	bh=LwT1QPlL6V5BcKzoJxG00UXw8qN6iJ7HDbsUH8WPRE8=;
	h=To:Subject:From:Message-Id:Date; b=pC+J65rz7uj2u4CiyDy7bYphRKfixiQZBZox+m+81vpSv5fLM5R3xKfrHz7VQR9WK4ZoBYGYCyrXXXaQL1x6v1YHtkTkBpv9baJUsDdnUNtsNyRWM86ayAQPPnXoyx/HTF4aOeCEuqNL5dSSu2r5cvN+jKYpMJF0tRDSvMY3llg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbEtyuDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbEtyuDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CB0C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772726093;
	bh=LwT1QPlL6V5BcKzoJxG00UXw8qN6iJ7HDbsUH8WPRE8=;
	h=To:Subject:From:Date:From;
	b=QbEtyuDLKturNQpGTlFcudPW7aod4Oi1GgyefHh5Ob2q8ppl6BjkIjfCaQqdk82xu
	 QUhWOlAGNveDnxzGAbG8pqzss2VNh+C6Tcq2PTpK9I12PBJ1DDJ27fECrJVAByMq/w
	 Tl2tOQi6At8NpQZ+xPPdDWW3MIkWgox5eLAcfX5QnxY8eDVMQa/rTJrIGP6o4UmTrD
	 WbFKD/dDgGTYQJ/Co5rShOMU8vX4tJAxcPLvM03QaXj5egn+a//wK8OcHViurqejdu
	 QY9CSqOPrgcvQUz5PhenNS3JmfMNwtct7OFsq5pgjrVZmyJaSQEmhCvwTqymzzF6gU
	 uxaJ7eXqPhkPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D43F3D31A
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177272609358.11921.9064043079194827991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58de0a285bd690bf0b0eb2da4737d1b6c58a2e0216fa0a92019741125ec5c90a
Date: Thu, 05 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772726093
