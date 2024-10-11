Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EBB3E49E
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728665154; cv=none; b=U2QUARtzwwTvfCZgdNA0k1KHU1U8LH/xmXLgtNApDVcl0BuqDFZSI+gsuwb4cK0p0jxEKmQF1oLAnWJlEO79oZMLg9nc29Lgd+T/PMlZTI6nFTu02wbI6XX+imgbgmc92ax4/3Y+FAwPnHXu2wIxFwU27boIlSJkmez+rcCZmB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728665154; c=relaxed/simple;
	bh=ebAyCkRExRV89vo17v7BXYqj5lwzXoa2TKVwCPzlvNI=;
	h=To:Subject:From:Message-Id:Date; b=Q6PYLV0kB91p97Wy22YV82hXj+SCpRU8YniteNoDsr3xliqJ+ejsukFl/z1O/yjCijwjI42hrtt0UuQI/E6C535WNu7vFn6oB2goXNl7cDEETiKn8KWHfRbIDsjOh0uyNl7xCSj+yrm9XA+kPqvdC3jeJkWw1p0w8368DvyZ+nE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=don+5OQs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="don+5OQs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C53C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728665153;
	bh=ebAyCkRExRV89vo17v7BXYqj5lwzXoa2TKVwCPzlvNI=;
	h=To:Subject:From:Date:From;
	b=don+5OQs2Gqyilq9nNIHasVMADt86KesbWhZEQbIrYmTr7sSrbV64DVoO+vG1BW5B
	 fDiPgaTjeUJYF2uZA0t9B8rntcoRiUG8mzhtgjJiHDZ0AAxPIcocADj0NC+pYmhkZv
	 nijwPK8JqHuzXD2rAOpEc8FZsOZs6ySYrlmr8kNAMhLqzRiBudYYYIez/IK1hWf717
	 7PIWssHzTjrboJDH2ZX6mXNIT2BhY4agspLn5rIy8sNdjkk7NwsMUlw1zjeFfgliuV
	 LbQpwTABgrOoISKByvWt/yly2nM7NvhSaiyYKJFUhjIeSlpvF3x+/ILQOVQirQx1iD
	 b70nnRVBrKvEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D859D0EE19
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172866515362.2040.9456092439778951349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f35d719cab8e0033f880cd3467e77689be34a83f382ecb2c773a76930b8cb6d1
Date: Fri, 11 Oct 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728665153
