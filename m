Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4115A1C57B6
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723844754; cv=none; b=VKa9/uZOk9FSUYBBKk0lEDMYBOQSuzTNJS4+fIv3YXbAqoNDuoRocrIIhp5jooL59p9hh0Mdb9bCsWPJP21c4ult5ISgnM/UPKz+8pK++WVT/eatZStRaywzCDqQ1fkGJvrqX5LJi4rm9hdiWgNVQRg7IJGgIIyRgFHgdXPllco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723844754; c=relaxed/simple;
	bh=Akpv2/MtImjgpepdIaAutn0zTPrsv/tQRf2FuphNrS8=;
	h=To:Subject:From:Message-Id:Date; b=ULIDCUeuvaONJS1WrNnWu2Xg/Xwm4sO6msPGzecv1WRiF7al0oJeLGTXir3fpTjZNWMW8tyP4aLGx0dzmzBGkuqOjjWNh4JUEINbBe5dBzzNFzakQclRddz79xlAsFxDPMBJsTtwKckevnpS4zJ5hjHYm/xRHVGCFijXoZj6Koo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fy+XHIuA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fy+XHIuA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBF6C4AF0E
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723844753;
	bh=Akpv2/MtImjgpepdIaAutn0zTPrsv/tQRf2FuphNrS8=;
	h=To:Subject:From:Date:From;
	b=Fy+XHIuAm9GAfSYXEjyk7yiD0Rop/2Ytm0cQD+MW/G61Is56q8LRV+mr3zaclRKtf
	 Ti9x/cvz+b6zJRR9xeF06OnA0FHH3r1qcFPMCUiotwEkX/QI6b+DvXQsrL0vE7mXY0
	 3qdps8L1klo3b473j/8EW9a7657a7tOHnEFNQxrGoOGqWGz56ShFi251sF7pQanM9B
	 G8+kgPD/8ZXnB1Wfo6K6/73/nrlVRpVFVW6LaDyes98hJiL1pYcNoa1rT64wSrhUpc
	 XC8VmAp/n/S/aoy9uzC1Ryl2GL/5J2uEw+u+tHrmwbDiCQdbm3vva3Utz6OuA2SVPX
	 Xp5UJJQtxTH+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C49AC3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172384475362.28450.1026500769959432495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0dd7449ebfbc539345d920603d028aced509268e5790c0c5e7d6461a07c73d1
Date: Fri, 16 Aug 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723844753
