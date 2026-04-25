Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D772D389452
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 07:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777101454; cv=none; b=uUQl+3hM0s9/S96eezXZwNLNY9RQSGwRdQ5e5CTkAtQMqRxpr1XUsiiFxud6VwHsLI/15xOFQ+ZfRY94+wXtFyeEp0zC1CYAvcnO3LWs3OllK/R1PsqDlSt/MXVqTxtVMd/67Roo3cYj1VJnUjqve4BBiQfSqJvH+9AAUWz72HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777101454; c=relaxed/simple;
	bh=h65XBu9JkfR7mxXQtGjTmJ0MbFYgns/dXOZNMy8ku50=;
	h=To:Subject:From:Message-Id:Date; b=iTp7pvK6L7y9sz4cIfxU0HU6KhnYxfWxD1PmMrIXwhV5yuJYaNorb+qsrzhkk2oF0wy6Wnsob9vyKuGNOECMVSSr01NeneZr93q/O09TmHpaMQEuy7Jopp2z/LFaSVu5Ws8STKVCeddTmp2lJinc+JQhkxj6TpiNDs25KTqQUzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nl6+jQAr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nl6+jQAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE8F6C2BCB2
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777101453;
	bh=h65XBu9JkfR7mxXQtGjTmJ0MbFYgns/dXOZNMy8ku50=;
	h=To:Subject:From:Date:From;
	b=nl6+jQArfwmHhZuT5y9uEBReOq3axKYnEDSQklmG+ah/V6bSTl8m3LCF5g0VAQ4Ny
	 0Sn2ymb6xZolsc4GhDSvEb2UsAtQsgrW9n/5o5+/8pckSKFnw8gQH3kxhQwgwx772x
	 B11g+xCuHX5M/vxWW9shH1rfYmB4QKipqSMW6hmnZxulJ0Zk8mhjsl0MfALCJdH56Z
	 9pTj8fJ9JJEDCWcrevetIgOIbdnUqEXTqTb8gx5A4UIwy6+HGkS57IG/RKNdXvqWVo
	 lF4208eaJStJjNdoFoDEihWemW89MeECXsX7nBizLW2hg50kOZaSC04KhBh4B1oOnI
	 sgv/OfnI/MDQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC65DFF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177710145368.23465.10964743197788972839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 209528f16cc20ec2b8a7b455c1ab7651976668b8d8e7e8e08e20a8e7e6aca531
Date: Sat, 25 Apr 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777101453
