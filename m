Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D4623B0
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760686194; cv=none; b=KrZtlPnUKfe4GGnziGY8n1kWg8nZnbQPho+TO/HOWQ9/wC9lWy+YgTVi1ODO228P+GcNkz8AxWDXWF8/as4RPA/ye47U+8UsrXq4Bxbv64/5CVpCHXWvDPIwpjx0HKfxtlHXwuT/tmY8xLVxq/NV2GWseliY7C0RU4Ah4LVuA+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760686194; c=relaxed/simple;
	bh=6YqGY5pXR8ZVj5TAikH4PUhIiOZ+IlXa2KSw17l0qYQ=;
	h=To:Subject:From:Message-Id:Date; b=Dfq4Sw/wkcxzhW+nOfiVp6FfYv9GEstET/srHX5pInD4tXHelrIUap52Dp/rzZNp4ohdrko70wpYoHvEuGsppBCl+LRWys44SU74DsQJaZJX/SGZlGXOng8Ea1+kck/zBhxoMIBCnCHRMGMaOx/AmOTyv5cBuAVSxgygJxcsiZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUU0Opqw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUU0Opqw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11D3C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760686193;
	bh=6YqGY5pXR8ZVj5TAikH4PUhIiOZ+IlXa2KSw17l0qYQ=;
	h=To:Subject:From:Date:From;
	b=MUU0Opqwoq4vM9YsdNMDiYpUSWTKY7bt3DWjnL+XtcUKWRiS70sXNnGr0DOkWjrbW
	 SVxkjk0Z2gqGM4apRBPs7JzmL808HEufurCGV/eONWK9NbLn64WwT15GCaevJ28WpA
	 aHUDAiQHLql3WDOFxi9U84W9EB2E8LmrD0yvP0RnyaQGTEyMF6VHlMG3Z7xYfeHOM/
	 M/6b/I0rJyA11ngxZ362eoGSXnk6EpObZP3NmLzqkmwZ5IGMBjoJbryKHhJh5B5qcZ
	 Drgtmw1AzFwWjpmxn+Pabl3JpO/PyvrVFH/h5JhDhHggFAJDEg6OoQlszHSnGH6YOy
	 54ECxgX+g5+aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECABCCD184
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176068619357.20061.11882947022498996878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 194435e5930d882e3ea5e25dd8157418762f6a9761f95785ae5d0b58ba20c353
Date: Fri, 17 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760686193
