Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE3AB3783C9
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 05:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769144634; cv=none; b=sk8RlyVUJj9iNJSTGTvVKTMAib4aNimvnmqPOZrmGMlcDgda0yRKuYCkPv/3yy8GPoBRBT32niHypFb4ONqoauvg6SzLPzyxClVBmFb3h+zt25SieX+MI1ceMVLbmqNjdmSilJOPpwPOupkRJRCmDstXRTfinlgxewzcAaWozFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769144634; c=relaxed/simple;
	bh=q5+rL+IjPMCqhkyXZ2e5uZ0RZYMeXHBaftX/fvn0wjw=;
	h=To:Subject:From:Message-Id:Date; b=MAkieWzKov5He+WOIyBcG/YnvaxLzXkqf2cnde+7hU/44J5FDhYCy0EHuxLHub98h/BXAjhYsg305pThWRdzhukBcUMAqzYpmc4Ed+9hFWVIxdnmAdanxFUN/3n4wN128IJLldXgwagG3g2rGcOBi2+fF+NV0LdpuKrLzx9ZjLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFgyS7XO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFgyS7XO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5A4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769144633;
	bh=q5+rL+IjPMCqhkyXZ2e5uZ0RZYMeXHBaftX/fvn0wjw=;
	h=To:Subject:From:Date:From;
	b=gFgyS7XOwnQNqdgIWi2+pkYNmrje7Myvbt3gk6OC8SAQRvc6oZt3rE5FQ4t7ihY7t
	 3Ep72TG9zjjjwjXRimjHOl4symIrpwcxTvg+fnQ4wn+fKHuz3QjliOcquvk4x+pAp4
	 n4GjRHUAI899TaElGu4LIW/kfMevMdmipxg33/tkt3w/kIF5f0ZTiKY8tUhivBO+32
	 tg6ZnB1/0ArRFff60aFcVs2jd+iEGqTVN9TzEeiiWsJR+UZtxjx2vn/C9to6QoC662
	 Fl1rlDdjy/QOGkdqrRceF2fMxY8+maP4jrOzv0qfQqEEs0lDx2kUXpBLjSVu5KAHHC
	 xLFaNYJTZ1FBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978B8D6CFBB
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176914463359.7948.516887797385816035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d3ce90816bce7a2b99df327bfc3c11afd17ca95cbd8c8eb2627769524afaff4
Date: Fri, 23 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769144633
