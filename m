Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C490358D32
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785501034; cv=none; b=Qhbqo0tvhn4IT1BqXoMxWiHg0prpoqwKOi7gAljFaFB+kO12DHYCTZcMzrtuPSFfmUGFmYrIL0VHNvq3Ot0Q8+dDokHSPRH71eZ+r5agWnGbtFbgBJPznVxIjkLdYQOmLuCHTQ9Q8qOx/KJh8hNrezz3GramzpWMhzBxBUryMMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785501034; c=relaxed/simple;
	bh=Vp86gEjW/K8DJrnPsXIyCh/OOMe+bk2bYVBJs/+YRNc=;
	h=To:Subject:From:Message-Id:Date; b=W3LKMOn+DUYmwodyjGBMoGnBzUR6R5adPox9BukF78Vw2HlfNv3aHAPKsA7KLt7jrKVod2TApfcoW94RAb13DLgTfCPS/WLBYuUt23rqRZz1l3or2h4p85hGxxu/5awMrYx1I9aCIektQ6L+dl/f3MT0LS1IpKE3ECZ4Bw0VD6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etXO2b8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etXO2b8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0DCC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785501033;
	bh=Vp86gEjW/K8DJrnPsXIyCh/OOMe+bk2bYVBJs/+YRNc=;
	h=To:Subject:From:Date:From;
	b=etXO2b8EQ1/uYhmOuj4vZKRi0oeW3hMq2iar3vWqE844c+Q9FDlANdYGR5yxmxevj
	 lRbltVpPqdNKB6Hw/h21Rt7WhebkqNePk+P4SxUbX8m+VW47DQfdLPOz1Fzn9WXg3r
	 nsvZwO8jfqlpkc23IKurfA5bDK4ktDRn6k0XPKtahV3jma1BVRVRY8k164R7C8TnDW
	 rwseAWGo1EymLxAhYJN2E7SbaOFl6tVc8rozASwb99e0hU9D4tKKiUMMJ0RfpVvXXZ
	 WldmyeZvKTObBy4ilzboPZBZq2erZgLqY/qpAwBz5YKMPS2FBaQntUIVgLTC8kj7G9
	 IgmQNlPs4Nfww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9BDC5516D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178550103369.20652.2363947900278429454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c7f58b591814a7b818bee206dd65fa349dd7305ce252ff18a259063398e95e2
Date: Fri, 31 Jul 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785501033
