Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4406F34BA5B
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786034434; cv=none; b=THOb5RtZjnqlc3UXkscYwcJ0zQjJWJOeW+yQEfMDzVmh1BggEo8ipkKmSw+dSChn4DvL7ne+oGCXIAkdXRt+kIc9RLQDjxgAFZMSQykwqh7v54uLpXzbFZPrlPS9xSBpYRANRF+5v0qAx2c2sv5MTrlv1iLGavcoFh6bkb3HPlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786034434; c=relaxed/simple;
	bh=k7qdw7t/tsNcfRdAnOwxAgpUaP8O3snnLMNJDZEQBDk=;
	h=To:Subject:From:Message-Id:Date; b=H33VFfCgFvKzhp3HJfVwSuLNGKRCVCZFfMvzvMNPDHXfRoMZ3tySg1ZLFJEk5ss9p5AjgnTOKfBq/oj5oiBJkILX8cIKwqk1VI9rHRsDBs1peOgm/wQhu6nLukXhUQWaXoAWb+yaQyDBtIKLDlzrKLPA/5g7p6E9zp+JuFqvKG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j9VlqZZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j9VlqZZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C4CC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786034433;
	bh=k7qdw7t/tsNcfRdAnOwxAgpUaP8O3snnLMNJDZEQBDk=;
	h=To:Subject:From:Date:From;
	b=j9VlqZZ2unXL5RNnc5Ey3CBcUyYI2d73UoSTRKA1qMukEWiBJc/bKAhAU1i/3gHdv
	 jU59FVxITeC+2UvT3HYKq9A9SAbiHMhvHWVhtV+J9VYSwZbNoO6NNW2YbWKOgLuOdU
	 4yorRNszEkCNGDmrsh72+acMqHx6xoFWCnTITMdlcmY0t5PkYyCSlSfHjuhpF8k6tV
	 sTUCBZwi0+DfAxvxThKwjNIRywdRRlbqHBcxdlfGrLoMjsC2TD+fcHphHebkPLTrl+
	 Ri/28Z+rcp0xanwHWJl1kBb4NDgNZBHO2gEEo4qeDTemePKsRQHkYXoHY8ffO9aDT+
	 T3FGbWHjiZ4KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24BDC5AC80
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178603443371.13555.7284899675133079853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3682ee059f7d6c8c331a2c324229574f4a6036bb1d914595f9b50c368656b617
Date: Thu, 06 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786034433
