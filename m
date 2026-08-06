Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49BF918E02A
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786015834; cv=none; b=GhTn5ft5GFFVRyHJPh07WzulMWaiggnHLce7jmx3RgD3+wKXl1DzgYqK8kaR7JAOFawl3mBqdHqp5uTaaNJHnyXYgd6m32SUQXiwBSBm+327uDF/WIc/85XptNWnlwItvGAfJVjNDXpsWMBb5FIopqwL3HuIuBN/I2UNYclTyco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786015834; c=relaxed/simple;
	bh=D+PjOK8Je+J3LVo1Y4CdYqCGETLVARN4MUientcveno=;
	h=To:Subject:From:Message-Id:Date; b=n3VpTXLykKNugPm8gpMApUyLvamYXtWuYwbO43xhNrLe2mdaTxlB83k5rZS20Ji4ZXGeOfYnTO67Ziu4fopUsl/YiAKsKdewasKOlD8G+I0zrMCXnFk97cxZjfQ8B5XiH2xtQurTP6wPFo+y7hO+anrwKEU9D2LMoxkyZ+ZfzLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FprbGwR2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FprbGwR2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2919C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786015833;
	bh=D+PjOK8Je+J3LVo1Y4CdYqCGETLVARN4MUientcveno=;
	h=To:Subject:From:Date:From;
	b=FprbGwR2mTyifRCfLBkkmfY9n7Z0KGiQYvWDAqTGjTR/nfQs5udzdNaSPJ4n9PMuH
	 g2MkU6gVcyvjsEJQ2HB11HFfKv5YIpNKP7vIm2WhRdPypIuPXfrQ4JP36p56QJqhYZ
	 9o/ZsyORjyhVfZ1xwIgMP4wt09LIk7u5moJhRJaOLfZy9PSRt6LORejAaKNOpIAGeG
	 F+9ZvvHlP7cWQiH+KylbUJWXBJ7b26XriVD87JmY5jxP3VkTL6HNS38RzX0Zp3wZEN
	 5p9qLMkXzTyoV1WxASoNOnC3k+AVIAw2rAgPqEA9gx6LwTJb8JdqpohLL50ywSkj90
	 xdI13XrW0dUmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF4EC56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178601583370.21982.12216932052593608169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d2744c0b1ab9710c6c1be4a2d16ae8ed0b129375e8112952747aadd7c8e51fd
Date: Thu, 06 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786015833
