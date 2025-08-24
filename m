Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D990720322
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756026593; cv=none; b=BlJatt2znzeKWqvHva8rUK+dQV0YNkTBV7wjW6pDtYCnuJS9bYcZSBBTLONR6rA8aTmM010sEDiRCnURH80r2D520u496ZAGSuz0a57koxTemkeHdSCBvM4s2zDS7BdN0kOGvDS5nO6yJlG0oUhE35O4Emg9vuT0siounQhTUr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756026593; c=relaxed/simple;
	bh=6OfqmkXoInbe8mvNvEvRvgJgKrsj1uTUPfNaBfQh5Yw=;
	h=To:Subject:From:Message-Id:Date; b=M47XER1XssbuDvj6ZnVFlU4WGq1trz+4Rsta16yBOdikwthI9povgA4dLCR+RAHBd/HLZBkV/j8pE2g25TaXNVynW0/SrkWWQVw7HEWfx7yBmLXlBC4qj+XSJRFIfTOyxMFzCy6bFQ/6poNlX9dG07agXeEB8id1tZpbzdkzpCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alrqvrrJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alrqvrrJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02FEC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756026593;
	bh=6OfqmkXoInbe8mvNvEvRvgJgKrsj1uTUPfNaBfQh5Yw=;
	h=To:Subject:From:Date:From;
	b=alrqvrrJUUtXiSvecfpk+m5AKj+4lollASy8iRJWs9Jj3nvw+L7YbLK7WVzA9Ci17
	 qN7/pY/bJR88o+dngqY/dafzxZJBNBS9W6j6JOlgaK+49Cwd1u3mx53Do4irlY0C1s
	 jLxyf2WD1N5GPkgSjT6aZdOi3bBWTh7yMsNiybiQTnnSjm/wbGTQDq8N6TaW7s21Pn
	 EA81bHcWSCBbsGD7bvRiaj0izjQEKnmOT2xRQ86qg2BCEh+CB5MBfY4giYk+CI2HvD
	 BYeaV9opH9uS43ezVSa4IPAlRcHj5TJ528rDHpY9QArBMojB5gIceIfrBjhV8wpqQD
	 JdtYPXHq8Ds2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916EDCA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175602659357.26631.8911552284828982213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb0aa2e90739e2400f8d7822278d96912fcc8a39b3e02add96c78520fff2c07
Date: Sun, 24 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756026593
