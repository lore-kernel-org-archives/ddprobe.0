Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC7E32D0C0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763078394; cv=none; b=dagzSRQXH8QJzgdIexCy9qGIb3UiXP2gALdB/H1YVkWEj+BbKNw+lHhVKjAMzJ/UscDwKQeXBVfhE7QI9fVqsk4es4FuU63JkO20u1eY03ARIezKVMFChhRaln5qZAgUdos9uH7nOmXmFuMk9rACHn/O57vS9zLgUbUIl4bJHvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763078394; c=relaxed/simple;
	bh=Va5v+G2lMnh5HOa9dzqm/Ki7ThdgF8nhE2/oqjpVspQ=;
	h=To:Subject:From:Message-Id:Date; b=ord8EQDcXi37BvlkhB0kgLtpW9ZsULwcK8rJDr1h2pRhbAwGcsbMU2XUvYjiDYUvLUTuiHYjwmmT8OCQzI9XSwmnYKeYvz97NdPYx+crFZVhzUhgzRKXeLlSJ9fFzyPgQjoAy3aV4N4frMcOENfhoQf6xyPMERMoGjKDATy8/s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXW8y9jc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXW8y9jc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3E9C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763078393;
	bh=Va5v+G2lMnh5HOa9dzqm/Ki7ThdgF8nhE2/oqjpVspQ=;
	h=To:Subject:From:Date:From;
	b=PXW8y9jccnLhsGNM6XlYvjeNI2+4Hv9QUMoScBZppzjB+gps986Xmyzybk2tgvlEQ
	 6cR9TkSP/V15+o48HE/cM3j2B0ZDlpagdobtk/v9kSrQSL8yqwG3lMAiqYe7t6WqB4
	 7I6+TByFBEPLwbXQ4sZ1uXLaplBSYtKnhrp+ugbCfQlX1HuEhSis4Bxv9qCFBfh/c6
	 SlD6M4RCDsuooNY2n5AyDl3xo528BgyINIXFMKWza9YXDQbYuwopbv8rKQS4quO6Fr
	 01Y2xoDvgl9sZyJZCRr4afHnZx97aiPsCsdoWa8lIQBVBdgiq4Q6SMmLW2hN03OzB1
	 v8rw4LQNuxmnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF69CD98F7
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176307839357.21265.6365904647406293039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 587c371dd7cec7985233a50d88bcf8eec37218adeceb14c616af424c7155bacd
Date: Thu, 13 Nov 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763078393
