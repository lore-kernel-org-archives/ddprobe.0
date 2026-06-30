Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206601A682A
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 08:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782808114; cv=none; b=qwMODaOv1U30FFYMMGhC4S57srcYS8y1oLExQ8QaAocjIzr6AdJHjVr4f8LWX4MVZQzlOEHYL/10NtnpKfGdRI2r3i4tG2iaj4ajDbchnIv36l1M7CugJ9B/WDf3pqsoTorMiZPQqHjJBfPH2gNILadrqMQCEUU6g1ING3FdsQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782808114; c=relaxed/simple;
	bh=ehykqKiaBmdt4e6CqkenkaSxSxF7eS9RaKRZ2Iw5Aws=;
	h=To:Subject:From:Message-Id:Date; b=n7/HmoZDj/8g0IFPgT3Udb5zg6+3YiCjHXphOgEVvxo4K0/gtpyRYuKOFGmwAwnsnccudwHe54SJ+PBhdXvZ77ViSoxkM8iH0tVGTOmiVSQW+WzOnyQ1CdLMXpLIZBqVc/S0pypBwyftnZkebkKbuy5DtDC9hxgUxyF0c41H/bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHDlZL9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHDlZL9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9DAC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782808113;
	bh=ehykqKiaBmdt4e6CqkenkaSxSxF7eS9RaKRZ2Iw5Aws=;
	h=To:Subject:From:Date:From;
	b=YHDlZL9VKdjiPW4LvcDuRHmFVopeFAbZFVU/RGi2VJA3GZIJ6MzqmUO7HU6rCu3Y2
	 JNU/CFg5yPerVDIaHR+We1fkZj0RuQPAj39HIPQPTzXlTwzZc94zg5i/GQQgTZksXc
	 vx+bhFMlaw0XhaFZr3mEGCw0BgQavxmlv0wFu2o0ksIscovQahwUgpTkbgUpYM72bh
	 LfRYlP5Lb12GqO2+Ady908+qVZjRqBrdOvOLI20JxlDWFxSTtux/5MlCfh/HploYgm
	 VuBR4/+IdBCjxzmlAUsWtvlptYCo0ibJVhrcLvV1rUy3RvlM1NcMMA6G6pa4pK9al2
	 Vw2iv2XleVzKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D04C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178280811368.8842.16840091461928763734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11454e55379f4ca7a3bc1edddc84f81ae2fe3b6f88274f1c3c3403ae8690c817
Date: Tue, 30 Jun 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782808113
