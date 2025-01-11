Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A9F24B256
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736597754; cv=none; b=U82Cw+lAgNwJnPwbJbgAFquHcDqMoDtyERutz4skSAetJxDzHByELXEK4poGhJ/MstdH2G4EMs3+MFjZ/gPynyVfN2kT0qdiSDIx3TMNxtU5cA/PVW4JvL4NHk5f7EU5SZz4GS3QYO3daE9LlrePeeztsBh3ZVIXLrB9tMX+7sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736597754; c=relaxed/simple;
	bh=u46UPx1FsxSGdzgM/26HuNqyIdVlO5wcUhjIs5Q3E4I=;
	h=To:Subject:From:Message-Id:Date; b=HX/zxuliLXuteC9KCo7HdmseKIo+A7TdImFAz9CKI5zwmpdxCjX2fE4TkFJYd9VKd1U/xiobc9AuvGMNV2B7WpB78TErvhIh62Sni+77pwEPe6XYe7y8lSnu6dolkhL7KmlcAxakb0fpo+/y0+KPXrg2+mvJMQph87YI7x6k8Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nI3ZhAHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nI3ZhAHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFA7C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736597753;
	bh=u46UPx1FsxSGdzgM/26HuNqyIdVlO5wcUhjIs5Q3E4I=;
	h=To:Subject:From:Date:From;
	b=nI3ZhAHJDVogMoCrC7oWJ+vH+eRnFYZwfjpoc1jZHVjxdehXitgQGMhEVHqy66cjT
	 5p9SZnrn+0HV7uii3Mxz+j99z3TkYbCF9riCboPkGrebsaIJOWHg3uJDddVUzfi2O0
	 VcbMs1UkPLwUvwiai0o7bo/a4hqMWYVcLakYE2/vhGG+cwdMkSfabDWdq+ekxUmmve
	 Zi5E8nWxC9Fgwml0JadwtszhHQiMlbZ7tSV/RFbzCCcAm1MVp/7Et1akAxWYza8JGS
	 TkebyHlNTmhHBV+Z1188TgUy3o2esbSufhDeX8fafmEg8BzopP97pl0OaPjnrU30yi
	 dLtftJQNDQ1kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93003E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173659775359.4718.2768477205407917034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d05284f92e04af6105e4cc17436851cba26ce9e2b24e50657d754cc1f5b5ac
Date: Sat, 11 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736597753
