Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D203221D92
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 19:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764618174; cv=none; b=Y8wYZPnPkKB1jngy4caaV1tKNXutRTfoOtZlks2h131KYV6U+Qwtdr+/W9Ka6VWsAXxl1TcpIaQcH9eQ5gIO6Vf1WcyBstYvS4IBRzkOddE4MGwRk0WYe8x0VWRTxScTFcvq3a4WSqVzLyxAasFAo5TE2QpINyoa4AnI6jd4/es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764618174; c=relaxed/simple;
	bh=ZwacDNluNy3NyzdstT6sB8ST28rhx1SysA9t22uxJ50=;
	h=To:Subject:From:Message-Id:Date; b=it90PnsgbKcZ57fPLg3ssv+ExgPFRtrcqYQCBInMcPH6yyrN8xxp/R5FfU6UQKYY+U7PcxJBDEicO9osVcmQL6l+B335lXNWZq+IwO9hrvsDI1xVsxSbeC8O2aTL5DJK2UCKPM2QFA03dVAxI2d7wJi5Yjh0jKj95+w0jO4XoCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxSI4R/V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxSI4R/V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA482C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 19:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764618173;
	bh=ZwacDNluNy3NyzdstT6sB8ST28rhx1SysA9t22uxJ50=;
	h=To:Subject:From:Date:From;
	b=IxSI4R/V19ZJnq8zRmYdpEaYs8m0ugh9/KMcRrBch1OKQkHBpcSMNZFWyLj1O55KI
	 ajAab4HgJ1G9NcWIOFyvNIRjxkxp5sBdPgeOgDMBzWCpzdvjIKCOSipxQodXprtY13
	 DBvx1GFrDtu95v7eHZwS4sLX4e3BrMGC7f7Q2TU0YfyrmmhrGVrkpLcqibnlNyrjPv
	 Mqym+RjbtirWHQH8140YBJlnC4OKTkct8XSH5G0pbVFkNpj2DYX57v2CyErr95Ff7K
	 Ah7mvBkuwO5g2lTIe/vL5id2aKS4IsCFjvARmyhCauig5sFLUaGTsWCBx81db++TOj
	 LML62X7cHb9vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D9AD116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 19:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176461817358.6112.17383659802979794668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da4ef6679ea777ade5dd6e8ea1dcae5fcf0249fc180a4bf395bde54d760524d1
Date: Mon, 01 Dec 2025 19:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764618173
