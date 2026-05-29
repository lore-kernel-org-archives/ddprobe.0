Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 873F525CC79
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 20:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780087354; cv=none; b=DWIpgVWZBIR8+fQ1GxT/kEc7/xjhrjpHHtKVAxyc9SVVhEE7SIm1OiqS4pNd8HDMbLHjskVFNPHNUG5nLcoDGP734k1d3U8IQXuagpWcUxIvzfaQ9Hs7rc4MsBEMLnOM7EF85MHWC6tQEd7tr1qHLJ/L2G/t6ui+2GPnrJU03LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780087354; c=relaxed/simple;
	bh=Qjm59xM8mCz58lYyByU0uguiSEIb9YeQZYjhbviwYp0=;
	h=To:Subject:From:Message-Id:Date; b=uIzyqd9aMEK9qtHu/hC9Lj2whmr+yTe5w/LZnbxZ3vrcDvdaKwzDZQhZyNuGMAgzx+2DnJxkLX/yJDmyAtyqap7XLiieWDZlWlrHx7QWWv3AKvhQr98ybxFHmzA3jgkjR0dOtkuRWpaHgufl4XPn7Mlkogb2YNKn4aRWms2noKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frQiwbQJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frQiwbQJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D29BC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 20:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780087354;
	bh=Qjm59xM8mCz58lYyByU0uguiSEIb9YeQZYjhbviwYp0=;
	h=To:Subject:From:Date:From;
	b=frQiwbQJ3w8TopymilETlO759QgshpGxzaijK4Ro1WVPGw3Oy58kAcIAzDrPPMI2x
	 kJSi6Y2VPvNMmxEQ+R4iivsZ3ec7AK/yXvwUSknqfNV7ORSxOPMXapZPINJzBXxo2L
	 CYD11Eq4+SDizRojAIMgtf50+TLctak3U6TgVNAxQvV5h0GFCgk/1K42zLrO5cinA8
	 JvSfsIERkes67I0Dn1PT2wGTUe1s/pDYk7qJeRz7GE6/jCrw4PNGSS4dtLuw06DzXG
	 +Ln+s8igkakVdeO77uRHNyhTeT9B7GHhAOsoJTvSzvbT0py6LjVS+DwEP0VBfyHN8S
	 xR+rCx8WBStyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D92C6CD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 20:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178008735381.6392.6567929612986149110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbc7ff61fb66a71c0ba84ddcff87cecd0d6e26f2ae9aa1d8ffe0f4f4fa6556b0
Date: Fri, 29 May 2026 20:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780087353
