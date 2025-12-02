Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2037B2D2499
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 18:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764699174; cv=none; b=eeCXtJSIWiYlQkzrstR6GMTxwyO9NYPnbKyrRyAIuKSaUmi/A/ei5heiNJ4ZhvSBproxbr7eHwUE25hWfUC6VjJ69ff5iVRK168Xn6c//xYJM/OvhIqgGVR8vOZUBpagLXcOm2y/K5aj0RGkmFSfssWWGHkNSLnvMH7gxKJ3IMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764699174; c=relaxed/simple;
	bh=dP/InH7F+3t+fClgUXQompQLIQ+6BafXmGsSt4Ar8IE=;
	h=To:Subject:From:Message-Id:Date; b=RvZItnDQD+DnuQkSEMLtMKYFka2aKfocvPd5tDN/onV0nl5gCUlKx+Eh6m4EEJINWL2pM2N0C7wlnWmpxQhtiqp9zYYPEdFmFl/syS4T2LdU6OZWPJ0BIa1/9uBRK1tc3MjoJFRYud5z8QmooIxTHBsPzXaz6cn8WDbgChrAWw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtRh7Ttv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtRh7Ttv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A404DC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764699173;
	bh=dP/InH7F+3t+fClgUXQompQLIQ+6BafXmGsSt4Ar8IE=;
	h=To:Subject:From:Date:From;
	b=EtRh7TtvqxROoqc+MAiI/wLA/M+9mApzNr33b2x4Wne5RgdaPbelgkgiMtTSc0iXO
	 bAwyq3tUjji6bgzXE67aNDPkmVuAQMEkNJnSlvpfr/93J6HfBGqueAmoNuj9wQS+Zr
	 wRHAHVT6U2ysznH0FLzqa7FH6VR2VXiFjwxTQdNfHZeQGo7Akvrglir18YJH1rLUgr
	 Ep1Ugu6G3V7r7BPV0XRSDrdRsGtUtrdwoA1Ven+GgjHThlWC/E0QFWDyLzteTpgKgd
	 0hR82PpD7JTRf3YCE6Z/0livG89QpNILLb6U7rZcK1dXw37OQ0yz8oXxT0LaRDzK4A
	 eMy6e6nRP3vlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90449D12668
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 18:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176469917358.21528.5626746713061980761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae362c11301e3c95d5545861e9d984c1b926bf0c4a6e62634b73df707d74cd1f
Date: Tue, 02 Dec 2025 18:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764699173
