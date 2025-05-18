Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25717208961
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747607394; cv=none; b=kHzOqUWmz4gFeroFTWhRdvTjZLJ+ISKd0rLWYEdF4NZHrE08GfJ9ZsvJDXzJ+Vb6fnnlvb4jITFaxObMGOkDAPdG4BHFsbnCz5vYZhWrL3ljSCjhLQdNZXSCM2D3BAxszENL789cCiu7qGt3efALb0P7lInXz+VNINW4KVTRiek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747607394; c=relaxed/simple;
	bh=JlsrcS618qDqo2WEf0q6N64LPaieweaOCORoW0QYZhQ=;
	h=To:Subject:From:Message-Id:Date; b=mU/odDKVc4t2sNUbIyxkdhmVZvkEJW87GTGZ6loAsCWEsLFsPRmdKnJHNNqtBwo+XXTEnsi4CvfpZielEJFKtVyWlSCa9NRJgCD8EURTstxjREoH1egcjrdvTizz9e6OKgrGQH6ly4tyXjANlM/A/eoQb6JyoErwneKjaCAzEDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEOpL669; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEOpL669"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C4EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747607393;
	bh=JlsrcS618qDqo2WEf0q6N64LPaieweaOCORoW0QYZhQ=;
	h=To:Subject:From:Date:From;
	b=kEOpL669Uqu+hjSvqI9b8MOLpnCVHJUmIijQvakbsdq7YdMi+wpN5bDw6ZFDnwqbD
	 z/yBEgrYK6lA82sRCMu0jQ7ii4n3UIjaMxUf3J3QgAcqoC4pwpVY8qwUMNKUa8RdWk
	 sm/s1y1VALtqGdsjB2+tCxHul9dYC8AqFWuI9DCT6WZdg5Zv1X4/3EikY2iHXmHjm7
	 n+vVbGfh9YqowSqDXG6SA8wK/A+GtZ2waR04C+5OLdj51+m5C1u6wV5FjBs26NAzrl
	 0qloeCKt1FQ4wShVHwMN77IepAQL0u9hjrz7wY9XSutDwM7X0lMch1bECKLsnLxijF
	 6yrFkv9qQHQPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F595C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174760739357.24562.13313414136205980989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef54b96f59e3b6ae09b2ffc3c785fdd869dac8a057e5cf59d03843114bdc32de
Date: Sun, 18 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747607393
