Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276371D555
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733727354; cv=none; b=XoCaYn7ZN66sKNBIx6qIqXHygrzjccuAABx1HfZTYQwTkdUP6x2JUcj5qV8OrJYp3OUzwQdCWPFB+222qVx9ARGgrGoNsHcBydqkVw+1RRBrerZvB7hGBVBSmV5NfSQEnqYZEgZunU+tjAOQwZ7ddKezZjuW34th3otTIVMl+ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733727354; c=relaxed/simple;
	bh=NDe/IStkLVaKYCf7qmcieHc0hM1DEbGzLtif95IDthA=;
	h=To:Subject:From:Message-Id:Date; b=cL/uwThb2UFkbQkdICHQZXcshZ0t/KT3WY+Hb/ejAx46NDy1Egbl0KO2aO5qX1s2iQXgGIXIp5XnqcVIhW6xrz4Ens2vkxE2KbrvmNzwFLa+rNvub3jnvtxU9UpeKp8g5Q75sBjlZJ/S4iBzSl49/WVHST2NE9KoyRu1qKXxWD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSw2GZ4B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSw2GZ4B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B184EC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733727353;
	bh=NDe/IStkLVaKYCf7qmcieHc0hM1DEbGzLtif95IDthA=;
	h=To:Subject:From:Date:From;
	b=kSw2GZ4B7C9vbFPpZPX3wkerh9GSNJ5/3Tt3/ajg1OoSctXgmBQrX1GHiKarP1PlR
	 O6/jKP96BhXSaZKZA5AUJ62D3JZKeuGND3sWV3tOoYCS1G+64V5sIDWJQZRgeB5ge/
	 jcuyDo/DFrFvNywtMsb+J1OQgxAYp1Xj3KMqdboV3QKi4zQwOt68Ky4Ko4lQDb7whv
	 WP16tatlch0hC/yF+2Y/DrZXQCFmx5HpQavJlRf20k1UnPc/xuvBFHRd7zlZJCCC1S
	 jmcHtlhGoTaGFZR2LQaEoz9sC5to+WTvpcDlGFt4TL5YXJ0nKBIOxByVRyTSxx3/93
	 59W7q6ASzp1cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB04E77173
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173372735360.29722.13734480090112162174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcb83e9de990e1129cfedb5e9b63b14870c26ff496503474b8cb8d76c79eba2a
Date: Mon, 09 Dec 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733727353
