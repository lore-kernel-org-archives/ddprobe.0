Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3071532D45C
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769422434; cv=none; b=f4n4Q0qvGVgHQXYuRQiURdPnJ4C4bQIuYzo84+XD1HrCqepSdaxhnbj6sqbE3KArXpIbSSs/QFUbdN3hx+pyDvfBydB4Dem3ncmjGbRRBrvcX9pYQ/7De+VfNW7+0/zYwgzxIRniIS+aO2x4ZgT2TV7RFMqqGeFpPx7YAg8YaAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769422434; c=relaxed/simple;
	bh=o3d4Fuzn0u6KJ5RNx9vAakQqNN0TIVSAP69o77Igcls=;
	h=To:Subject:From:Message-Id:Date; b=Ufo/qoB7wKK+PkD9B/iwyMdke+HTRYQCwqphskCjc3oy1CIB+u8veGNb3/udUQWoKAHgo1kPImW/KAJEiKAXrGVy3rTVOurtttDtcN0htMoK4gBUf3XG+jhLQSQP1D20slnHVd5E2uE8xWt1gptc+E7RmEf3T8+7P7JsOoEiNqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4/aUTRe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4/aUTRe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64D9C19422
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769422433;
	bh=o3d4Fuzn0u6KJ5RNx9vAakQqNN0TIVSAP69o77Igcls=;
	h=To:Subject:From:Date:From;
	b=S4/aUTRe7mHvyAJxMIlkeExNFbRHDisGF/oBMwlnykRd/sZLOGlawHyecXtgFdjUM
	 zHqEt/+QkRaSwHweJuOEYvukrrN1PlrARs8zMzxGHq7BrkWZ0WqO0uZJ4ga+p09njg
	 0nLZF7KUPs0+Wp9omk9MGq+Z2SFn1RD3CPzaXJ1daGziolJYh1FtKb1ZiMxv8moMZt
	 Lje2QwcWzHaT4AvEtPkfN5I+HEyqUuKy4SKW6T+LA5L6rECIgcLk55+Sdd9pPIErgO
	 5s/iUoDPsDnjmv8SdNkSiZ0ocHwZUn/RPoI0r83qtoDdz//iaW8AVCn2xNScvkzDcE
	 pDr2f6FNwonpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C55CF65D0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176942243358.20992.17723099220538326438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c739c81790b867665648759f33eec975f225d48b80b8bafbb5492cdd50d92f7
Date: Mon, 26 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769422433
