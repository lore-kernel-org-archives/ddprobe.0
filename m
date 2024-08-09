Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0A116C698
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723196154; cv=none; b=JYJwuAmFQXP/UWCPTELhBKo9zOKpayxd7LUeXC6SNcE/8KhSTZo5B40SurkcyWdDfemXfUhAeS+eqj0JfkXDrlqY5L0POEnRufzBDqzjxhZup1cpKUb48/+wkZMQ9snrnAkP3SbSA6++u7ip7LiuIXW9xbkgkKF92aaIxZ2OHJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723196154; c=relaxed/simple;
	bh=hknGw/6IlCiEoKtXfg4OUeTJdUMO11/p0aP0BnXkkq8=;
	h=To:Subject:From:Message-Id:Date; b=J9WNXd3ndQBiebLhkbcpGgHDLPo2reAjrmyGLe75mjtvjDOPoKOTPt+sfmfSRJd4PFmjGH7xj3Qy7/Ax8z9e3JsedT0mTzQ7r3zxcUZ+zP6Jn62h4zSOe3qMuLHFpcbU47cqUTzKe97GVKGeJ/didax8kevFcI9YAee9aYmjThg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ae+fBqrB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ae+fBqrB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A680DC4AF0D
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723196153;
	bh=hknGw/6IlCiEoKtXfg4OUeTJdUMO11/p0aP0BnXkkq8=;
	h=To:Subject:From:Date:From;
	b=Ae+fBqrBOTI/RRmw8jLK8PUhwClwqy7GZicJ1fdI6LhV3RDy1/2FVnj2GO3TUsyx6
	 dqxNPNvGkdmp/3EClL7fQcQEkVOFiZXw3YzJ0eifNLU+hEi24vMs+yXhKrDejp0l//
	 5QeKWsCVK6PR1JpRjF5dND27BRYFW0Q7LercXSNXheMpVR9KAhrACJPukuyySh2OLT
	 MFb2M/WjdRm2vmaqmd9Vtua8nvy4I0y8gCo89UozRmp+LzHLbLYpjhs5bSJyVGPkNo
	 7NqYNkF7zuXaSYYMGY+wz56Ilt/I/mNQ4h9K9Fhj9lOASVye4ZaNNsyrTPt4Deo4Kn
	 hfWdzL7cTdaOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FA6C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172319615359.22737.16907938007007189440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0336df0e371bb279548d527703ba9b5da897b357e49e273f411e44f80bb99b74
Date: Fri, 09 Aug 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723196153
