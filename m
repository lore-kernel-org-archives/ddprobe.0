Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E652874ED
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761530394; cv=none; b=EldWp5fhOV2ZvZ9z3O3FruiXDBHncEEH1bHUWz03lzbPh+GKzOaSGWxAsLg5JHjVlQdjnF2JZojWPkWOyXDvSdx4iqxiEWxg9k6U54xAvji8L9k1f/ktrJy+xKcBvKRrkVl7QdoDvGKcPqMJ/+O0hbOE5ct/Af/YI93Bnp0os68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761530394; c=relaxed/simple;
	bh=MVW6TgPdi3l9L0kj1yO4/9gmCptjKNTbuS9YnAIcrd8=;
	h=To:Subject:From:Message-Id:Date; b=cc6j0spuLxbIaKWgCeH3JM1lh7Hj8XOC0f/51kE/WLW2fokD1EdJCwKtjs3sfvDR2cVMSMNQL6qm4n4itUhq0FZ2mqW1m16zpD6/YCqVxoauazHpZYmrLM1+BnyHlJ66VRrhDJIjrU0SvyKbFFXBA5mrLb7NHfuAbRFUoxTgE6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SyNjEhCp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SyNjEhCp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA55C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761530393;
	bh=MVW6TgPdi3l9L0kj1yO4/9gmCptjKNTbuS9YnAIcrd8=;
	h=To:Subject:From:Date:From;
	b=SyNjEhCpxiT36ovfViBzwgmGeGw5Hndt+ooouhRb19UhD8FuXH115ecomCzG4GMiZ
	 9hjuOyaH5Wb8qMJGXiegwPrIKmC3FMC2iqabagdc3F2q9YZNYa0J5T5bp2Z5EjRxRl
	 8/Boz5kYBzlLufeaX+oSurlwB8DATkBbK4DuSVfhyiSAs9gL2nTvDhq+dnSHmcaNmS
	 Iv5URRJ4ZhJMksFeL8ZG1d9W3WTLPsPgGBJgOWR+E9+y4Hn1wOONl0xB+uSvKCnA0w
	 xJavEBfHaqCmXNBquhrXIeY1K7OqWa9PvYU2WGEjf1bu+whA8MfkhyxP5/vrt2A1kR
	 FRveu/EjNrkuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64ECCCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176153039369.30440.18224779824944354685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7e0bc5513884ac31cef016be8db25d2bbb5634b83cc496b1a6cdc61f4ead076
Date: Mon, 27 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761530393
