Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB4F3DAAA2
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786677634; cv=none; b=lGcH+vbLI+ARPLgU5D/siHdO+6RpZ4XzRn0kxl/Wq7gd+IvD2Lk5tKoJ/yHw/GoFY7znOP/kwXKi7q5k2yA2JSvR+dirjVo1ft/0zxLOrvTzOVRezpdx2jXvuIr/0kvFP7pT7FFGgS8VUBXqKk8xAd7DbxHK6lCJ+r/ybBQI1ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786677634; c=relaxed/simple;
	bh=Vdkv2+Kya5ttaYOFhXcZH5Ug1ipB1U050gHmC39QFO8=;
	h=To:Subject:From:Message-Id:Date; b=X3Sf63rEB+4spuDC9cuAhPdVECUH8w56iUMch1N08mLdGDODQZFIg32m5B9/mdFcciMP0zutZvKBwMWyf5l55DpoJiTFENxQRKv4eia5W+o0O3xfZtftEZbifZaAmZC9BgDcM05En0aAHZQi9VDhFJBRWf0H8tjxEnhWeczgSsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcCz8vJh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcCz8vJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A72C19425
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786677633;
	bh=Vdkv2+Kya5ttaYOFhXcZH5Ug1ipB1U050gHmC39QFO8=;
	h=To:Subject:From:Date:From;
	b=mcCz8vJhC4TNFJwxXsmfLRdo6xHJrEaVEostL+JyBHuNcTfMaiP9Blq37hjPUum5L
	 LMv0OEiIIfpU18X0AGqNEoQSjZwYL0UauGF1LAk5srSWG4vKhwfNx+RJJQoPTv8047
	 G1mq09s3aZtiJMEqpmbw7Y9+5gAFonepzSING2ZOnEo5EQL7eZFINyNHGme26zRPuk
	 MwTZgqseWkqmb3bJLzBqJ+vxrXyxSx2tGNbOHtaGEVbT/4EYKHGQxyo26XlkGmAO7J
	 asjxVtZsao32m9BKU5IG0tUd/2hr9OAIxBmcJOaEcMexTsQQA2LiNyrVKAxYnFtC60
	 D/tFPCDC5U8vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA82C5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178667763368.26238.10986257932937180334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ac550f37e9c95d766cf75253eac78d696b9190b49481b35f978bf7542758a67
Date: Fri, 14 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786677633
