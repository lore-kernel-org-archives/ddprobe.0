Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C35215F42
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 04:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765771374; cv=none; b=Trp7p3qKOWtjyVuTuKL3Yn6WztJI9GxaCopq02EkJN8w+M+/XuVwLoiEfHVWNGHhKmZk7J5CUW3WSK/gPa73FY4GDv+OQTXq9QzbN2Nzu+CUHQbtaZiPqw11AYG2vfTdtiFH/tyhIuQSWoR0Mi+98jVgB/FAxFoEZLnwamBZV/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765771374; c=relaxed/simple;
	bh=5yvFfnRlHhvJktcQNUmGsdY02vQvHudBcmdmsF18jL4=;
	h=To:Subject:From:Message-Id:Date; b=QZmQ1xC+HqWPV58y+DW8KFDnHn2CIQqfkZ7F05wTW9sIWWUXWA1tKmh7ddpW2fdHK1FXq8/r1/5+oY1+XJegI9Kb6xvEGvccjAUm8Z7PiKSTyzHBKvzI9++b/P0beCe+TWD7O2J1OFnGFvLKsCa6GXRdh9y3YS0G3Q94i2xL7Kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZufZJbvx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZufZJbvx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC52CC116B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 04:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765771373;
	bh=5yvFfnRlHhvJktcQNUmGsdY02vQvHudBcmdmsF18jL4=;
	h=To:Subject:From:Date:From;
	b=ZufZJbvx0jGJNQUQYOyzr7CUaey/N/I5Bu1bGfdSMxGc3p7nOsMJcIbvLBlfaO7OE
	 z9T/W6o2q58RpJG+/b0kbUaKcTIUsh8poqa7lhqSo1NYLZi92gDBpYwVDFJWzrprLT
	 1THd8TrjY9+ZQfBgY0q/e62IxodJvqyqiRhfbhHppaUoBeNMwinmiTbn7NfyCl9X08
	 w76a6k0E9Y9K/5xbQmXe8pXOTmZKBvlS1W7BN15vqObKbtKa1KTtTukfVphscj8eYB
	 95NSzA++CmaaVyqkV3hc2bl01onkEQTeNPPK+JzES3aSTUMkyieArVFgFXRJEzD25P
	 3rvKMemgYvNCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DA2D59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 04:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176577137358.24845.8039113937042909886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0325ba5fbdb67e6c086938865caa121b5c76c16c50b14e8e965a5d7498fdc18
Date: Mon, 15 Dec 2025 04:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765771373
