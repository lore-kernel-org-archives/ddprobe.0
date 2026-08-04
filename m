Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31378331ECC
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785804634; cv=none; b=nq4Omy+q+e9NxD5HvjaRqcExNZAxeeraiWtWbtsb0iEDhie/RpDGPzhil11qGXs0sKRjW6PY0mbZDdJO/HqgVQG/f0Q8qpm7+FwhgsczdShfQSRcKH1pI5jdvVvt7Hf3+iR2+iFF9up2rU7p6EVUCDqMRsyB5NlcB9i3UN0+RiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785804634; c=relaxed/simple;
	bh=trnp+N7J2NYS1pykGZz1juDBVoIwji4VtrgS+rfHCss=;
	h=To:Subject:From:Message-Id:Date; b=BNJDkAOL3AAwa47qgx9d0rHwf/C81ZQnM2GzSFMo3P7pV1Nf/P+t3nMp6UYNGsL3iWQRglzum/Y3urGw30R/xEvaVtABZrguISRDRpxrJyjlnecQrUqL3Zwxv/A1m4WPLMy9N91AF9dsD8z/jgHpuCaXiWCfx3NuLcSmgtl1ywY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7648Zc+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7648Zc+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D484AC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785804633;
	bh=trnp+N7J2NYS1pykGZz1juDBVoIwji4VtrgS+rfHCss=;
	h=To:Subject:From:Date:From;
	b=U7648Zc+5p8qlrw+T8TcCUD7dig96JMKqKr3Au5kMXXyHrCYXBDFw/B6abrschM9w
	 HZlEHBp6KXNKowNlksJ7PS3+LLmAM6L2T9BTy+/QpDsp6q+A3DRpFUJODzwlFSLKFF
	 UnSTCzPdDIp9YxsTUH7YxLofsN9LSVFhCPSrgD++k9blgtnJFRCN9zsk0Tvvs2uXk9
	 4uYBx5L+NXwwoxd1Bb+JkmB+aVzqv0QnT27i5SYwg4qDzImM6FaUnEzTb2rgNkP16e
	 Fo5d8WyhIaTCKcdFeUl8Ain7RXEq+J/J1oIPkWO383crpJcPhNzoTvpn/LH/XyvKWf
	 ZQkunH67AzbCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECE7C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178580463369.427.4769679175045267981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3f923f20d4ec2e905e68e584306d43a3053973daa48737f547e627b9d96a1c
Date: Tue, 04 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785804633
