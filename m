Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8A515C3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722056154; cv=none; b=f/a1JpaTRPjPuJF96X7229+txtJY+lOQTS/JmfLHoOIHNZd7AffGOudG16jYbReRwLEGv6iwMXn14mp1obtUz7TJ3jCZCL8MlU6Xf3f4e2H9WJvvztb/MRkrzGiHd3HLUkqoIvXYEz5kBYhmnTeH1vXMWxkL+h8ZRP+UmL/5Stk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722056154; c=relaxed/simple;
	bh=PCiCl07WmRouOdZ0nYKWG9A67+Ax1RAc80a4axgSpik=;
	h=To:Subject:From:Message-Id:Date; b=rek6bU/7HH8P7kw9DJKJaAiiCjFKuSMztWb0DcPCZ3R27wMifG2Q7NXCA9cDG4A/+Z83CSvIH+AGPzYmGf5K9gLXmQ8sHo49fW1oiGv0GhOMWwAHsMhN36BepGy7M+n4U1gVtnfdyPDieS9bYBN8sacsOyxzmGCzXRx0ThYyzas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2fnXgSI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2fnXgSI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7D2C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722056153;
	bh=PCiCl07WmRouOdZ0nYKWG9A67+Ax1RAc80a4axgSpik=;
	h=To:Subject:From:Date:From;
	b=d2fnXgSIGp3c9nmiJ26s5Issu6RMh7HwkAiUMadR79MqFSlDYF0adiSowjB7C14SB
	 3LfNVvbClf3tfGIwnnp/1JVACGfwZeTlFNkVbr79bkHIJT/GbIXYsDhaeokNHHnC9I
	 FKNp8kK1LBwGI/JEBIbSFpY5NErdBH0HB8dGJ/NrmOJntmYwSgjrS1BS4OElK6hnYq
	 vHY7gqIdL1Q8rykHypSHLpcV5VyTY17mTdVLVXPxsSBcDm9sZrcs7hTpx9NTQkAEdL
	 m4Z0o86Vmz5EdRE8/Mv47L+sSASH7JVPhpW+XoOB7AKSU1ylI/YBdlUl6K1rfmk1pU
	 a1fllyJL6mDeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D6DC3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172205615363.19964.14739124008457074987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce9718b08df033e3f00cbe1051249da8cc66bfbb5146841417173f77ed80d714
Date: Sat, 27 Jul 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722056153
