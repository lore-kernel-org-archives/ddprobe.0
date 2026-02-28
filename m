Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E18834D4EE
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772304894; cv=none; b=pmt5xKBC4wEkrk4b8XsUEepKBl5lCFcauOFwThS+5Ez8MLhNeXTC/MRwiOVC2GmnH6jKUOHB4kK9foLk/8Ve0QC1Onhdlf61tgN6KWaVzjuJbP7bufgbS9PvQVSGA000EWngue83iGCO4Pjf0JdYt1ZIWKqTOMzHl5NM5F/Dy1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772304894; c=relaxed/simple;
	bh=G6ljKstkRvEyCVE9KLpBoKTedTefJCSVthBASvwbiBg=;
	h=To:Subject:From:Message-Id:Date; b=H3povlQAvNhIINKY5Nwn/FpwkbEuNbYc9N8NzSZI+igqX9ShU7tmpPyhTjOEZRIbXXl3kRyejtjmEr0SM+6dHtscGNmf+rHJ/As/AahAaQ7EV0VGEyVO3B410GxL7AgVupVfm1DWTDNsO4xQw485E3xE1wMuuhbh3IHDbQy+2UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t594pv4a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t594pv4a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0058C19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772304893;
	bh=G6ljKstkRvEyCVE9KLpBoKTedTefJCSVthBASvwbiBg=;
	h=To:Subject:From:Date:From;
	b=t594pv4a/AAhCIgZq0i+2XPtzPtP/CTRod250buMptVlynsAzI92Nn7wbDaOUO3O5
	 /AqjAfzRoDWpE8wcvPGu3C5Nj5xI4REFp5A1HBotwFQe23+FOYZTad7r/Vqf1IMzJQ
	 FzvYQIZ9qyNA05lQ3e3VFNs5GYaOLtJyNk8GSfoAsu7UMtcEGqiu7XYp/MO+UF6hRi
	 F14WSYrP223UwQMii6xsrVVnxtciFDMYmlpwPif0tylM1MUK+MVvsQVTVgBup8JEsp
	 waURKuaintcKA4EHCF+y2OXZW/hszhkmrAJwd1/oGSEjS+ptg/bGqxEvuj9AOf2fYd
	 Dk+0N+Rcf84KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED1EFEE4F2
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177230489357.454.14730104915340177477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2523bf84a5b3fc083d194f327e04117f8f369e3a5f3904130f9dd8dfa17f6347
Date: Sat, 28 Feb 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772304893
