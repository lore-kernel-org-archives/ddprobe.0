Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1CA3B7A2
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730538954; cv=none; b=C9NI2nUl5F7Bq0x3a5KYNcMjNeolK9MPxJI+hfziuA4VU69Rag9Ul5dq/4u5gljDK4PNIixvVg4hfHhTZrWzmvLOsO9GXgyyuoswbPZejybqBUOzwpGvN739rzYK5kEAbD0CJGe28cXGMc8dCGKXaHKENfCXraWgUiYBbRMFC90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730538954; c=relaxed/simple;
	bh=DPQnT8Eh7WDLLduxQC8RlISUL1bzZXFdBv24b94VF4o=;
	h=To:Subject:From:Message-Id:Date; b=MkuSZeMNsLmrwt/DtXG5dvrHRx026GFMa7HvCuq36KGjiatojqF6AZlOpSXJPVauWd9ktqzz7qbQX7ovENcjCpd/9zZKfIlHmnQvnNhbdvPZKlog/tYE98PpbEU7V9B/ofiR2p6g38Ii1EeZOhQhmgbUrBW4Tn0RCOGWJPolylQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofVbgb8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofVbgb8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2844C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730538953;
	bh=DPQnT8Eh7WDLLduxQC8RlISUL1bzZXFdBv24b94VF4o=;
	h=To:Subject:From:Date:From;
	b=ofVbgb8Ato4CD2ymH9XXv19x7Ei27rDIXIKapgCzp+VFX61IUVKHgUcx00Kp+n+Ci
	 bg+0lDPxayR1SyD7zVMDNP7wsEnJupnaUe/YB4QkXTgEyVTYQZgyNzc+pYuMlfw2Lh
	 92HzHP4/i76Fm749xg2vbfR56wMe7ycU5q5Lk3r1o/qwReJdSkeUFN3DBPWzxkAfLU
	 avR9j1vd3jec4fAnWJk6IdFvEQ48pbnJYH1o2oWmKG02W/cD8WMODvKEND/JAATy6J
	 wDrlit+tdtRWolaw4BTUfc2D5URvN3GW0BLkd4YjxK7QDwCdU+lDFXPstQQPOpx9yj
	 k3ev68b5jgOsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908D6E677F3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173053895358.21437.9473965137973017917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce626c0bcb7b78b1099471290e6b23ee09f30855130ee4872d103208df3c15f1
Date: Sat, 02 Nov 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730538953
