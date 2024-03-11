Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 045AA482CF
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710175697; cv=none; b=CBUm0v0O6/a7kjO8scmdghF/loLeWj89eHWvEmTvlZnIrGKPAXbIIfWxpdyDRVHySkP0BFABdXcpoVzGC4U2qsPXhQmAmP5+AlnvJBRtpV/uOR7dzK94QwPFkH+2FnEAQ63x2RU3CWHkvbSqgsC7kxvSotkrfxZnCsGzlYmlQ3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710175697; c=relaxed/simple;
	bh=COS+JNu59VWwwsZ0tQ+RNOqitP/lKfKSAbvhVCzy+4I=;
	h=To:Subject:From:Message-Id:Date; b=n1zqAzOSKvhjneaqP2eygApe63KU00qDrkridO2Z7MyvXyuEi6WT3kytBePKbhg6v6tJ3xWb7Eb+KLyFkVW1b9w80Q5CG1902H8yaFXI1PU6aPVT80LSc0URCqkUk8L23nTzmtgJBH8DcsvMm/NBqfmlxOeErvkfD+Jift20fTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILRTxk4Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILRTxk4Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B8A3C433F1
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710175696;
	bh=COS+JNu59VWwwsZ0tQ+RNOqitP/lKfKSAbvhVCzy+4I=;
	h=To:Subject:From:Date:From;
	b=ILRTxk4QAQIy0R/3HS91O5WK4GYqYexJVVKAHZVsJLPMa/BXZnqWxhkGVRSD3MqDp
	 r5dYJFdwVBuBXqQ7tYvdm+mOCSHXpgiTQfaF0sKv1aSk8YcWuhwF37H+LW/gqlnPle
	 6QYgeHKPceozwzfXxIrmvnWEckRV00l06yRoJoyue2tKWn9gQEXxYGZvZIu4/QPXTk
	 QEHn3HQ8fY3qlUN0WZ7e4RqLBOXNcbfyCQcfE4H8htTNsKKLPZDQ6VEEBgm5oJ2TwV
	 DtGBM9HTxBB9L7BObEODLGFA0OaqS3EQNt5bnaJBpEcb3uLQCLHBlJSmBEl9XrZ2dF
	 RgFVKKPwX/vTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC90C54E58
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171017569638.9214.10869760497293653374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3f3d7b04889ccfae4e6f8f885d728a5463d94815d5315f842cca80591373b00
Date: Mon, 11 Mar 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710175696
