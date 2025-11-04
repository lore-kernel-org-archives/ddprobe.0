Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3471E258CDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762297794; cv=none; b=ReN6nNyGhvyNXaj35yyR2fjdQhOkSuAp9CThpGTIOvHnOXLEYaFx+OwziizaQB1Xd3xH3EJmYGuS7kPCcfcuuwdg8z9cb82cPtSYTuPAlq2xcN0rLE/RT55yPAI6EDLB7QEg5yrXdd4NDxQv+oov+7u1QlhqP8u0QJgclMblq/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762297794; c=relaxed/simple;
	bh=b8lAfCXrnUNDLcB6wi3wJ7graycyV0xuEQw0ghvyW78=;
	h=To:Subject:From:Message-Id:Date; b=CozOaNsF7jzoKrtUaUeUyziLi9HtuwiAgL/9LML+ku3z24bFxiTeDb+n1xXYmJxjvyyfldwFq2JjcXgzZLu94r7WbFvQdeNfEGQHIX66N3N5BGjwV8Rg7iJW42qIAt7y1KDWw8qASUr+c0ZjrG9Bjj3WkQZ2xMzN5iCe4iTknFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZ1IgDQT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZ1IgDQT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFECC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762297793;
	bh=b8lAfCXrnUNDLcB6wi3wJ7graycyV0xuEQw0ghvyW78=;
	h=To:Subject:From:Date:From;
	b=UZ1IgDQTXv84tpb22vsscqDl21xBPTIboiKIq9jSGnp+XMDDiz7IeiYK89XbAO636
	 /SAwOWilEUhwUhcsXaVl/vYh3MWAgPBGEFHssA1jwE04kFCkAqPZDY3IePcJzL6AnB
	 SwAR12FDIVXe8mZaIeJBh/SvyUHAruQ+BgjvcORGH/+aL7tLpYH8X21xZmhrcMt/N0
	 zWbujc2PvaQD7RgBJB9aqkgQ/RA7skbJKnqPl0EuH/eGGSvWp4IlG6f87MLAYFPtPl
	 AdW7rujmPzlhEvpJq2RdqJbwd3pQrF0MjF7ZYliHlOtmNIysTmJrFoPCf13TSJmR5/
	 G78i3MmbrW/LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90217CCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176229779358.22157.744296980315050702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c386f7c26bc394a27775abf916cc3cbe1fb80b0624f5d326a993683bdce6b8
Date: Tue, 04 Nov 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762297793
