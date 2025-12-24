Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA9EA17C211
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 11:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766575434; cv=none; b=HTYyFMhE19iHKBeRAi8EoygXiiKqhZwoz42CYGYTrtlBWR0H4kzijd9mn5Z5S9aokTPKgvC3gMmhbjyqttCA7v8tvSajEuTWEfM+ipJ1KyLXkPXc44LhnAqPmGnpE8ANO3g275C4L6Aq3y2XFhJVwdY1ZVi5JN1HOPF4pGZo5Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766575434; c=relaxed/simple;
	bh=aldSOqfIiivEr53QBcIAFBw//IQUzuwfXQW4BPqnmHs=;
	h=To:Subject:From:Message-Id:Date; b=aQ4hB57Fowp+ZM7kHaaomMGH9FA6nyx5bSif+ZRuvW5nSFBgE5F4hK348CAh2Mo/W/QZ3ATD2l0tf6vBArRj6FT4SFbmgTLX3yPjKNGQRfYfxxqEP6JehV3Nwl/LRREcKpmMfJuHBCH+dMgPOqsKkLg+jKxSYsU85T3wfiusgA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RC4N/V9n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RC4N/V9n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A250CC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766575433;
	bh=aldSOqfIiivEr53QBcIAFBw//IQUzuwfXQW4BPqnmHs=;
	h=To:Subject:From:Date:From;
	b=RC4N/V9ncu4/AfjxgjS/vnabfRF+jv72IPMYfmyPbsXuzJSXvs0LdACTKqXInh2Z1
	 w9MRcrD/1W+MlSAXstXzMe9MWdUixb/LeChrBaj9FQas8aFRlprKX2KvNRXR/HLr8B
	 lCrWWFJyBBvlTZQl+oIPSJgViK4I+KTIzzpbSg6nuxbgfU/2xk2+tbqOsllFDfJVdk
	 J9z9i7QyIcdvUVUc57ujiBqTEjOwU7XF8+Zm3Vsj+tn/4ZExi7r5vegtVLlEqvt/t4
	 gNyka7HwrX8r+oHx5Xj0w7HGRXE6lJ/9YSXMzV8XtW45EyDBjBc0qWmQAGpUJyn9/O
	 3ZzBfe+LqxMqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2C4E74916
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176657543357.7413.1278590440166885891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bea7dbaeff1e1d1ee21cde57e0828eb3df44ad93d6b82210a2f7dd6a55f8625
Date: Wed, 24 Dec 2025 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766575433
