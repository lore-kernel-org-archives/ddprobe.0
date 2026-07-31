Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372BB2D9EED
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 14:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785509434; cv=none; b=eeBCcBIWbX2evaRtHlrNgib5hsSbzo+aOQjZUeYh+LKa87gppnRT7lR0oj05aVrR4erNMv2vKgVW5NQZUgJ058V6YE/vEVOnU8H3aRnESL4/b1/tjuOydGEeh9AcYISynXrWnewzSb4zecy1cRXc++CYjuzw0RQ+/ddajrbcm8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785509434; c=relaxed/simple;
	bh=SI0JYX/l/BLWDyjuo5atujsd4Upcg7AvfQTbPXoLGiU=;
	h=To:Subject:From:Message-Id:Date; b=kqffRQgKF5KwIz6FzUHFsqQ2ht61kM3xyc44MqYlEAyS87UYgJUBBlkZPHoFnmXva31gY2PBz35hETmExlFHoqX/vUBO/L3p7VoC7rR3YF+jRJFnUtrCbqkEI/JlXq9+URZzel9pCh/28+qSFkvl60qPjTM0y7tcHipkTIkHYRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZrzJ86x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZrzJ86x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE8AFC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785509433;
	bh=SI0JYX/l/BLWDyjuo5atujsd4Upcg7AvfQTbPXoLGiU=;
	h=To:Subject:From:Date:From;
	b=rZrzJ86xyjZ/8d8MUbOb8r4/LUDdsovHcPxtxoGDwjH/S/CToqTh3D209iFLeeG2I
	 xDKQjpGAaJuetTM3Gat0ZWl39XOlx1Qk+P8nL8RYe3Z5u3LSCvNYI0p3xBM1GW13Th
	 Yh1MdP2ZUdL3qT1c62LppaoPKz49/5cDSKG1J4BGCaFyQKq0eJcPpTBkOscrk4iPxC
	 z7jpujwPdHEhT6ORgjmDJ/zMatviUieuADuPNAUkKIFWEIvukAqUBQsXZ7iCy/JCKR
	 kJx+cepZC81gLSOWqPiTw5GAwJYpqTTloBDgXxFxKU2rBHyvhl3mcKfbPD3k2v7WO5
	 lC/9wXsJL9T7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB85BC54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178550943369.19741.17376144532705752588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7322ca7fb2e042efff0c3f173ebbdf7e226487b64b84325997bb21738cabf5ac
Date: Fri, 31 Jul 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785509433
