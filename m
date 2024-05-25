Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A6A83CBD
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 15:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716651863; cv=none; b=kRY4T9UlZZKieIDLGXKBOWTA9Te6FuML90eEGsBsGHgrVYlIz2Q4Wc4TGSb9YyyLwlYJJUseQz/5RRS/sVrdXEWyTnpcdSxNYqdsVKrTJnJoTE23vhOiD24R6esrrJRIcWWyNVKvTie9R4vauVCc0YvLp9+TOq1QiRt9iy3HB5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716651863; c=relaxed/simple;
	bh=zkB7eXij/UUPd/M43pHkUbPN95I42ocngj88iogxz2w=;
	h=To:Subject:From:Message-Id:Date; b=MhGlnbjCbs8M3ssoMZNcck5DvdoKy/NIK75V2zxsoJFnJmt86v7mhNNaY+anqVuW/9KsDlh0k/25IthGuvPB1hYwhDEObxfsa2WEE4cjvjJTekTdphUFdCDElHJ4JBXtV8fI7IeRHbCUufY7qe8RqhVib3xFPF69b5qAWiy5qUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPot4ZVR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPot4ZVR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2498C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 15:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716651862;
	bh=zkB7eXij/UUPd/M43pHkUbPN95I42ocngj88iogxz2w=;
	h=To:Subject:From:Date:From;
	b=uPot4ZVR/CRtKK/LDwsIorvJlQ5GPI/OVd/9qPErwcwpt9IwI1uka8oF2s/lIuFV6
	 sNElaJxwusBUdJjqvtyeCX4mAZ6dUXUar0p0kH8ovPDTTRB+bKgUsRtc07KJLwG5Xb
	 TA3yvGGYCcEZAlK88Odq2Yf676DEQ86bO8khIcoQ45wJeu1MstJRvcPwuQETkdCtEp
	 o1RGJUD7LU0jjffpkO1QR5mTS0GIg8wdtmFRPzA9BH4EGYms8IPCKYb1exU9svZkLB
	 m7AtqmRqQ3phS9quJZsOJZcYleWOYuGaceKWusH3KPQNxmk+JBYieA6wrStI1pkVA8
	 PYQ79HM7zmLaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB759C25B7C
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 15:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171665186280.19737.15416868960881069423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 069fc7e6937b60087e7bdd0cf9011288ab4a1584a194ec4166824ec7a2197ec4
Date: Sat, 25 May 2024 15:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716651862
