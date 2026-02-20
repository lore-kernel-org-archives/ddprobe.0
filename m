Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2137E327798
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771580694; cv=none; b=qnpmFXziRFYbqe1b/M8RXJ/thCa9V85Goc+uXdZyFqnwbUQLGHPw/fWNc20u497HbohFVlTOEioqguNBS4A0sn75aMaXhRfwgWepbCOu6JL//uXkpHhMUxgQEKHzGTI9skY5dn487qwNvys1VYdGYpFHjyuh8iVit5J5axOhhMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771580694; c=relaxed/simple;
	bh=2UTsGArv/jNioKzfCaB8rz0KlCGX1ccGH7ZfJ8Q9cr8=;
	h=To:Subject:From:Message-Id:Date; b=XiGJDUGiVKHXpCw62s5ZyL1Txtf7FeOm7frrvUkLtet+nfubpElloP05eFzz//H6K9rU524Q3T/6GrW1FZaVpVwyifjdyy4w5YSzQ0eZIGp3/gjVgZiCNzRjiNt/qJ7zfii9E47/QtoBL1A5Q6aNIBDeH/wewrMge4wHQW8zuJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fj9ZeiF5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fj9ZeiF5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6235C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771580693;
	bh=2UTsGArv/jNioKzfCaB8rz0KlCGX1ccGH7ZfJ8Q9cr8=;
	h=To:Subject:From:Date:From;
	b=Fj9ZeiF5UWjv9erHP41u+EgBn7PjhTTcGSEoRnsV6jpxNzseqwn5tTNEQ9U18yXrH
	 CEFPHV9iaw0BzOD7eYuyFQN0XZix5rpv+3rbl9tlPOw3sWXbz45SedH8WKjgYE5S/M
	 ucZ5ByYtICcqC8qV9tHUSr/bfwYaFRhhf5YmcGoBK+nahhgDnAajM3N+tovVAh+uJz
	 Ndyk/UqTcZmHRproYubeu2aRfxL6bmLYSyrF3TJqjuq71bkMYCM+UdY8rL7NOK5UXr
	 jczZ6Uvobm5Y8umN0rN15q7+NXK3yWjdkVPLOnJZTkQ4qoNWzcqMeOwgEXuIzlTgV/
	 m6BjBi+c6eQgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FD0C55175
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177158069360.3621.16824553213459951067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6da9c0e38146c7d02990bac84f939f79bf01e6657be5b1afce72f9b6da5c66be
Date: Fri, 20 Feb 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771580693
