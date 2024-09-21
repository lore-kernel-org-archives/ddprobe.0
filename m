Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BFB13C9B8
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726952754; cv=none; b=uxBExuNJF9qnMpcj7Qw/i1krkNZ+TUieEknzVFvM+iXknr98WN1BVyrZKTEy22uaLzsNeJet1ZiknA29f5P00TRi5JMAm2O80Ld6sytM3/FRyJYxu6mej7S0xq22yVMihX8Tu8UHtXqAgei1FhKtcV9/FC0TXR/lscbfUGXy3o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726952754; c=relaxed/simple;
	bh=ZbjLNtz90ksKFdPSpdRyf8GDtzyHCi09ZjpLMVyRPKk=;
	h=To:Subject:From:Message-Id:Date; b=NphZmliZxXGyJ1zZu9d+n4WTxHtLE739OHexSOFZ+LVHrhwUZs036jnLzxJpZNrz4eHsJgDJo4QynRxPZstz8VLOlZELaP6sjHKUz3vGNVFVOmHjWAzmQJ7wAmqm28RsiwRYymRwBWCFHrsnFfcmrnpDfAsoZx5N38wrTOmv5Mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkRuek7h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkRuek7h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61F1C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726952753;
	bh=ZbjLNtz90ksKFdPSpdRyf8GDtzyHCi09ZjpLMVyRPKk=;
	h=To:Subject:From:Date:From;
	b=VkRuek7hMoiqfJwifvCRpP186NOhVEBhSVRY3E6HfLlGK2qTwmN2pgWLvbzksATNn
	 hcx2DtJrgYugV1dFOt7r7+cAGef5BPwkAcysajK4dkNvQXhBuUNcRZIwv1W2oPRYjX
	 HbldmEa9+Op+GailWp7eZPXnxLAUTvwWyRMDxadZFznCF1sh9ohqh2PStvtUWPXq/a
	 m3sJj3pg+8Ha+dQYeZKWteBUzrLgEBWntwHTE5h4jaboop+iVEVo6kRuniUYve9/3X
	 GcPBKha8bHykJzFzW4Mocs6OTI7IUMH3O1TXgC9FOvVhYYTTU2wiRrnkYqv/XZSwDK
	 BPH+NoDsQC+UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971E8CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172695275358.21316.16877765250261856407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1d4554edecbb063d5ca94a12452a5f2ddffcc6e36d3eb2b2a2b3d500698f8ed
Date: Sat, 21 Sep 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726952753
