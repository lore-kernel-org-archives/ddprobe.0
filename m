Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C59185944
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727385954; cv=none; b=ickqRJsEuEeo6TC4oCuS9zEuhUGZgAeLGO5eSyo3YSw+LBpSsD0nAGta3JwdLEt8a43aEA7T7nnboV4qtt1yOj5x3pOAnF99l0KS1qU4LrYsZXc5xjlNSbyQ1dxok85glCMToeMd6DAyH62gO8pCRX9dG6qzq/r/83Nb1q5ktSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727385954; c=relaxed/simple;
	bh=rQpNFs5XjHQIEy13JP7nkoiQqm+DqxZ5UqPjtBkLGDc=;
	h=To:Subject:From:Message-Id:Date; b=nIn0VZ9zv8Ua3SboONbiVPsLwTCUDhc0l3q5Xb2gX+ZQSMFfWOGK2/jsSgHqg4M0kDJeICxfjAB6o40P0GWN7H8XMgO7TsUmycROoTb68RctN+2ZeCnSAkGJGUwy60m18l8IK5SsiQyTjyE9J3vyUA/WQP6Z+tQb1CHf442tJfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjs9d2Wt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjs9d2Wt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD30C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727385953;
	bh=rQpNFs5XjHQIEy13JP7nkoiQqm+DqxZ5UqPjtBkLGDc=;
	h=To:Subject:From:Date:From;
	b=fjs9d2Wt+Efh0iYzLYvYHaIpSno8JpuhUx9x/LOsJotnjJhzPkUvCGx6x9y3zs/15
	 NiqSTfNogOV08M2FuOdLVpgqYvooDaQt6FgDE2UzpebBy50GxiIqU/DMNN8e5qRH74
	 Z8lpRLlEO6Lyej6rHcMPhCHvVGrHHzgV0ACbw9b5sN4h9Ily8G5NgyWaylHlDXL8ib
	 pX6xE+y3xRmQYZLhWbmmIOyDMSQt643LJ6HReDRYcJZjJSbtjbs0XpLKt41hQNH/YT
	 p89UIsNPvHO9ZY4Pi51UqjZUn37FQ01amiyZuKOKy1C3hULLo+4F8vCGVRZBpKT2ZM
	 dIiz/vYTxXW6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94720CDE038
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172738595359.32721.3215196137511979690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9788464ae2f7bcc884c142333bb0d92a6f0b1f008e08ad3ac68aeb8966709cd
Date: Thu, 26 Sep 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727385953
