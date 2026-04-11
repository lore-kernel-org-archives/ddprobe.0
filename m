Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E2B21773D
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775921254; cv=none; b=f7j3meLy8kOJTtxeS/fiwqgDvDNeIoh8c7JGlig5UggeJCh/FNKpiYEBUghh3+tXtZrriAPxtlF+QXF4+PS75XYfdfRJ1/Q2RMIfamkskohfgd/pQMyw/MVfk/04EE2h81m0j6yLuV1qRCy43482ZPz/dfwhf1GGjHHRRMYUG3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775921254; c=relaxed/simple;
	bh=2vzoUDMUrhHLUNVdK4NJYTRhXMa2bxFJrTkyOCSceIA=;
	h=To:Subject:From:Message-Id:Date; b=huJk6ASQCLFsyryhx/QwysyM9tsM4VlDU2q/RrctVI+6bXWf1bMI679ND3QGpZsoXrbAp19Lco4c07PZ4g00DesAGunBIgZDtDmTbNOeOYCjbsjmdpIn9cgc1GB6/zKpnS9E4eyXmO3KfsfFXa1ep8kTA0aeSBMGzCYPBa/hGuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2el3ljs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2el3ljs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3C26C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775921253;
	bh=2vzoUDMUrhHLUNVdK4NJYTRhXMa2bxFJrTkyOCSceIA=;
	h=To:Subject:From:Date:From;
	b=K2el3ljshLS2vSHNxHBXLtwvycw+wbRZx3KwbOMaqppniZiN4djC4AlHa9y+Z+QmM
	 aP4KEbs7sClexmQMov6oJ612Gm79nEV8FNqgQqoAFmtsDXbY6g0CmcwIizch8FpbH7
	 wgjq1ociuTYguW43b9W8gVjiM1p2E0axdTWCadoAaSJTNcC1eDo95KVPVi5lpHjjhw
	 K6ECGK+1mVBLu079OfAjw3gWbex+wY/9haM13IRhSXKbA6dLA/sv7luIn+IcjssrsY
	 PAghw1BLC30SoBuasInh0tDUKkvkFAO//KU0MThjdFjAljex0GdZ0rd1yJYWFAeSP8
	 XB3rk6Yzl3eiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD5EF3ED56
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177592125368.20104.7241781398642756792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c247707de950b445e2c61e4d1130a856c0758f28106d675150084fefb3582176
Date: Sat, 11 Apr 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775921253
