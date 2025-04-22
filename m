Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AC51EB5C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745353196; cv=none; b=QuAfb1GudGevLMl7hUtTt4Dqnq9a1abiZAqXu3eJWdxyt+3tYqF8fAQ2lfOFvM0uwDxIY/n2uav4krG5ZIcIaKr/qB07n86aXYMt+eb5TLwnLZowh8AAmGNC+Mx+dnT6EjO9tAy7f5DZvSHNdPpXzM4GQCMAxRklBNMhKstfXWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745353196; c=relaxed/simple;
	bh=yw6w38eE7iPXvbJGFz2aBuPPh3Q9w+zAHcE3jal2KL4=;
	h=To:Subject:From:Message-Id:Date; b=ep687fjQ9FlEqygUe+86buDf1Jr/v0wg1XcXcP0G1pb9K8BX5bw1CBYfhBP9l5bME5OvUpqZ7/EPOgOzmdmKXX0J1/8dmyfghWfJRxGugsTOCR2Zj9hbVr3/bw07CN5gky7kAtbq6Z43Vaezl7Yp4MsLX1+lkEp+LFCBtEnndB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qti8nV8+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qti8nV8+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67DDC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745353193;
	bh=yw6w38eE7iPXvbJGFz2aBuPPh3Q9w+zAHcE3jal2KL4=;
	h=To:Subject:From:Date:From;
	b=Qti8nV8+TE2wHceehbXMSHZuaELzxZMq8UXdhZ26v6KrGylJq3qIFzNaJQ4rUpYRa
	 Dxg5ZzoewdH5KTIrsUKsCye2DN8sOQX+u+I3bt0Y5NmQmkAD3nGlv503nDnaOCsc3s
	 X7l1KcKn4nIolihV6xgBSNz307xislK+aFeCjOmm8TyrHfbQj49jqrU20XvVMI9GqN
	 pSfYgYH+aZsOra+TLZpW+BRrG9chKEvL/dgAxumQnzplV2tvPimGfiGEj/niuHSXmc
	 jaVBkfCNh2QpOHMS1qlzGPQzU5QPatIz6lK9lU+LEkUh8XaxLcawVe7gVjijLdtyf6
	 +NpVbq1NFFu2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943B5C369D1
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174535319359.27182.12181118432994064387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa24e1ea5f0263333c2ff974ecff8771aedeab6a2d295f20b9f4a284c0c3b5d
Date: Tue, 22 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745353193
