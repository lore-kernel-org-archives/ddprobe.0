Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132411E0490
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732298754; cv=none; b=R/vL7SEaoV7F57JKUVTqD5AvqH2zvfbbjebJgT0wLuLwFnYWsMasVtRxPWfaShOY5HP1JxGtYfWk8vv3ewY9sO2BhRjT994zmkuYKbw3885UcDpVc85EsjrYRlAi6YSG3KYsvjaJAWDPtDILAdpSu7eYfmX8o41KHNAWgSo1o3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732298754; c=relaxed/simple;
	bh=e2RsHBub3LiAWQ8eew34tEyLbU0twl8kg4u+jhNHcFQ=;
	h=To:Subject:From:Message-Id:Date; b=ghUtMUBERU5inGUSWdyg3k8nEUp2zICVgQa0NPrAUb+3IsVKNBML1D/xAOb3iocU5i5pinP3EH3v4VqllULP0MsNjd4IfkGUrFXbl0N+cebWsITbBFajFPGbAOgKOof2Uy2/KI1HEybfaQVXoQpgrz8JWqwWTg3FF7Cy/CgVFpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHL5lNTM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHL5lNTM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18D6C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732298753;
	bh=e2RsHBub3LiAWQ8eew34tEyLbU0twl8kg4u+jhNHcFQ=;
	h=To:Subject:From:Date:From;
	b=YHL5lNTMBv5ecQvRbWFPSE+eqsz6mzK6x/AeFw29mDnPet5tQP4acaklrTh6XqJRK
	 V2Lrb5y3gbJ1LZhaIdh+UdaeQQ/KvrzEWTVclXYsa9nqc7cG2T7dCKiP8MDw8Cu8Cu
	 BRzL91QOelZHqAyUW4HLWYHvsJDTYAINMuDwZInewfKqyLEWT+FfLlfCp9hyPU8UKy
	 Ul/2ArgHS511zhWbknFKEIvNClbYqgIWqlAApfz44CY+mRrfaZA/IhUx/p8NkqLVkB
	 rxWGwEC0fF8yuV2T2hoEYsnAkhK3lt9bfPd9EEOxfwWi+XIROUAwprbPgbFU95109I
	 ely5daFz6LmCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2EAE69185
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173229875363.14827.11699658268342161296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 247a30414eeca9e5248847544049f22774aceb65a76ffd9124a25255e008f879
Date: Fri, 22 Nov 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732298753
