Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F2878F4C
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744574994; cv=none; b=A3OZs8z4oti9g56hHThCX5QHC9q1PlELkXxUCu8F20QVa17qweMp249sqLdztZFE/8UqD4ZP7EOlDrUnVv5issO1jmwU89ZfrY0/KU8nJNrtUniruj7U6chagHu8+9MwzfpN2BCpN4AcwsWC5vAjCHc87kcYMBM8FRmnygN97Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744574994; c=relaxed/simple;
	bh=0MZi3vAy6N9Uouo91ZzhzxhUtLN/NaJLAw6xe8xoR48=;
	h=To:Subject:From:Message-Id:Date; b=FpjYV+8qFvfZIVR///KUmBcv6vwtL8VxOrRbuggf95w+a/5ShuLjm7r2kAndN3xeiuQvDuJqd+Nj6sS6OXoYqlx//On+2B46/lP/d6LUCk9NG7tx18/4Lg4PCaKbBlNlumwNesOA/+bRXqFV2CLhbG+oUT9QDQ83WBoe04K1hDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZxCW6uF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZxCW6uF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78CAC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744574993;
	bh=0MZi3vAy6N9Uouo91ZzhzxhUtLN/NaJLAw6xe8xoR48=;
	h=To:Subject:From:Date:From;
	b=eZxCW6uFOVGCGtaZwyr6w2V3e9rSdM/k/Bi8BhVJCoaa35sR5yDY6lpSzUWmd7WpM
	 0awrFcwbJ/hrXgfgMfIOl6OHzu6ezlzsnVVPSIdoO9ijEI+Bm8Y1fFcym527WlJs09
	 KHsFK2rA5Oe5vEhNQDl/JlRDbOfmgxsbsvkwyQzZZtKmsCnp61H8R2T8TQU9pwIiC1
	 n8wZtJvmqpKOve2VgGmGMhvB+K5YNzGZmGyuWOkBLabeD7NqfGsRnCYOJ2qck0uhyq
	 oBDCORugrZiGvnTKCm9xvPNUH+wb5of7rbYn2TMyXRLCoZF1ny12tmJq0TTTXsGZWt
	 K7iP24QPT1UvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A00C369AE
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174457499360.28770.5082786711851754403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60a98fc4b7af7e011065d285524ea5e69164de592b97ea094a6f8dbe4b78abc1
Date: Sun, 13 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744574993
