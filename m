Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2111316191B
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729001754; cv=none; b=gYPqPxxIL5N3/aTolDqfli0h5em9lYq/07n7AczWBxHTReb1BZJD3PJS+Luru//DBElaOvyjBjrajDVj0gIez+ed1SWeB2hOMu0cFv6BKrUMlyIj+8NlLvewI9aZNUrGXyyFoZiloUzKKmvG5LjQgHBZonqjD30xmqFyFWVEYBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729001754; c=relaxed/simple;
	bh=AJ1B3c3ln1bbmIlLeV8S2JOtVKbElcGSIqAIxjRA6q0=;
	h=To:Subject:From:Message-Id:Date; b=nI0dAL2/J0QpklUFEPJbajoo2wJS1mC51vmtIWRbXItTwy+iqTZxXs314aoM+H3/EEwaTy2HK36drMak3MZGph+Yulgx+z3MXi7vfhsChVuBKbFOcWec4AAXIeT1I+TrK13XQ8lw2nmr+/b3SBTmpgBr7RPhlo+TAT3or+QJBPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OpblDV6T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpblDV6T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A573EC4CECE
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729001753;
	bh=AJ1B3c3ln1bbmIlLeV8S2JOtVKbElcGSIqAIxjRA6q0=;
	h=To:Subject:From:Date:From;
	b=OpblDV6TUt+YZBAjNOfD5tkz2oleHgZvF6gByDfbYKII8mPuOiyExHlWzWJiNOMm3
	 59Nx9MCOlcp6DTniMLrAwRp+0QMuXj39/t2vwdpLa8v+UhPnw6i0tLb3GDaxjLVU6v
	 vPDNVrBooCNPTa1dIiIfc+jVWt54FvsFT4tVZ8EFl53LudEb7E+DYbKRKBbtzizSDH
	 ou/kvY8bCDdF0QqrS3U0Qo/4fZWbXxrYmZBHsrn6UP/iUN9i3n/TNAXXHutW4Htp8i
	 wwUxImbBliY4UNvsanV76v0A1pzg9OY7IcVDkW0PK9sq1QlRN+X/IZc7++nYviz/Oy
	 i7DSC/x3WlA9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AD3D216AC
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172900175358.26747.2298074169173047548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c07d34d6b74e832f2080fdb94e7f68310a65bef7d7731970d3be5fc8646cc69
Date: Tue, 15 Oct 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729001753
