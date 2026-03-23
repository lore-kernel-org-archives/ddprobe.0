Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 014AE3DF008
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774295694; cv=none; b=O+HlEem4JrWCBpruGorddHocM0R04F4jzWri+hwhzRukv+ym3XbNmwsHJb7wEZL02ru7+O4noUj7btIgJdHcLz0QlXfVLHFgSTVbSPh4gTj9nP1Hnw06mb8ksXXQU5+EOKjTZz4DAEX18P7OTE7LI+agGQxJJmN+iwBzgZyigTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774295694; c=relaxed/simple;
	bh=NFUhb8ebUr+3Pz85uGt5FX0iuTERuKiADikDmwgDLDw=;
	h=To:Subject:From:Message-Id:Date; b=e+As/uHG0yrEzTMy0VGbZ3QX4BesZg6U48kkvKneUXSsc3+1R75rWliC+QgokMz7GSFY1851uKhBYEouCplKvW87idre13ArNRLLswZPLjvCpn99TrYCy646i9rgC7Ll7043dHCH5FxCy85GUcmB5ctFPYXH2L9DwuPXox1LRSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQQL+BEi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQQL+BEi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6566C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774295693;
	bh=NFUhb8ebUr+3Pz85uGt5FX0iuTERuKiADikDmwgDLDw=;
	h=To:Subject:From:Date:From;
	b=bQQL+BEiyPkBJjeYQf4XI8BdKhhZL8DpzH7Gixw/63sK4pGBxgaTAFkGdXrCfo3i/
	 JQxOKclzaixPPF2QcNpgJNrnP49OCw2KI1V6XLuPcy06y61m3gHWeOFN+i3+SIPX1X
	 4rPEtvSlLFfDAIkYC37OxQvCexSVxmfHylYTFS2SUFHv6xa8PQYeWUjThl2sxmgSD1
	 wRm13r0ZLUjqclkNtc1/t5y2GbdgvIeplsfD7nC0VgPRMkvP8ubyw8QNWxGctV8kMz
	 RWgcCEzt0D2Rew324NUQ1KuZo9xV54Out1sfYRbea6BkB0NhskxmvqfFgP+IxiHFEF
	 PKwB6E8zVhxIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95866F483ED
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177429569360.13775.11428436519482888743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dd7de8692b44a2c5cbe131f633b07ff47f72fa158e2a85149ce32500b278613
Date: Mon, 23 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774295693
