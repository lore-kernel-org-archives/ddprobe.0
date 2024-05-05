Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 689AF1D555
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 15:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714921343; cv=none; b=NbdlH2iUbTvGhH9IhWUm68yX5/gl4viVmVqj/h7VP59IwlYJFRWN/BlJIjWlYcwWIpRZbaroSHGKg4ZrlGhv51LNYmL1uCKuwrhrmu871QIoRIkt+KY/8YZLxcwtn625h6xmk0TdAGAsSadE0qh6iQTJpknmM8EYM7J4NfCHWoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714921343; c=relaxed/simple;
	bh=sVXEZu7ijZtt6i0VIP8S8fBKVu+jmZFD0SBdXFb0WQE=;
	h=To:Subject:From:Message-Id:Date; b=GHzXuWKC4d3jPA81rR5ENU3LXBy9y0OkYIZx5F2oF/G0XptwZ1IbLjze/DKX5p5swlWj8ezJgbxroOy5A0S/sWrimzHA1g1Z/E+qnkISyBLg+B7gZADMpUzhLJH4XxIGfHPwLBKBAwOT6XOCQtSOF0DcluYwsuI6+cMo/GtFzDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9NU43Px; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9NU43Px"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECCF4C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 15:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714921343;
	bh=sVXEZu7ijZtt6i0VIP8S8fBKVu+jmZFD0SBdXFb0WQE=;
	h=To:Subject:From:Date:From;
	b=f9NU43PxcTX+7ujdB/2MnXb7Zul6FKOdhdIm66eG+GB0FYyvNgqcrdmmwwwwr5auu
	 oU2KSHSHllHLExRQwCA0GLJMTPYO3ERBeEG0XUCjp7PgMNUV1CU/kGhCP8EA4BMbvm
	 XHu5Aeg7rx5HyN0ifE3yTaV20oKJkyknRjhGK+DJj5QqiXAwJla/c3gG7w0WqHhS59
	 eQUoYPJ4qOqNn6WtStuGtIwn7sSmLvSXDoWaTsPx7R+91j7HXpKifd5FzwhiFnQkz/
	 TZbfThl9Nyw3VuBOq5EZFMtFj537Ei6cGlW3KiBBDCCqbj+ZviQGlBHEq5HFUQrEC3
	 p7rUIgu66xreg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7362C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 15:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171492134283.2595.3225082566077138280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34280708c238dd855e904b207202a69eac8e451245ece30bb3ab790e34ee3ea3
Date: Sun, 05 May 2024 15:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714921342
