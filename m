Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A9F15F323
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725734754; cv=none; b=AADjsFPXNJH0ZSBBB73wbtX551dizQxX48LXw/EUx+2NeuOadvJhDGfyjyQ3NrkP3XJEWTazu4uT/KMWmCxdHTUEIXfvdAgHgPvymNh6psdcLa6R+z7S1tAxKqouyUOnzLpvu4EwRv74OWa79i5KSjUB7ML69+ePsN+ajxJMy7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725734754; c=relaxed/simple;
	bh=KXximMH0ej3MD3QmoNzujGzCnpmNzFS8fPTtt6ZTF+8=;
	h=To:Subject:From:Message-Id:Date; b=K3xJu7/owZu8QSIjyaUz45IkqUjvt10KjA0cMx/oiczCUXbfCpS2qpGUePWibVF1T8l4YmEm5RbUt6b+FI0QBtF1k9Il0HSsGXHQTvHHFu11bDKsQA8ISZYgZapwNAXs5wM9S0TVpZQUasMpV8p3bcdMA7z3mNUPxavGuHl0YIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRVbKfvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRVbKfvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EF4C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725734753;
	bh=KXximMH0ej3MD3QmoNzujGzCnpmNzFS8fPTtt6ZTF+8=;
	h=To:Subject:From:Date:From;
	b=CRVbKfvRmeT6+sjws3NjCAcSwL6a2p6deeJ1fQGGu05kgXzdz+GiEIHdE0YPwKkpt
	 TpnH6t7m8DSpBX7v/Bm0xq/ce1iA+gwfvUmP5vop32UnbPq87a4orLjfkQIioug6SN
	 9S8iAz+jjQMKa5gzZZkZoL7l27UxPBkeCaGar5sNm5GsbiUJcuV4jLTWROlnK+f4WD
	 OSHg6iQUNB5BlTqh6Qweo2WO81V32A4YXd9lTNq1H+8+c/3vZj967JkNVTR4InxFfC
	 +3dyZ2hyq3tTWowzHxNoxvPqdR73zvaLta+Fgc7KX7EkLu29REQo2CVf8z/QBCbFpP
	 sS5h4SblRBZ3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D35EB64CA
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172573475359.7442.15015234643734543036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5b0afa1fbc90d044e08c7dd068b374e56e348fefa216c4f55334a79fcf175c6
Date: Sat, 07 Sep 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725734753
