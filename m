Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272D731A81F
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768638834; cv=none; b=sPFY7NLcZ7YBfxjAm1ZI3cLGZK04RhtOUK6bPVDRw0bbXRlplL3VzHTAMGyE8RKf3swGIT5Fc0XkHRIB48IL5UrXnIG2u0GMcY6mfy9vVsMJBEpIus+otnSh/BsJMd10KCrzyqCT1ev3iLQIooMFxlNY4BA5aZR+RXV6Ips+bH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768638834; c=relaxed/simple;
	bh=J1wAuEVuwLgM1ZB2s631ta232dYG0ZONNTbKxEt/vEc=;
	h=To:Subject:From:Message-Id:Date; b=N09QsEgLpfV7fRH6wRruhmePsMRaob9N/WPFRdoM91wGIrz5QVDmQVOf7wOb2hrforAzh1yzN606ovwbJ0aGVq/Glf+eUlTT32S9Rk8ib/I4rm5usEYVr26cLy9nn28fzpn3+W70VKcYk4uSxEb8wuea6gOPFd/83UVjeK0L/3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2zCZKTX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2zCZKTX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7864C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768638833;
	bh=J1wAuEVuwLgM1ZB2s631ta232dYG0ZONNTbKxEt/vEc=;
	h=To:Subject:From:Date:From;
	b=d2zCZKTX6rL0xgmRYhxGsvI1XIHjn5jpduEbhMW1DDYulaq6E5TQrJLZ3bQrioC1O
	 DQlgVp3sVQU5IHTrnmfm2O0qNgeof1fEqckHaY6zKxB8ssq97273ExcGWNGRwZnLbk
	 M91I1beDB4GCjF5IJF+mj4A6rp28rWhXWvaLNME7dnrngQkdyVRZhSlWBBhCnyrdH+
	 hdFsjGQwD3yiZjYUxRVYc1l4LZNgAvb5c7gJ5JoP8rND95v52eGa+zlG+HZcgiKbXC
	 Zt/1pG8L9QcsO5+LKBSB9gm3xGG36FMOdhLuJeYif0pkC5XsS1i6MfohDXbg0V3jRW
	 Y/F8C9dYl3XMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967C1C98312
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176863883358.3884.16762411074212402025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00170096ef7812918fe54d94a50db63478741d68f3f72d323137d27bdd8a189f
Date: Sat, 17 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768638833
