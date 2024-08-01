Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2042C22097
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722473754; cv=none; b=FVbc/XxhZaCrGybWC3UnpK4rDcKzoZ1CwB+PufBQtEEphPb6yKfTA53ihGiRWuEuyPlKo0UuoipGcef5MN1RRcGXxvWqaSeJpROgZux3P/7zxIVwTGNEmWKU7UTiOfXQpNQJXC+Fmp1rj3kIRqE0nrIj+DnOUZrgVsPjX8EnGZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722473754; c=relaxed/simple;
	bh=eHpWCIuav7Q/a//oK0ygwque6kpBRhuw1ah4J216Nyw=;
	h=To:Subject:From:Message-Id:Date; b=Cq/K/QCaK++bu8NcycJFevlKkgEFP8eUQOYXMwIz6pnusLVrDvIPKk6oKy7e9JYXCzZtYYkmSDkuRApitTpYq5lUAvGTX4upzj+fwVn7bGQ7w5xgpBxOI+WxQkbxh01a3iZQapTZBygFCBg+OBWYBdhCYDF+B0B95Igw8YwgQzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3FduykV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3FduykV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD068C116B1
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722473753;
	bh=eHpWCIuav7Q/a//oK0ygwque6kpBRhuw1ah4J216Nyw=;
	h=To:Subject:From:Date:From;
	b=C3FduykVvyjaWOG5vb7UJxER5LL3PtAjpvi1r08vw9unRRNt74UmJSK2L//vn51x8
	 8TA9xUw7PcSZ2xzfWEzOsywIcmJWB5GpSCxWfWyGFAzvyOa8na+qlbi/N3YrT1YU9d
	 F58qiMG3Ioui/Mw1GeHuGfAJMbA8rsTp4sJvndjUNh5ggtQ2hXg3lrqBgd5hIBayyz
	 30RPPCMXC8qmF+hQzVYBvx3oLeSuILErEL1x6ZwJ8bO7Qi1ENvyuD+eaTb0vkW+S4J
	 NM2/YDWks0/ugOWojH0EgGWidt15aKj19pJCXfjiLJWLqHYbIVM7Ftnj2/cD+5aG07
	 MulSxzC341BYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EB9C3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172247375360.8960.6855652668057737620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ef09ebfb869f93bd48b8150f6cd4270b32f658d0cdbce093b04aea523d6178b
Date: Thu, 01 Aug 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722473753
