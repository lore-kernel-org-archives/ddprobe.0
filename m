Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB2238AC65
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 20:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780951474; cv=none; b=n3ruy/GZqJJpsVTLeC+UKgw2PA2im9up6uo26KAlwMmN0Ql1ZcPj7qooT3STeBUfnzHbGVww7BvwglhLXYexNhmsT5cr5kIgBrQ1TDMpHCDeG5intR7F6VK8+kJiu16CER4h+lVUb5CYL/RdkShABTIGcehscoODULwb56pfjL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780951474; c=relaxed/simple;
	bh=kIxBunRwyOIYlA31P33ZswGr5XtyV+QcVLKSE8l6A2o=;
	h=To:Subject:From:Message-Id:Date; b=HpfkcpZN98azOxzQqeVgovIhoOv6jeJ++t3azHzS5aBIkZpOa2if62d75nUxHt6y5Z3v9bsX0Npl2X8oC0XaPPBxf6vadpxmjWcGs0NMY6vPM0fV12ahjceyObmHZk0MhyYHLHx4OKY9gW/LJ7Us5JuSCzncYRex9eYnWWI6gwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXu9SOkp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXu9SOkp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39ACC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 20:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780951473;
	bh=kIxBunRwyOIYlA31P33ZswGr5XtyV+QcVLKSE8l6A2o=;
	h=To:Subject:From:Date:From;
	b=OXu9SOkpQFhu4m1qHfoTbqwyru9u0JM4i6Tq0TPm5fj83HY5zzJDtmIbFSu/5jw8t
	 BcAnxqeQqkMTOMMWC7i9vV3Hkr0no3AS5EV8wRycoNwdu6BOBR5a3MGWrVQvf0TFNn
	 IBkCO/4Cg7vCnzaYtSIslCl6SWPwrEEL/SRJ3fdiuKiPxyuA64SqVDlQq1rXPIchl5
	 sEvvGggmVzNdNiNgUk5NUo7tGdKEu5fxsaCq11gG7wgWoo9R9vc7ij1VGjJOUW4vyb
	 KsDxtK8tv+8MPYaaseZto7Jz6jnFalEtyea7Qz/lnn7hhCuQK7Bak+5qM0Fi3Akb/M
	 3BHuZGnj23v7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4710CD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 20:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178095147372.10256.7859850515921434678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acfe92c9996dc94e0210597197eb742966df64634d13d61993314a27b456518a
Date: Mon, 08 Jun 2026 20:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780951473
