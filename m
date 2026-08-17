Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED46439F9B
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786973434; cv=none; b=r2rKlESjY/ihEUxSk3M59nYUKR75J3L6KJqKACv4JO13Ety/7QhAy4oOz68nqZKZYzM3iiY+Z2LxMtdZ9/mPd8hKuZ97D0cK6kfsklbdL0/UGR+xkKXpI+2QZ9XgWa5Nhz6RlbZM+KAu2vAzQLC4T61cIPQ7yehvAZbTJHUg7HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786973434; c=relaxed/simple;
	bh=sV/T0CAUD5qpE5yfIu1OXqW+X6wxLxIPKoITbXZU18I=;
	h=To:Subject:From:Message-Id:Date; b=goMgPbNiPn6of1em0svweIq8TPJ7sOOESmdcTXnxGDlSdqxF59hU1knyBiU1i3HoISJ0ywPeVIj2+gnL19jcX1lQpyDbbubgbkJXKv3ITyNJSxns8pbKAAZ55fh6WpAoG3NpfhiD38gGEDbIqpKiTBrEKsMC+Y9+ELbdqXyPYM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdbQpRdc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdbQpRdc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC45C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786973433;
	bh=sV/T0CAUD5qpE5yfIu1OXqW+X6wxLxIPKoITbXZU18I=;
	h=To:Subject:From:Date:From;
	b=bdbQpRdcRzhLf/SZDUQKVJMN98f77ycSHucjQMPFrc8TcY/rva+EtMHu00J/lSahP
	 nPKjEl3/QcS9EnPVK6CWrd9Q7rWhlprGBwOyLyj7j6UouBb5/d6F35wTr9J/xZKPNO
	 Tpc1mBBzfgwoTksk64VwXhJ6MWIJe4Go4FMJyeZ9IjGJeL0uf6+TSN6gRhAManxvyI
	 vh85edrfb6w/3Xdt12VcsnT4Sk+WIyPJd0AzJgFCg5NjaqEMa1ZTqcA2NkTZR4ivBp
	 aCq5UxlFe6c+xbl5OaTOqh2ZDSdZlB8ewcTxTqBDJkhMJUQkgjON/qf6xZKeDYF/y+
	 7kv2Qsho98OgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0B1C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178697343368.22700.1529738682019917759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f170d886421e6948e4846d10cfab6b798237abb3daedb53ce7e462516f796dad
Date: Mon, 17 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786973433
