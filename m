Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503DDDDC5
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743230994; cv=none; b=dLmop9zdx8AOJfmgRhcfP3R/EHRnfSO/VrnllTgE+H6DbFp8liaaosHTiNZOZgxhsa7pLKTLDMwko0/9mib5wS6ypjFC5f7e4sm/SjpEqAAET5eRHLdBbFOyCs+a8l6IrMqj2RcLlsLlaftu3Rssa1x1FQHOzIYF5STDvwsjrb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743230994; c=relaxed/simple;
	bh=qdHUP8vxHE+q50UvVspvHrXEoLNMJiDEar79gk8Wqhc=;
	h=To:Subject:From:Message-Id:Date; b=kblU6Qj59cuP8ZdsXqlzRWO1XYKedIqUobpUR1onSTRQhmiCB1iN4S7Pmi328yzXpoYgfnlwtbF9mRoEecbz++GXif0oh5O9rjEOs/+uxzzYFtiJWUFL4XIoFcCWgTWTGLamhqgb0wV4YiHJ6ZBzQqvzLqfPzj/+BRHLAY84Iag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZN4cSfWT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZN4cSfWT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E21C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743230993;
	bh=qdHUP8vxHE+q50UvVspvHrXEoLNMJiDEar79gk8Wqhc=;
	h=To:Subject:From:Date:From;
	b=ZN4cSfWTmU7vlAD5Oehf28zHSXhvob+jhJLW4zWJZJJ84oHTAUIdpiUyvaaWjoQ6G
	 F8ytyhbuyS9qarl+CIKKRrgEFVYFu+Lid9enOqRSM+65geltJDbLQucmulIszynpFQ
	 miDomipWbbUm2Mo8uQhK3PPFf5VXzEyUcn8MGKP3qw7NtASFKomqghb7kEO134366G
	 NWT9f4RDFUZsI53T6EdNdZC1ACkQzWlvQCuv5XKLLFzWsy9clJbigECmxhYkLXZifb
	 PCs+POqU9NRHkg0TPSXPpPzjP+Tyj5W1BN80JPHUhGEOJqnnby0nKhzkho2x+ghQEn
	 c/1FkjgB3V/nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B36C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174323099362.14478.12411319058358414380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aeb168f81de676fcaf23fe614d1dc25a45a4f9bb3df1ad6744df52d767debbd
Date: Sat, 29 Mar 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743230993
