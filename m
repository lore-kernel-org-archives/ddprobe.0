Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286942D47F9
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758224394; cv=none; b=L69xnCG7GUm+7Ckd1Os36UfPWwdhwOtA9cSiRqJHQ4XFAjyRrH7Zkdy10ilVGBrn5ZugyOOGJ/oCyxvldQF1d92hkbOloD43B7F3THDLAt/zGjxR75L2hCzKFIdzkLK4kVnqQEis0PHRTIDCo6K74jIzFQwrdzn2ZrF2h5Hd9Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758224394; c=relaxed/simple;
	bh=iLfg9yixa7OJn9veqD17gAmKj+9HanhuOV4RQmOC0o0=;
	h=To:Subject:From:Message-Id:Date; b=CW263yx9FRTrizOioFHGPx6PKfAQ94nAI+OhZ9cFo9M0kBIN1fd1Cn/8+DmWOO1V7O/b2kBHXBOYmgjr4HA2jIUqHM303W//PotbrJlaKLROmBejHmj73hkenmArybbpL3uEBY9QZgpJUOdlHjnJPyKM5VEUuNbKh9M8Gwbz3ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5RUF/9H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5RUF/9H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FC8C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758224393;
	bh=iLfg9yixa7OJn9veqD17gAmKj+9HanhuOV4RQmOC0o0=;
	h=To:Subject:From:Date:From;
	b=D5RUF/9HPpIfIZcLuixZ4G8Ss7hV0jAAglBJG+7D2N4c6MrZxXvxIozjVyl+0jIH9
	 GS5bzT9LU6ZdWBYn3xo02zvwZ1VvsmUXd5l/kaPMxMNq8QIrskVLbkDY+eD0oCTWuD
	 O6GOw1rHLQDWWwioiXnfhtIy3ZVrSM+lGVXxJ8otaOERkbam19KJd+HR+OadumP1El
	 YjleFHaUsY5PO2BbbICge8BfVcebO8dtZW0fIm80lmYPDJU/ZorvzwPQRojmRq2Dds
	 3RmStbhBJUXdn6kvjxZa2NqtdWhuocaarUJgVTEclDDXfgZQVVXh6ua9HRFy2YpsPR
	 1RLkO8DEDqZJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FD5CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175822439358.12438.913033729121032388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c6b8b68d62a94b804656d080651aeda91009a6053107cb98efddd108f9d76f0
Date: Thu, 18 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758224393
