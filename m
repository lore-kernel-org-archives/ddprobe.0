Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353E02701CC
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752047994; cv=none; b=O3It1PwBgQEnT23/qQpsl1HmAZK2RlfRjG6fHEYZbZVvkbPijpn+0UB4D49UtPGAw7JQ1lMzA7g9vygLNOoGEvB4vGr33sGxWjRKHnXvaB7aOzSvQUKgbCOimWLgOS8Vpp3mT191AktubMatL7M0HETlHNK9TYtRmK0qgB0fkYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752047994; c=relaxed/simple;
	bh=UcFL6d0/gUxmmVHerFhIkAomnriafOQ9zqcKvr91YLI=;
	h=To:Subject:From:Message-Id:Date; b=KDFd9yy/6YnnGl8Hufdu8W9rFapNxM24fEC11r24z3RSeibqV9PhGS4x54Weu/Nn+WbgFWFQHO626u9cU+Ok6l3R0fOnw5eT1hPaa0tLzoH2/t8XdT4ERaGH4n6cy4LJ9ilYbI1i3jlp8N9srz/xwyQ7ww7eqXLeYN4eT/uqi3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngpvEQa9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngpvEQa9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2023C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752047993;
	bh=UcFL6d0/gUxmmVHerFhIkAomnriafOQ9zqcKvr91YLI=;
	h=To:Subject:From:Date:From;
	b=ngpvEQa9MKJEhTNcxCvcYNJjXIa2ig+ogj4qjfDGQJlLIxsmX3I/t5zuFUZyS8lbA
	 ynA7K4HgnGDc3Sf37LfynPxmtTWaHSI8QQOQ1GA0yFVJiKrOo4YwRTlIVWnIc9rVR6
	 EaaoCrzzKSMi1KuIi0isdBmOQ25tsWAJPoWgCvutM76wcaV+1c9PKasr3o4vD7Sjy9
	 MwFwcTjAzaovPO/4plFQUnc8eSRGIR6ZiRmD8Nx0hxAHqHKHcADmL2nMYMhN3447dt
	 jwisJhvmzob7H+VhptPmPs9vfbN+AU/IB8EavFz9DSghsguF+aLfnRI1wQ1R8fmNrj
	 fSOsOfdFTz07A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB72C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175204799357.26430.3068390650237650138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: accc3e77d31d6b37802c3c9d000e3fab0e52f640701db9b5abdd5b395e30b74d
Date: Wed, 09 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752047993
