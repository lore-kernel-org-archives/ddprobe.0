Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C31FE28C85C
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757165393; cv=none; b=bs4NNxH6+iSKQX/XF/8/4CgoheGlujdso3LaqQTc1qWmXZI9jZBUovVBbNSUdbFKFYC/DqWY2RrO2BRUv8oOClA7+BzsDuPkECwV7EK7WQN3EaO1E319A1nkaMMiQXi4Ss2oC/8Fc6kNz3dperDctZMV9Wo73og2hlt85+4bSvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757165393; c=relaxed/simple;
	bh=vR4ZriIgzpjFg0VmoMxmkaO823LOj0wsLMewjqiJZt0=;
	h=To:Subject:From:Message-Id:Date; b=iee2z+0NOmLUdjTqNJT0eM3mw0+t9NR+UoHgE1+I5XSt/9Em6Tbti0yJyhM40vJL7TkJQTzoM+eJAVlhlivHjwQKJT3tjwDbDvgtjX3sE18sZPQRsZn5u9QBRGtCpVlJ5p6TmbXrOozJF237BmBcNW8s3HsU0Ij6XKpT6yGcy9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oCcZhhd+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oCcZhhd+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A325EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757165393;
	bh=vR4ZriIgzpjFg0VmoMxmkaO823LOj0wsLMewjqiJZt0=;
	h=To:Subject:From:Date:From;
	b=oCcZhhd+WckNdVlljKxJb1vFGiVpbmW7av2OV4GuEDWZaXTZbxOFVYlJnc80U//qB
	 ktFWmSxHH3wtSt3dALo04Mq2/5a5Nu6Ce//6iVZ/bW8pSgvfbA1r1KoFXcDNYrn5G3
	 Sviri3THINSzIxd0sdUc/1hQk6lqq/vTN0J3GmOS0LsqTfj7C+Sk6fIKl1kGfMTz4j
	 Gk9L3MOe/bOZxyhauFPfxCUmgO54a0nDsl0Utpt1EZE+Tv3x6uvKGd6RY5OFfTm7Kv
	 5WmVFr7CSlZiYPeSnI4XNS4JYm+qSxYWfU6ZY7+3MuYDOyYv/EdNMd8awvp0ypIAAC
	 K//Eu6gWQpCvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D33CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175716539357.27451.6304796496558102450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c791c164f4506e19ce35d6ae679ec56e3b055977b8c0583cdc2cd0dee20a943
Date: Sat, 06 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757165393
