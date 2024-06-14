Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659BE191496
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 08:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718355503; cv=none; b=SN95UFhZKO7p7wrnEZvMMtdTjNlpXPA0vHozZwZ2Vb316A68OlEsaYlL/ovz+5Y/meA10LHXjPBA7sk5l71UY7vfSWCY6Ty0BXrVK3HlX8sVvb2Ech/ALPR2eml+FUh5AAkeM9uWQA5ZaaqH17rxqXxZlv8sl+c/fLsZlt8JXwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718355503; c=relaxed/simple;
	bh=HFAAxjfQ38g/HRYUXo/7Sua7j/W0q+qHT7M3Ms8XDHQ=;
	h=To:Subject:From:Message-Id:Date; b=YygzvOgS/C1/IJdJwqT8OgCyiauxHHoIItG7aEBdZQ9d6iefz3f+AP3OsyUZdlI4QEZgeD6TSeeqTH30GqqUhnn8wWom6MBaJ4kcI8VhvxslNrYjts1d4xreZTvZ6jWWXHKAyIYOZCy0P+sbHLF1sventhHX8vQmoEiHNI4K6zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDyxjO6d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDyxjO6d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F76C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 08:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718355502;
	bh=HFAAxjfQ38g/HRYUXo/7Sua7j/W0q+qHT7M3Ms8XDHQ=;
	h=To:Subject:From:Date:From;
	b=bDyxjO6dFVozUtIk7VuV5gfDOd5TtwUbtyflWvFVhMyKtgkqzIbbP3yPE9ouUNnM0
	 Yqi3ucavEKrJJczDOlq03xn0xKY7LI/FSbOlcfI+pNP9F7UEDWB7f3hQJFmDcfwPNI
	 xmu2KwcF/nDRZVKLQr5EyrnmI9etQTDL35ov7YEh4l5YywHW9r5I/33vR4J7HkR8Mi
	 rxn7DzN2CXf2fu9ZreHKLsXUWDTBsvEw0GeNFR+ggp7UxTRRlO3behwffzTClTi3xK
	 vxNgYhQ1Oc3yrQ5+yD+gJAhrD+ZB01cyMw93wJW7fb3H3oJsXQhwq0erx5VPwwmUQh
	 awo/5gQIIUUEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A34C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 08:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171835550279.16091.8697156435673252949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01e24c6efce1171326d0b832458dd1fae3e30f21ae5047b9503bd53bd46c3cfa
Date: Fri, 14 Jun 2024 08:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718355502
