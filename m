Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F4E2DF717
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791218434; cv=none; b=ST2oc8g2JhSb7DniAO/l0qhA1zQYM3KQfXhYKjk5fG3GuJzOA3Ulc9u1JHYxIwXAlqnJPuzWLa42hQq9IwZXtKr3GHnlWpT9e8Fz6hnQgBSU7OjKx07yAdLrHvJZSAaJaj2EDGvVq+eJkCAh+/TqtIIaI+Fca3cmrn6TLaBlVY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791218434; c=relaxed/simple;
	bh=y0Pcvor4ukdXu9SOQApgTldNN+ncgN8IEN1BNQ6CBHA=;
	h=To:Subject:From:Message-Id:Date; b=DIBrL+whp7TYTOauVOpj8lR45MkcnA3jIenEk7ehRhw3eFmGm1zAwL2DAimNMf5M1tiBQY0F9+qMZiU1d57VuncGG13Gm+njtQAyES1oslaaza2rV3uJqiT87zK1PYFNh42qd+yE+cE93cGhuVCMu8mw62gNCo4bsak8IE/8jQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9VAAUvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9VAAUvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0548C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791218433;
	bh=y0Pcvor4ukdXu9SOQApgTldNN+ncgN8IEN1BNQ6CBHA=;
	h=To:Subject:From:Date:From;
	b=M9VAAUvF4hZ7bl85qBQOUbRW8pizmPdwGwfZ9zzA3TAcrRcZrJkp41ZIYj0SmYGkP
	 4r3X5uoJE4O3q/tACxKol/xIKhZ5ryJn3qcHvK70HrI1EBv06lxXecItzYDVFBr1yE
	 1osE4Dugv2+l8AImMXF1g+fEuU5oMDTKqybWvyDbPRANZQ4LM5onR0xWZ217/wxl+e
	 hvyVnAzOeJhwTZh0XZ9TjZGGzWOzZEqAOOyeqloQ+4alFI4pYfmnZvDj992xxTCrCj
	 lUVTVC9/AnTMGjQQpOQK8DBwgU7O7o/qiqtO4yseKp2g99zCstVzNuW9iWh5orECYK
	 8RJCN+IojENEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1AACA5FFC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179121843369.21542.4625347969089591259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ccab92c135a9dca89f5c567c74c153c4d50fee52c995c90c3afe000e340ac48
Date: Mon, 05 Oct 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791218433
