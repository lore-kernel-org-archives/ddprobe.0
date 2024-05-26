Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C8D8BE7
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 23:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716764663; cv=none; b=GZkMVat3Un+52Dy8X/lawzQnzWblwrA9ODK1q6H94K7pJ6JyLCfSROTKTKzRLBmZ0H+Ky7YbKx3ERsEwdZFvX5k7nIqB9LtWB/9wKfFfPRGrEOHEbQqnMfKkr3N/AVZV1C1PQn/M/SQH7/071RzSWyVGTJQe18YamzBLxNVvLFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716764663; c=relaxed/simple;
	bh=K+5cvjCIGgKUWmB//lpAbvxjyfsjkFDtJrEza+jiOLE=;
	h=To:Subject:From:Message-Id:Date; b=uBFZyAoaeO0AR028dbrW9KG+oVwfbENokEiSAtI6ZgLAJc7wBjs4Ij7yTvpznNhxrb9ou7UJNy4um2BKyGs8heFXgI0mfCrQXTaO+c2L2AamJjbFyoXE1acPxTjcVSIn7gjHMHY0ivw2cxLraqaOK8l2HB0I87ebF3wMSAsCyms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rY7uxTc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rY7uxTc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D881EC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 23:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716764662;
	bh=K+5cvjCIGgKUWmB//lpAbvxjyfsjkFDtJrEza+jiOLE=;
	h=To:Subject:From:Date:From;
	b=rY7uxTc86zV/tx7iC3qfVDDDx6GEGWhac/baQ8YAn8nS4uLZJMfjfzMOflaNWOZWk
	 pKRp8F96Au5fT1sqoEZ5Kp8p+fb7VVxL72ATEGp9q2SSLI4tjw0O/qxOIlKPil6Y84
	 Pv1mW0iNkAC+bWc2UNZ2SsC1A0C67yhDnTfbYkF/+6mR1uvvqx0sTVLqdBNN1BWyxK
	 FCvQnhmmfgvmaLhc6rmP4sdkc9XWBc1k/c6tAKya5omAmjqdb/uvOrTteC+PBpOLO9
	 bvKPNeK6mqDo900zFAsEa304OZ+0OfcvGIGKyoQ06ZKs0njtFDyzGYacn1L8sB4p5p
	 v5LM6USoxG1ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2DE4C25B78
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 23:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171676466277.20527.10384698927129181821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58f595d8efb651f528d9c2fdc800f04592c3413cc70ebe0c2ab1cd3d0ab3ae10
Date: Sun, 26 May 2024 23:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716764662
