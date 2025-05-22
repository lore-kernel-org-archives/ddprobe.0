Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C337128C5AF
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747932593; cv=none; b=O6gZineX0Frzfw1Rx7ObeyRh+90jixIixqfeNm3GeHSYYzwrDPM8NKzzOMibQt4LNQNRt+FWfzXJ53A//n4zYvsjDv1WIs5dxSNgBepm7itcXdQKEG+jukC/59FN63tXVlZyw8VB4+7hbZq4LHBe95BVWNXe/6MavFW2GfSyJrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747932593; c=relaxed/simple;
	bh=3185/IjJEgBnPHDMzu8fUOasC4e6XUznNekDvi29sDY=;
	h=To:Subject:From:Message-Id:Date; b=tNcxIGvb3O4JZXuDZfDOBXJXSujG32svJcDqNtG6ahjMKcbODPRvgXI6pj7PQXXB7qsiqiqSqQQUd9i4dn/kQmDbLRijUTzn8kKiKa9Nme4ap4jjFYs8wAHpWCUI2ZgvzmmlXyTxXEV3iJjJVwMwz9jSTV61oe4A0xeD/jOqLkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfRdXp9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfRdXp9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99EE4C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747932593;
	bh=3185/IjJEgBnPHDMzu8fUOasC4e6XUznNekDvi29sDY=;
	h=To:Subject:From:Date:From;
	b=SfRdXp9r9Co9FvwijdoWROqoKV7zQexOlD6F2nsMYw4j+XKVsT4alGv0crdZiX2M4
	 fMxx/oYx91b4r/MIQew8JskVQzYgGry6GAqpGsq8A5ZAWWVw4uY4j9gWbLk2GtPZqi
	 oTrPHX9/YHEf0On1GWPKl/X9ONLn/YMMk4z0yxhYN+i1ZqYzQMHbbNYF3engUrk7yE
	 U7VnJIeEBjxO7C6Sz0LLsE8vmF5Gd6wjBHRp7YpxEJxQmy4FA3Y6mgH6+5D1JyZK66
	 bjuAQ9lF960L/1bzm29GssneaPgX2/SPlwf/I4d4N5fqETjQeTi6oRO8KbvGy6f6f0
	 MLb0riBQugyvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC70C54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174793259358.18479.500628897856651901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f2dd7c6880690127a7a66a62bfe87e424ec9a5a66d1a0ccc040a0465052b214
Date: Thu, 22 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747932593
