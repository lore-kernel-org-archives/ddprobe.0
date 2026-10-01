Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DA22E88A4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790898034; cv=none; b=qCsYlaHumSDypB4z8MV1bQK1SG1ekw4Kqnwiw4qirF0TWazB4cbcFQa8n+vslktUbZvnaU1JUC0cIr9xu/U1SldaCuPWc3z9fs1D9VoISXOqFRTslU2sM1ww55Zso/mrC96cB9jxasauuBEBtiSLp79nqamad683JShKfLAmOOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790898034; c=relaxed/simple;
	bh=6qyRXfnBrRN//ssRJOcUZYvLEiqgs6AUTJXInxoQMRE=;
	h=To:Subject:From:Message-Id:Date; b=iO2GNS29cjvG6uOq0N44PRie3yOUaHJ8tgtP1ILSWgTi3b9hJr5LBS89sDCJo3+P1TW8IlE3VjCNpzOkuvoRPnNaJY5yDzxLETv5ti2Gi7dMnGEVlmQLX9YLcHMoNPsCNgjamI2+CWbZ2ofydRzmtCPTyyi/b+24bolWZP33B3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeuBrHoM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeuBrHoM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E32C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790898033;
	bh=6qyRXfnBrRN//ssRJOcUZYvLEiqgs6AUTJXInxoQMRE=;
	h=To:Subject:From:Date:From;
	b=aeuBrHoMy/fWS4Yd4bXNWKW4TSHcYNsw7oosrCwqCrE/75fxzqCJEuFUuUEAqx+pl
	 aQgMRQEnvhy3iX7aSmVxB7+dgA0skIEh9XGaqZ6YgBHvCE1UPDpuZHcM7f/XRb3SoZ
	 RMn93Zd6rXT1mXQ6fjwk84avs5/aWw1aE+slS+uwmy79QSUpEMLzRLuCg7rBJG8y0c
	 lNe+9EfGrADED1VG24+Eyt6FNjZXsfpqnGfQWKTv3h1zF1QqYGu46oCxfQmHss8zx/
	 YZwsPCBVpU9OKYRoN5tvU85x8Y55Hv/AeB086tm6SPeSPLtoEEoitDaFbmxt71aAwM
	 7FOmWqcCkqmxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0904CA5FD4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179089803370.16072.4738250231036013341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 084f606f20e6cfdcaf8b0eaaba667edf2f0bd6ce5a05979c794d42f38c1bdf40
Date: Thu, 01 Oct 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790898033
