Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FB8261B92
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772517294; cv=none; b=Mekx8xMF8Ng47S//xUCKtwb/jqTn8wAkq1dfk79j4BD64NTvbIAWiWKtMWZcyWOn88RUdCVBLTVu5EGVKhviS7uJ+s4zSNUmHoMeHQJkZ94YKHEPdpi/JW/e9kEvN4Lb6qjwf/0eCX3Ha9i4KkRAIXQSXp8pZIvlzKMGbbxs6z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772517294; c=relaxed/simple;
	bh=cMzXydS3Eex+UKkRLKgT6L309N0rXiZqbuTES/Ye+A8=;
	h=To:Subject:From:Message-Id:Date; b=aoW0dQqbljsMAXqe5OeGPXrvnaruFmHSu6yk8IRJtxE68WGwfrKp+ccXKHcLApsml2GjKlEW3joPYbs3qdCwHkylIpHUJiSW8E+Prce3EnZdSY3CfySJlpTzMzM3sCsnTMeWezkZnTJC51JEpkVAYQqgZx6rqeN5CcVBkwkNMpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JK6Enld4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JK6Enld4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFAFEC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772517293;
	bh=cMzXydS3Eex+UKkRLKgT6L309N0rXiZqbuTES/Ye+A8=;
	h=To:Subject:From:Date:From;
	b=JK6Enld49JjRxzMc5O94m1E8zn06H9P5SrpOmNQRFpzEMRt3jvH12AqO2B7ycnfRf
	 Rca+cyh9BUCWVIRP7ZvuMU6ahPx6dzWEjhxdgjbPIXdhWUj1pKeETolQ/En9vywaD4
	 niU19ZjJsJWGX2eY55kooQXsxPxrQ3vbEmyYuNCakxIOm0PUA+w9TF43TTE2HH0FYo
	 FMnelWqXyLlNSnWn9LQbc/YtGVQAEu2JYi1bSG9kmVOJvMlehXQC2emY9Zfm5MxOjQ
	 +crp/L2VhoCUqMkdAtDp+varLnquY2smkAc9eSTjnOuJnSdBZgMvk1Fzby4L78MWXW
	 LF6nCjKOKjyHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970EBE67A6B
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177251729360.32106.15326300823284795746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f077e16cc30a4c6ceeddaeb61c89f83f86b71b359be5e26666b5afaee398b6e
Date: Tue, 03 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772517293
