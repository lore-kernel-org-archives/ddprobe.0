Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B881770FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762560594; cv=none; b=OGmfjyPp9i9eWC46/K8X2/Ny0YaeJ8nMFb7HfkxZZ7Um/ndhEEHhQrZia4gw+NXpHelJPV0NaTjQAWrQ2clmqQyb+B2xqqxE0cvtUjzqIylw8OHaTIFg2OD3MdreazgWpAN8O2P97RmE35ibFGFJkNZJt4vW5QmgIJPff+yBYa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762560594; c=relaxed/simple;
	bh=dT+b4o4M1WsuNRMLJDTVvLpcfG7ut7WPDFvckuw2IxY=;
	h=To:Subject:From:Message-Id:Date; b=L2zujQsFZpd7t314uCl22eB6YJIClKjrDZRzzZaizQ/r/cvq9rPYz3aMKK/lAUS09OMjvqFXwKqQ7IhjnxukhinWIjvVOzGVALs/GGzXogn9VxCKY5Fgew5UP3kqb5oV49Xc5OsDOLHI/UxXrU3AYq/aZFcFl+uV8NvoXPvvCi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUgpmtRS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUgpmtRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A348FC4CEF8
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762560593;
	bh=dT+b4o4M1WsuNRMLJDTVvLpcfG7ut7WPDFvckuw2IxY=;
	h=To:Subject:From:Date:From;
	b=sUgpmtRSkBJJVJCQWKQx9ArzwffzpOArLHfzj4SMKv5lugYGTI1xnng3iKh/65gOK
	 96s9Nrwr6NBYRUpzVxmERQ/WgK/b4m1xaI4hO4w6bE5VtCgKWzf9OuCneTl4hK0yak
	 YyXPOUSByyumO6fTTd+Hc6ZFXEaMNap2LT1SaA4Hdb9rWMY00VA4d+P8TE7oS6xZkD
	 5hGWJOw2OD12REetnTa6hI9HX8ZzcYRWvOzYByH6WY/rJd3rKaTv7yi2YFIrncjy0S
	 WafCla5CL0+9Dc/xIM7jsYxgzGcAMgBxdi+Bs9zbJ7OPo+n1mhSfsiSdnKHWxyQ7LJ
	 DrGngFStOgC/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9308FCCF9E3
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176256059359.20933.13742580686803859169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa2def6e99542be33208518f2d2ed8e4ff5d1ae26c94d13efeb1924e02b01621
Date: Sat, 08 Nov 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762560593
