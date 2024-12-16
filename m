Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBEE3232
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734311154; cv=none; b=I7s/OE6nUwZp486TKRWQvpBzff0T360ImxUtfcvlt5XhBYD9nQY+f/0O0SHtk994wXirK/69+nsfxD2+OY8o9HUubXi4+4+sdbJyma+EGI0gJyyhoXktl7a0iS6k2gr3bfZa8rhK0LHQlEvLtmhyyhIyegIgAJOLZ6hhNwR/b1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734311154; c=relaxed/simple;
	bh=uNYr9IsMVLvastS+B8SZgOV6sLLhumJOzorpsW/gApg=;
	h=To:Subject:From:Message-Id:Date; b=o3GqVYrIvMYrXb9CeWzkmhEsufcl8DFAhd+XVDmQE7N5zHHWDRJk1Nwa4doKL9qwv2/1qD0tddmHuFgBlPrEGcFtLUSwHVWl5szbOTpCM30W17T7YYXPZy3DgXf24oq9qvOxksJBRYaYYcbjHer+JOllZn5Ji6/pNQbYwK2ouGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQpZHaK4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQpZHaK4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F10C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734311153;
	bh=uNYr9IsMVLvastS+B8SZgOV6sLLhumJOzorpsW/gApg=;
	h=To:Subject:From:Date:From;
	b=gQpZHaK4Bmk4bpEwcK0iAwPCuMDa9u2MlZwWWfU8qs0z+L+Vq3tmw9HP3YamuL453
	 lU20XypsRG/bsHyfqC05sHreQHwWJy82316EliuE66sdcrmofco72gfVwSj12ghgIM
	 e4f9MVXgnGewfeAn7VEaHIvZlCHA1aD6q1gAa1Vrc4umA/ltMkPZed1cy1UZqSKCEi
	 rwA6diOxK9o4Bg/Q/lO8moSl/0tpwZCET0NSpnPQxfbPXFXR5ZrEkjAn/AB1XVad/f
	 vacZWNalroP31UusIN80pX0v8EC/jZS4sc0kySSnwsNqQP47t/41RhW0BOGsaMm1Uy
	 n7rQ+8Csd4nDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B341E7716A
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173431115359.23513.17959736718466333927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba863994d59cb159c239db0796dd580f70bce512d4edf1b1eac8dba32037537a
Date: Mon, 16 Dec 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734311153
