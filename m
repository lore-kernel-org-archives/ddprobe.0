Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDA8D2744F
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771986894; cv=none; b=Ykhtnjtmm7Gg7QDAXwqRVih1CphjMTnQPGa3ZGRMsCg8GGzOz/4zDdezuAqzUYU0sW5p273v9QEv59ujapMJwsOuYy4J8MTETeU5ULo27Bx85KLEbdpMLA4/wTtErzS7GS1LfkT3u8gvSVppOsZOcncuQrU07gU6OPYBCapgK5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771986894; c=relaxed/simple;
	bh=eTIUF5iR/eP5pM2pi04S6t2UBaaMbHChwBGWSRGuD4A=;
	h=To:Subject:From:Message-Id:Date; b=I4otQE5iNIgjFlYnw+yyrPpA7P0E/m2u1GT3G5gUx9gJRxG27asU50NvRbsu4iigbCvrds1Avt7xvKM1buAxkPUhIMi8guUDQJLwBJktIRsIO2EfKOPNT1LGmQ5uDMcSdmmeCV38ioB+TaTT1nkSvUTa3k0B2wK5rOcMm0sS4Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkcd7x2e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkcd7x2e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3698C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771986893;
	bh=eTIUF5iR/eP5pM2pi04S6t2UBaaMbHChwBGWSRGuD4A=;
	h=To:Subject:From:Date:From;
	b=pkcd7x2eSeHTgwUxJPRojpWNtF3vkoWPopwwGWgUE+SfoOSmATTx8ZLVSoNX///s8
	 O2HteYGrjxVIIVF8e+Halosi8TjEFJWed/2sEAGZRbdV/Bq5HLeS/fCm97gu7j9kd8
	 c2Dvn3VLcT4nwtbwGTMgkYT8FkIU2T6TZRb75QBkP+2TKymRkUoQOdH6mANp4J7o0b
	 IH1wi0/OY+cYhoWeURhcyFPHeixKzQYKB8RYwTryJLWsND5oJIOmXAKdySPTNoZ04Z
	 kj3D1Z7CJocWRv+d0pH8okejz/eDG2RSIZNqtzBd2W5INiyDLeVifMTuLA3RXRNaRv
	 2oX5eSRqS3AJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913C7F5543E
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177198689358.1681.15999449255555854766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 582a4914897fb94fde4693eb303c3db7d0e979ab7fbe0fa485b94d843e721ace
Date: Wed, 25 Feb 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771986893
