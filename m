Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E2A1CD1E4
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769288634; cv=none; b=oQKb/q/2WlHz6My8dkweL9Yz1umf0Iv4CD+NjFqghatKo1Riqk07Ic0RQTwf0dJWCw9cpdrFtWqIGoYdMgF9TzsmprnVebApYqj4C3CUZe3pIyqP8tQJo5k9jcqQQwAlfURX7BfcfJQ8c/6ldLOOCwH/SlLJk703rWH4OJ1XexU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769288634; c=relaxed/simple;
	bh=5A4AFZe3jR9P5lhgWwDACDdpYKoHxEMTzylQZ1jPRLU=;
	h=To:Subject:From:Message-Id:Date; b=MNlcIH8o4PkTev37xnVXMQnrp+SQFAZooEsblkMYtHClfwc7CpA/j4Jpk9Jf8lt8Oec0pEtLotMfknmHzq9DhrlnB8TqyhuKihlKDrx2YGC+VlCkMhCSa0vSPmLAtlF/MlMjcR7TsIwZbgSuUEnfrjuIAfgMpCG7O2Y2xzRM9dA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SiWsc+wX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SiWsc+wX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EAEC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769288633;
	bh=5A4AFZe3jR9P5lhgWwDACDdpYKoHxEMTzylQZ1jPRLU=;
	h=To:Subject:From:Date:From;
	b=SiWsc+wXWoXlu/95UgWmmelLBky4KSntCl17epW0ERYNEdPy3mAduyVLx6mYkO5Nz
	 m1o9zbmIGyLT0A0GSjmYiOvjhrP9w4kfn4A5JU+zXLUZRAh+KU/0VqmWJHPYvloV/V
	 Z7QpzyI2qjoFtKQQEGP5YkBhCNDMeV70qiR5YrfJM1fH+OK9UUj9OE5eEyKCrLRaVn
	 PrNMsFYr++YZ010fkSoKZ/ASbooERqdAjWqGIQDXGsK+tgzr7OJsUnv7aWKF1yQ+Nn
	 pTP2XdtQJjZshjMlgLktRs1amnDMUMAk6TOutA0ujeznHQEC0Ngwtjo+ZHtPg/YPNU
	 tX5DkM04oJjhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F519D715FC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176928863357.11041.26639195842265187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2455acadcb776d62c81f7c4fb9ddaee10df8f0dc19c3cc97856dce3c4a02204
Date: Sat, 24 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769288633
