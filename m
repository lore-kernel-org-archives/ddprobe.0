Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FF0455172
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790929834; cv=none; b=hukPN/nuiWx6fUaUnjhmtKhs4YG1ofAoLg5OxSVpw17A8VQfJN9T3YzHXS8J9QYyv2kJvaDKeHc7YlYpkDBZ0gT3ND/uTVSUd0ffv1dlLnYuL7Vd+tAGZANMgOCx2wGZNAJf+ycjM+2IRFxYMfuc5pRY2J1zm6MwvFRg47q5kXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790929834; c=relaxed/simple;
	bh=GN0tYvurINyKoPIUSjm1K6I8qLeXOvNwfOVAN0/ahT8=;
	h=To:Subject:From:Message-Id:Date; b=XGK+J5pVO8O0JXImbsOYIFIkoO2kNOU39OyKwoifVMTCD+CwpT2dnJRYdY22t+dmIfcdJSA72u/0XvT8gZuU+/q9QfT0hrvmo5/L68TpN7PDVSndVjMcy1gzUVJCvPSiKBzN6l8sbhsW2cqjuwwrSYYEOkDUu4HMfdQV7nhjsNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3niCD5n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3niCD5n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC02C4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790929833;
	bh=GN0tYvurINyKoPIUSjm1K6I8qLeXOvNwfOVAN0/ahT8=;
	h=To:Subject:From:Date:From;
	b=O3niCD5nuS3WsVVGkVbjPm6AWoWx3fqa9/nNphDDedpzhVUkvWuh69Gv/oLbnis7t
	 6LKOGTpvgwnLG929B9OWu3zjrqLTjE2g+7xejIntPOcLLKfyNQ3Yp47DikWCvn5LCl
	 gzmtxmDNR5QUstaNyt9miwy62BBigoUs1jsK7+3KD9x6cwY9xw0er3/aSmRXEW3qgO
	 uYYQfXsGkTfshAcXW7D7BHq3iMORLF5lb/R+SDr29PeHhJ++CWbDoEE7uJsXsmL1UR
	 Xb3pobUdLJ1dDzgnMLEzj0sFreJ42/n8ZDqoenhgV4AS/EoMFcu7hnDgbHHeqZTJdn
	 yduvEztIbckkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB611CA5FD9
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179092983369.31090.1705123756374004430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ac97ff03399a50ef0e1ab97a55451f4372335c2290ef777cbdd312e785b9e5
Date: Fri, 02 Oct 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790929833
