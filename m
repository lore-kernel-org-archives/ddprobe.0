Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8B603BE62F
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773320693; cv=none; b=A7GnPXGg9RU/f1HHXLUn3EO7c/COTAR0CQItTIMJWO7DTY10dV7U8o9xNbLEneiSx7B5T4pcLsP3l1rUyEGulL+IqZeQ0YYoKFUx2W0elNoFIjlnHD5eK7FyYggyYJJrMx80ZETe2YU9EYoA+BEoij+k71HJHXIfAh/WJM7CbS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773320693; c=relaxed/simple;
	bh=wk6ujEFo0A9DGsNYEhfNDYsh9dYVhXUQI6OWJk2EYSc=;
	h=To:Subject:From:Message-Id:Date; b=ZyJvz+H4BSeG7RGWAf8qfz4gZI+m4Uxd9rJb1PlLiXvD8SiKXrpblxzgVpzXzWd2DTn384t9vO/I3BR/DHxJNeOl09fAiKvjCKQVpwvZRmC4d2FXNObNwpI95sazXJvpasfIlXyzIZSvw0S/He6VU2qy+VPH22wpiM2bZAkzJr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgeNIoB3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgeNIoB3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA96C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773320693;
	bh=wk6ujEFo0A9DGsNYEhfNDYsh9dYVhXUQI6OWJk2EYSc=;
	h=To:Subject:From:Date:From;
	b=fgeNIoB399TbIMqbFRZYTU5cC9IltBPvj79sIVwyeRXT+WAS25rSQudCbG8Yp3gBJ
	 2JiX7ODeWhofWooE8f6eaSVA7p+l6/Rrzj84FnpGLDiC2/G5jsB0nKOI7rGnLmFjB9
	 86WkLzvXdQL6arbwQNFV/dMD4/xnKJJYC7krY0mVK3bqj7tLTwUbh9J66Yj4z6QDQl
	 x3OUm7PXt0Gf4P++Fos/OWooyVWjr/WU+Cb6rTeCt90bHDv++4OKdEJ3+T18ifSDeT
	 wMxuSiy7Qfz/vy2PB/gUqUQxpOfNe3Xp14xcfrb8shHbnKlK3jdbfE8kv31KwGYM+W
	 U+GzVq5T1KDhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90160105A597
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177332069358.19593.6035203021092207731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a033e212bc1b458af785c7f7a181e154ed5fb17e4c7965eba3e27b1fde7333f
Date: Thu, 12 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773320693
