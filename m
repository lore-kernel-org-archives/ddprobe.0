Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8FC3314C5
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770434634; cv=none; b=Z9zFvueNMByb72gSqTIHPqJoVLbALjs1mrOZHuuF+MRFYf6GP/BG3G19uKHbH9DqWiy96sy7+XiTZUyyJe8iFv1ghI8Flejd9xFvyDANGJoyMjXk+xS15KQ/+X9fqO1NajR9q6hoHQo6vyziJHTkjTzAIRUeDpyHOwXAktZZxt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770434634; c=relaxed/simple;
	bh=NBJzXHuS9e4z9/CDFEU3axmF79hcg77VIKl+COuH2Ec=;
	h=To:Subject:From:Message-Id:Date; b=ih2ROgL1O4N6v6scWM8y32M6Cz6ntS37/uRn/L4ttnRF7tmlt8bjsZJ9YdAKFZB5iNQbST6RJrm75+ux5cicq4S7ya0kP1vx3SP7I7SfDM9ck7HLbk25ZDs5DJAFMA5194z9Zi5HZJN8YPwLGtCY/rXV3N8b4ehohsf6sRhAfbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imgiAtZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imgiAtZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8084C116C6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770434633;
	bh=NBJzXHuS9e4z9/CDFEU3axmF79hcg77VIKl+COuH2Ec=;
	h=To:Subject:From:Date:From;
	b=imgiAtZSie+g05641vs2jkIHgz/9xOvoo3ejffTgk4zAMOhuTiKxwaWMaOEfTOPWx
	 jb1owo3uLi2miO8hFR6KlSngR1QbnFdenX9fxxrWVfy1YXrBMUCUQSk1k4afRILjcX
	 Og2OEJYBHynUVm9vjW02nduO3pxKIXX6wQiGamKsaVof6Ekna8ybnNmx46xYSnnz0k
	 f0glzDKWiD5NViKxzCQstfAfrJY/xY9O+yZFVdYryUwIm1+saiH3stuwj9FE/n8zsU
	 alnJNdoERrFwm0zWaPV8KVKx+cGCquVbSxw3171UwzrAw6u6WG4XmhI0REi5alTzzZ
	 mE0XLF5HUmahA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98057EE6B4E
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177043463358.21449.15709688265989669111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c2b22e34b2ffc99eeb253b2364366fca7e4550a50d6d03deae24f4e5e8a1eb9
Date: Sat, 07 Feb 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770434633
