Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E809299943
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776836254; cv=none; b=LMpC7KsWQoWbDmcrmIeF5zC1oJ4yrDtW/JE3iqEYcrWxxztjOXCIBwkdBAMI6yyyR7FmgghKKLpgm7pQOVzNtNZqOpoohXGUNeNerW/05Kd3Bv7upxsPMK7B09c/Zo/7a+Psf8pxYEFapEFYgJkOMcmu06ssS8cE4nfQbd1PHSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776836254; c=relaxed/simple;
	bh=rNHdmidpSdU9qBGNOIgPYrpRRx1P4g4Q6hDm4v0lcXU=;
	h=To:Subject:From:Message-Id:Date; b=OOqPKM4z4qqXQjRi5wau2LGa0CEwWmC5Y2m0iw1ElrZkZymtbkpMdLPTeqdL5HWuDhblQmOM5xRju8KS5dlp0H6icnlS1hpVUwkTaCHeO4kSGzlfKyoVrNYtAjqI8ALUl/BZBvW9qEQbV58gHQZT6ExCIGdf8/RgbZYmjJ6azhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmwAW6HE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmwAW6HE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F1AC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776836253;
	bh=rNHdmidpSdU9qBGNOIgPYrpRRx1P4g4Q6hDm4v0lcXU=;
	h=To:Subject:From:Date:From;
	b=kmwAW6HE2kzcGKHlzCSHUPLXNJSLG5n+FMWxRgcVx2IMxGs/rJSk72uQ1Z12CjtrT
	 G9IDiNEUupmLt7Nrt8IpmGcvyvd87Ly3vYiAQJb2lL1g9t7EYpIaB6u3wJxRvxk0ck
	 erJ/di5vjr0TYbnDuv/aQxjlRU2NPwzHsVH155ggT2NtASXEL/ifMhEZSO4V+cLW5d
	 sqWPBU1Hv0HR39xvuTRbQDvHMv3ltOKqyPas71VaM97k9WVe0of0sIv5JOuU+hSM/8
	 ABjYjwQQs4e1a+XMb9PPkmibnd1P+cxZ99vgnUlSAKPATqnGe4AC51je9KjfelVgLD
	 dh79NQzg5X3Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A937FF94CC4
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177683625368.6342.6492237670906998219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b133e89c41ec9d5700f48039fbdb605b6f0e6ed06ea4d9433262cecb9b60dd9
Date: Wed, 22 Apr 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776836253
