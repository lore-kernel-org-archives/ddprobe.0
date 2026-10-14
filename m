Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB07483811
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792011634; cv=none; b=Jb4KbOEl8rz0hfQCVlZBzdXwyt9wCISyg8Zr5ZvmmON3AEl4Qknx9Eu105T8dStha77oN/3cmxXgKaJF2YU4g6QoPO9A5w1rESAcDMopqAgguTfv0gXj5N3WGgawNcJa9m0m15PQMGUFEfCuwwC30jj9kMoDYTZREc/4PTBAdtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792011634; c=relaxed/simple;
	bh=50zOabI+9je8QYriR2/8YSBb+71Z0ndWBDDT081zCLc=;
	h=To:Subject:From:Message-Id:Date; b=AlWSCIYluRXXMADB3B4kef6gCFCzgJ4BYP5QwmL6dcTcZWO4xWosskgJJv8tW+fhZ+mGWcztll9VYVrBMjxp5IqMVKzo8vbSr/8xs7AV7AKcf2HmnXGY+6YV+YtHIs0yxH3LGLd0u98gGYYKoPva+VmmBdC/k+DCcGRKVEg70Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouAplYHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouAplYHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAE1C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792011633;
	bh=50zOabI+9je8QYriR2/8YSBb+71Z0ndWBDDT081zCLc=;
	h=To:Subject:From:Date:From;
	b=ouAplYHuIHLxNRXejHOGT4h4GeSgEzFfwpZQHcSvjHXnxJaQ/GkkXbgGQClQ88mN9
	 Tr5CTYYsUs7U7KzGxnTz5c3OA1spUZQW/pSYJ72N1NUC2fh6nypBf1tYwXP/kfuC/X
	 WwwjbQU58DwRZ6SfOENM7vlAK0rjPsD+5lQworwwNrPE7xUmdOwNbrOoaVqfXUEHwD
	 t56ybCY3K7iszZu5a4i33QPkXC7klItYVPynPnfX9yG0zaAm5ZYZjidvVAaDlneyiR
	 0Fou7LkYtcsFsUEJNph9z+IFqVpfhR1xxEYfwU2nkc5S2NtVNMOBmWyJxgMxHrivbZ
	 S2KcaxLhHRxUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B57A5CC6B2C
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179201163370.30979.6879366845211410859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a06dea753a4ba51ef26cf7998490473385b92264d19e3dcaa6150f8be88877
Date: Wed, 14 Oct 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792011633
