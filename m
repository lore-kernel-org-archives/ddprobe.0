Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337312DAFB8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 22:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764367374; cv=none; b=Hgg28bQUcvbckNaSoxPs8Cdg0mcDfINB3yrDcDVDaGbYdlXegdx8qASOh7C99OgTiQSVi0u64GvHvvTfWwfIOVfx92c5H2FBFpO/2/93LlKveMJeSKVDR7Gvpkq5nCnC+BBtXbRso/peQgUdAQB7AJSKel5j6H/IpbuErs4EkyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764367374; c=relaxed/simple;
	bh=ZNLUm52rCe88l4C1Eqg+zZY8w0QvOe1Z7LfFgehyHnk=;
	h=To:Subject:From:Message-Id:Date; b=AI3SVshhGq6N6iskBozL56721pAY7uveScH9MpOqqGD4cLCqCX3gQnMvawb8rMUFS6KdQfVzHUWlGPegDXl4d5zSJbo7xS0wsbHFHZ94zGOdmpb03GS7/BgDF8rIlsSrnJd42e+dGW7WeBUn77ToTIZ5nvNaTQzu0fq8vCskukY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8sExjen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8sExjen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED53C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 22:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764367373;
	bh=ZNLUm52rCe88l4C1Eqg+zZY8w0QvOe1Z7LfFgehyHnk=;
	h=To:Subject:From:Date:From;
	b=G8sExjen6RGfUlZxgXZ7mXey1UXq4Z3VTrQaH2rRNndVNdHThPMEo7tFGxcg2WXeX
	 +rzCXof34coEFuCFNxh8Vk+B9Ic3vc8oGY1JzDimbVQu+juVop16+8GT4qR6saK27b
	 OIa0YTBgHMgsH5KoHYKQ7ryoY5thXqDB68oHvTunNH5v3seDqFJvXBIUjQG9JqrzbA
	 z16kKd/r1JqSQ3AOhBBUdpcyfxj0wul6CvZIF9RZCYyM8aF5SiV6eQW+pWSPIs0O9t
	 HFPr4cTWn0cyokREyqm2BqF3jmzZ8HlOtSkyhrS8attCGF+mpDUuwsbxBQS8qZM0pn
	 1+xj2aQGx4qtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E5ED116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 22:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176436737358.14889.1006293781888569603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fb3e122b35a2aa7ca449190864300f5b6d35bd62d11f62012e1906ef18c5c35
Date: Fri, 28 Nov 2025 22:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764367373
