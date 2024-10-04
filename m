Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5052E2D032
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728020754; cv=none; b=rhTZVV11gRknhWYFsYVAMj7NpwP3a+rwcRs8v5Spg5jfvBjfzABzezo67biPMrfS9n7LJeya7CcVPQRpTqaRlNKyOF11GuHlGQqgwi7+vv8NwFbLWRdaTtvRUibSQJnguilR5/FunFrnQ5oB/9RMA6uvxpJKHB2Kiqv/wwoeJVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728020754; c=relaxed/simple;
	bh=odCxVMRerjU45bOMstbSpTPK46es7YlzQJ6YE2N+5J4=;
	h=To:Subject:From:Message-Id:Date; b=VkVXkloxVou4CZJWVZai61Q6YNdgd4fGUamhYN7B87QkDkZILq9YaO082SMcBZPVWcGukOWxL6h3WavrR8+k+9AUnU7+L8X22cfeMmmSONJgOPykXFLewbht2RkAGEQt+xYMkGKtlk7i84UAPBRlcOpDe41OhKFpN7Zytn5rTIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5viqQQA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5viqQQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37DBC4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728020753;
	bh=odCxVMRerjU45bOMstbSpTPK46es7YlzQJ6YE2N+5J4=;
	h=To:Subject:From:Date:From;
	b=n5viqQQAPEcFmQOFhTOohzDP7csdvS9wQvT7jDou2uFujZGimEUvZdU70sOYe/ecr
	 XCmsoY6IsB7SfawQ8SS7hgA27x+WnQTUK3Cz9snhav8gUH1HRLZ6glxPJXmlfBLITf
	 nAXoQ7ifpO7MElVtE+T8lZzIJOHgBBoNLK2HHAPfq3OrxLbFFQt2ot2luRDVWy5hSF
	 uKpB1393okXzep/DArWh5DRXTm+Xv9y9+ZAU4krKJSt6bz6FTGRxbhfzqx+DdUPtV0
	 C4BK+LaT8/R7exK8XgMajRvOg/31HadUqEyxITxym0k6YJ5OSjF64ZGzrK+yjgUIuH
	 +Xym3qgfsZKDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E73ECFA749
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172802075363.22075.17002694503946087994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb70c35dc2ff2cf66fb63957d15673ce8f3ccbf6ae3e4e109b05368995a4a83b
Date: Fri, 04 Oct 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728020753
