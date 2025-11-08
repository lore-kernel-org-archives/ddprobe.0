Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175B71AB6F1
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762604994; cv=none; b=cVL4r3t+1ddMx5hNlcDssZhtXkHdvEMtUl1X7KmbyxdxCLDLgxSNtukeAcSy9BgOMMFADRD1eQ7cAEJuStT5zcXRlL/GYh4BeTz3QPTWEmSctnpSDoUrOLfLYD8mHiYKmpss22JGqlAH14Vpo7Lp8Y/Y1wJ2bm2rk6K7I5d105A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762604994; c=relaxed/simple;
	bh=Oce2NEOzvDaceZ7lyjOR/vr3nsHb1X9MJRwNRFQN6qE=;
	h=To:Subject:From:Message-Id:Date; b=Ymb/bcuPySe0A/kH+u7ZEdujw54MFMSMz/DaoV41/Iun+T9kOHrFFcVmzy3TSawk8KqDfBRcg5+EM/oVY02S79YzbMEG0D6nlu758PbIPe1bZMqAWlV+qv+phobTDzBUXfrW1q5FzpYzLz1zEbA2UIg6JZ951FhDYxCb/S567es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWGXOsK0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWGXOsK0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FCDC4CEFB
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762604993;
	bh=Oce2NEOzvDaceZ7lyjOR/vr3nsHb1X9MJRwNRFQN6qE=;
	h=To:Subject:From:Date:From;
	b=FWGXOsK0nH867nCNd1GNspnlHrfb9mTJbyLHmvbZ0rmROlx+w/KLx4oX3sI7wlsWa
	 EznZzKTjHYk1h9q3inmv6xMavF4ecVaTfIun7TlEsOBX5xSJxMrMDtabHm/fkKYmgX
	 vO/SEiA4skFDbk7HSh70Uedim/jY5NFiuXXMbkKzhtfkgpQyWwVMe3R185w4H+XRhE
	 t5v3Ks3qpWImNri8GJkyK3gPfcc68ILIHFmtlqo79ES9IO9sY6dGhLeiY3oBchR4U2
	 Zzm3wT7sBEI0IR25K0rECEIthrDFOflEvH35CqQ+QXwXiSaqbhNq75ZKC3arkB3Ati
	 daokcsOpIhmkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98411CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176260499359.31761.10325428766323862878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5be29856bc0f94a9ff37809ad02b24783d724f69b5b93681dfdc000178b8494
Date: Sat, 08 Nov 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762604993
