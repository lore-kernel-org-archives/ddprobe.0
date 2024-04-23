Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B0913C66C
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 16:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713888623; cv=none; b=YU5+nDnwJYztPq7Bt6dPlD9Q1s3rz2To/09FoWLNhs67RP76oqkjP39tW7VHE01zaqU3yXR6XeZ3j4jofwuYkEg5axZdJRFxK0nSvpXcP2Bgh7wNWSUmeQ3BZNy9OngxVVVvjMTvBLH/hmY1qswC55JQJu+4DOYQ1OSyqjIy4YA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713888623; c=relaxed/simple;
	bh=igacdV4ZBp8ZFzEhI2bEhmF5piIt75Xw1DC/aeRLrlw=;
	h=To:Subject:From:Message-Id:Date; b=mkCpL3rskgM1lkyBv+oJSGswnIZ2OIcwW/lSWYmHqSbuGeLi+sqkEi0gHxNLB0WdRz1IZBORkN1bkLrCNNo026Qxuf4VjlNEKey93/JPkYimAWA5HC9xPl4+ZUI4y58fkomokRIaciMgOa+8YohnEmoNoUF6OJqVzHoXWNgYDkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=saPgZUb4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saPgZUb4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8C5EC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 16:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713888622;
	bh=igacdV4ZBp8ZFzEhI2bEhmF5piIt75Xw1DC/aeRLrlw=;
	h=To:Subject:From:Date:From;
	b=saPgZUb4nLdbo9CJyNQ4ZrYUeeCgtTzUW/NvFkU9xbhmDLjN4j/8/iCcfcfOiCjGD
	 z8aENKx40gha+qDegl2tZuNst8n2zL6pKokEt4JKjoSDlqjX9vXGqbPR8kpZKgIkz9
	 h4mxo76MfuZBjEVtIBF+82dAQdzl5TR0aQOkGxwmjtxHyFkPay4UxYEYgMdXC+Cjm0
	 Nsy8l+dmjkMQniXiZyb6k+Yhrnbs4G/MVZ1zw8CPHI2LwaETy0WXybQuUQxtxxFlgG
	 Bc0iHfFMJW3QgInFyOVm1j8k28J2ebovJJU62pkFjO2qG7cqiuY9NQm3aAQhAm92yW
	 341MsevptKhCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD790C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 16:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171388862282.14250.4532609342009264866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 743d628dcf9095c0e55b755747aa859ab29f74ff0a88adf180d7d751cce36e65
Date: Tue, 23 Apr 2024 16:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713888622
