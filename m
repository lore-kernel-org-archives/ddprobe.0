Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F45A224B0D
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 09:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764408774; cv=none; b=UN9JVIF5HGY+1DBebqQu4LiaHPwx1HevvnkYbcKXQbulTeWt5GvIC2zCGfA5s8VhkZSaIYBjx4KIj060QlEVSBN0G2ucm6fZfznpeTTOQyVHszioAjsGqw1i9mNn866y1lh6e0K+Z/48LUQk/EkNjVarfZ/okcC46erEMdcLhq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764408774; c=relaxed/simple;
	bh=zM3Lqe7aZCSQxmkfmKA9EQbks3NZb1C6aq+HV0CxDJw=;
	h=To:Subject:From:Message-Id:Date; b=Uu6tQDVQGDTF9DB7DAMNSfj1ve7XwOIcErwOlWHI3m3rcsF2vGofGYUJF4FiwPgQ1ZlUc1b0rAEaIpW6sx9QI+xoStC0Z+KT+jKsddhHn6eLKQTa6dLLsj2Lft366i1jW9U6yto2pGw52ts197Lc+EMpMtRTj9O5I1ZpF5po58w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6WwGApI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6WwGApI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BCEC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 09:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764408773;
	bh=zM3Lqe7aZCSQxmkfmKA9EQbks3NZb1C6aq+HV0CxDJw=;
	h=To:Subject:From:Date:From;
	b=S6WwGApIM2qLCbiMuWz9hhm3b/KSUvvOz0ssueBwun08QzNBa9NX5iVeYHNyJXSRX
	 N6pQHOJNqESZ+8L2717Q0VqD8kYEbqf59z7Bz4OAfaJjF4aXXu61byJyWti2Dfbv3k
	 eq4RFMhY9XXm33neAHvFJKibZe8nV13VSFt2wVSuf4p22jrsHhzRgOzThw2vcgjto0
	 XPdciiWMIndD+ZhRnwnGPongOTvkeJVucF1R71kaL0W9h3OMI+3kZSWluoMjOdTh0N
	 ZZpxdumaCYBXI5GoV057+oAq72gi3ZgJscg0cFIJnLWQsWR6+lTzUp0hYDFEz9UbHs
	 v/cfzwTx0UyPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9672CD116F3
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 09:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176440877359.18067.1270247233576458442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92270272a9874b9296e3a286cb305e593425a9ae9e5d2ac874605f851c05e3c3
Date: Sat, 29 Nov 2025 09:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764408773
