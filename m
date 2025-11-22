Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AD88F5B
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 10:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763807514; cv=none; b=aNqqTjXM299nyT63UymEK3mP+iu8STl7JLxcLEi+oPfcIRKNggl1ckygMo9Ff26MSfQazt/Agviox3AVq6JpxNdHeeynXUsahAnjH1f3KBUsfB9X/4AMwegs02C/MbskAS+w34qEFbnjJP+6rbtv5Im4qBqTnuS8x4vMatdg5Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763807514; c=relaxed/simple;
	bh=YWvSgmOIasADVKSM7hAzHTUD/9cvddoM6MGfaMggWcY=;
	h=To:Subject:From:Message-Id:Date; b=ow3kiWKh/ZTJivV4AfFFGa6+FFMaIX37Yj5WXw9DgK7PcYV2sPFPDMCuT/OAhYaTsMvfvxTNeQyWbvlpyM3nHnxgQ7D9cBLvlCBs+vQA+4Uz+QuvhAmqgArXS8BeNY3RsakaBVbfLrGWgS8ppop2fFEvGI7DWatbIRhDUHiXUuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjSr9lMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjSr9lMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB943C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 10:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763807513;
	bh=YWvSgmOIasADVKSM7hAzHTUD/9cvddoM6MGfaMggWcY=;
	h=To:Subject:From:Date:From;
	b=bjSr9lMdwyZPI9YQAxvUZf8NfvUGJxq5ItT3vWqiWNCIrOCp0mswH2X0vYTqKzlWZ
	 rbI/Id8cDV3t4icmZJK5WDCXkxEl0cFFbmrvrCpOJ0gqhwcoMfKXd58pxFJRXZBa/b
	 9HpRRN98IcbQK/ialKjjDfsGRs9lNl75m+WUPFiXhSAokz9piKI9YcqA9FHCwxaMkY
	 hU0Qpv5Gwv9On0gLkyrsI8V2D0dcMTABvUEcR1DgB39UcuLH6xBPSJJDYVxsStLPjj
	 tB3XWezFdm5X0ziFxdsraZKFF0yIRiYbh9F7Hvf1d/1nSESc+3vEM6V+AdOJEV6YRS
	 UF6jRAaXdcdjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976E6CFC51E
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 10:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176380751358.21528.1632993074795672306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ed578a24e3a09a9565dcf97866af1c198b808da41f15fb55be56febcf1e92d
Date: Sat, 22 Nov 2025 10:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763807513
