Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2EC24DD09
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761042594; cv=none; b=NHIEgBpi+/TBO7i8l2KcS3ZEhxrfhcaJe9MF4eKrZvGgpESkIQPFvPS3qtz+Odckdp9mMlhe2L0auWmZFHGPYbuaBM9R6Oh4XDANL191E8X3Uta76FEgh39q4FfIEq2CjfU3ikSlJW4DWaxEZNc1FVqotPiqgYkPVefD4zg1Cro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761042594; c=relaxed/simple;
	bh=u1xdJ2BmgE9S3YAfFNrI2/YDNdExd9+JUZPRFn01fQw=;
	h=To:Subject:From:Message-Id:Date; b=ipSwq+Ntl3iy6IZ0c8X8GlcufbfA3gqLFVKl4IJxxMLOlQidc5hm1zxjLharXWwsmDONQDHc8v3gC/X59sqwSpKSI/Es6JrQWdJnPApgY+cUj3nXkAWkmGb+t9uJUpNCtzWX6fOnHFUwNocMg5mlmUtPBBRIBCkXJWliQ7wmxig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p5Wy1dbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5Wy1dbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03C3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761042593;
	bh=u1xdJ2BmgE9S3YAfFNrI2/YDNdExd9+JUZPRFn01fQw=;
	h=To:Subject:From:Date:From;
	b=p5Wy1dbDwxYtTzZruX0UIP/Yu8duwY8Q2W2+644FRGzYGia67WfBSdfEzrXJucbHY
	 t7o++8RJUaSFez3HAIuXW9RZGNzUQChEr2IlaigBUOnjFzuO3IdjVB5e1RujQEpaZq
	 lk3zZVjsG8rRqU0Eb1Apf+wDpI4zTtT73pBz++qaacAfxBUyKtFaFdgJBJZHuiNBeV
	 RR6pqhGdl5QPyqa2oXSsHimjFZOIGtNFKQRzyneuAIzCMf0e9RwSlJ/8TMxYIEGbeP
	 VbIRjUQJcKx+QJweo1osWO+3Ggr5h/PYErvN/AkjZvEUlxDhtr/JnmYI+vPo0Iuvq/
	 GQjeg/6NyVRKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF28CCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176104259358.19420.1966961117925910838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 289b28bf95bd0a839fc9ad661b9a73e8896bfacfadf877046c86bb292b1c7be7
Date: Tue, 21 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761042593
