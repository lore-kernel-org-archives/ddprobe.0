Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1815922A1E1
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772717094; cv=none; b=DcrSO8s69LXyJONRj4+1JBMlVjSXw1PlslbxZhOKCF2/+CnHboay0Wm/j3iIVMmMctU1bu3hm4+/Ot7E7S9fNOU6BODbIqr1PeMeb5Dy44PUNmP9xIuhNNPCZV63gJRGoKzpc03x2BsPVJu+GSIgDSNnzNXwn7VoI6fGSHx5cs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772717094; c=relaxed/simple;
	bh=0d1fGnvCXVpW/DSFVs8wbfu//OIF/DAeskP/H6JQhgM=;
	h=To:Subject:From:Message-Id:Date; b=H+VZV/UIPWa2ZOPmNN49OfoB5zcxi6DINahDFY5nLlf0CUnhHa4dS4sAPCtCdQDmSowpTHZL77tlMiuF+nFqtf+icbhNh8++2moAyLD8gNNuudrRvTnrbP8zCN6Uk2DlaW+sr9b7DZOfIZbI4Mn5LDJi624ZyPXPxmqrXTBxdcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1wiuhxE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1wiuhxE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AF3C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772717093;
	bh=0d1fGnvCXVpW/DSFVs8wbfu//OIF/DAeskP/H6JQhgM=;
	h=To:Subject:From:Date:From;
	b=c1wiuhxEslfrSs8Zxme8GjWrrgteHlIABhXkrpTu95apAC5rNQjaRxUwD1M9wZe6c
	 fXdBlRAFdupJlQCJ9JZl9WIZpg45tefpGRmpINFw7dt53f4DO+Nv6YXjTcmHWJAwCR
	 dG3gaPI5wy6bN0VDOYw3QOqTumLJAwnKy0z3q12+waF/K8cU1WPio7ZTcyxPgO/FgB
	 L/Z2WjUSMDmsIyNtuPnDl0DbYG0AFm/nZkyDLwH7Mqff4FM9ssA5uX3BmgVGYc7V04
	 htvijMS/rgvKM8aeGS7UgXrQR+LrodXgqqOd/MSZ9w0QSAHDOeOO3ZZPXgQ7rrsW3Q
	 m/xZISSxJyyoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919FCF3095F
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177271709358.21905.14093777553048863505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac503f00873d91ef785c832a38713666b570a458a2e6aea01e63d0c39746ab6e
Date: Thu, 05 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772717093
