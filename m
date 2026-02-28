Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4F726461F
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772294694; cv=none; b=atskqZg0NodSPEt+RLPHrwGyD1CpsHFepTaBNlfOk3udtaV5k3s9cVqgNSoqgwq9rBT7CJcb8Hk96tBGx2BAIkIMRhOhIukifJ/rCP0lj87PjPJ/kZfKZdM7EZEfngRRxDFMgztxFzImhGrn96GS0L5R2Hq37tNKCI3WRruZa0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772294694; c=relaxed/simple;
	bh=KOYorJOgALD01Jr65RpoIlHF6M5qSRWVXYutapm5yM0=;
	h=To:Subject:From:Message-Id:Date; b=a6SM08rEjwKMjYx4Bfeo/Dia+VLm4NoqAxa68BOuZy5pr1Nd49bp064qxwIPmgPMPCcdXOdEkBd4svM0JFofPSze/nczhLPhZ7bMk1EQNTRPDnAEOmzzJcMwcpDaljlTq95vOLF1WssphVxpIomMu/mJMb6GDElxmtZMMf5AIvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJi6PmKP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJi6PmKP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0785C19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772294693;
	bh=KOYorJOgALD01Jr65RpoIlHF6M5qSRWVXYutapm5yM0=;
	h=To:Subject:From:Date:From;
	b=uJi6PmKPktfXDHMKrX2kcHC42WOrVmTZDpm4uODvigOKd5W5sN8yokBJKTkE+DBUR
	 M9DostnZ0P0C6QBW11TyHCBR1oU9cq6RgZAi1lodZTPJm5uSi8iJMzcNjxcQukvXB0
	 q7Nl50HiGE2JNL/VSaxr0Go/0Yu25pMSVKBySkSIzNL+zozNn7phlRoAhz+KETldPy
	 Ny5QHJryt06vp0z3b+SLjs1RxTpBhAr8jHPzSqHqU5OZtNXFELgHFXxIeFsnbw08HC
	 6hVt1W9dtvoLWFLNsG+k7Db/lK8pu9TxQGogmI48G5vQw4kKfB+e2HKud6qpl1Q/4n
	 0i2ncvDzDCY+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF9AFEE4F2
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177229469358.5547.7157684742430847104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4011819229c3359e0cf76259054e8a980f72bf03c4edda6542819b2785c0cdc
Date: Sat, 28 Feb 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772294693
