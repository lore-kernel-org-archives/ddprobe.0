Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B6734D3B0
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762235394; cv=none; b=ogmVKEWEVIC1ixpSbZ6Ei48a8E0IVP7kTuvClAemdnenXu8evgoXaYDU/K6ZEBqWBzRH4dZPK76kIkaFF7nY6IYX+8xVgSzKF4JvVidblj0XDsPjaJ6UsouWA+gR/t4rAFSwm/WH908F3d4IFXP+VTtgesTicfN8n+Khln69bE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762235394; c=relaxed/simple;
	bh=Vak6S7kCZEztaBjjtcZP1I6Qe+qT3e0pEkB1JyX018w=;
	h=To:Subject:From:Message-Id:Date; b=jgByAUxm6dx8cvCHenXGpR1k7GZVTsAxnpDU7nA769E8j+R75MfphLlUZFqyTSYphYYvrzLVZ1EoBPH1U3bXu6mC/gVVorMWn/14zYihFKF7xjaal2Yyzad9ZEYRWv+Pq+3xqVFSr0wmipxJsfRhgrZQ+ol+ZvTdKwNTjPl1o+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqRqdSYq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqRqdSYq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7824C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762235393;
	bh=Vak6S7kCZEztaBjjtcZP1I6Qe+qT3e0pEkB1JyX018w=;
	h=To:Subject:From:Date:From;
	b=DqRqdSYq/sNYnXmNrGbRXpBTlLW1Zf/WtCwgxovJC783RpX3bqcZtd2gHgOI9dRf3
	 j7e9dUwh9Ykp9LfXlUD7cpRllaZBfO1TbVZPziRker1TqUaAa37d6EFoFkB+du8rSH
	 1EQvoMpHEQQpmEJDcKHhrniIBqQYFY8cbVnxmc39XbTDG1r9dGw7RMN10oC/ywiCXd
	 pcn7wbJ1uyHfwh6skp7ICbMpo6esUMnE+aia+A1hFPiiN1/L04xVPmM7VxpJyhydOz
	 CpNphHwmfy6sDlS5V5HaNg8x8GuQnDeimrI+KokC0z1jFk3NNuOXaL5i+GVa75lp6g
	 KesGrX830cIUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FEECCFA00
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176223539358.23160.12513127592054681701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 104bda4f43a0df44851b728d365109b2c7ab94e58b25825917553f5ef3421992
Date: Tue, 04 Nov 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762235393
