Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C49815DBC1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761989394; cv=none; b=IKNVqcg+e3rAl0lrsulDR5ghIA9yg1q8lIZ24i4JNkWOY/3kvG34vFgDbnIxPcEbwh3yFHMPL4pyZSd/k/4Q9FPXFcpkCUqMvaXFMjAORQoSzzP/p4sxOEPJHjXVwNEO08e+dYSElxRvj9+C9CJbG5LmX4VcDr2mvsZNBSw9CqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761989394; c=relaxed/simple;
	bh=hWC/6qXCQI5kHwhnEmZeQ0XVe8ZLsWnZEd735hEuSf0=;
	h=To:Subject:From:Message-Id:Date; b=rvVEruskZgQ/C/9KJzvu1UaScISuiKNdr9hjo4U6+ojvBFXFxg4d/H1b4eHxDxSln5V55YBUSiqsBqSUsNiTAcjEYGz7YHQHbxYzQDYDpu1fVPlqeiSBgzKIfJzDaflo/o6V4PtE3iyqcr9rwVc0JzdtAlGpJX9s6KFi3nLrdV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eoslDRts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eoslDRts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B34C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761989393;
	bh=hWC/6qXCQI5kHwhnEmZeQ0XVe8ZLsWnZEd735hEuSf0=;
	h=To:Subject:From:Date:From;
	b=eoslDRtsQ5tzmSeq7Qpuuooq4/uh6gN+TCQKbFsdYb0EjXg0Nlqx6d7AnI0UlP7Rz
	 IPaaYVGDKmsmcZFDnpQRma+sHBIAq6e1A46fZTnon6VNjDSsrka2SZ3qx4UtE+27D9
	 nh4W0pIuEfX58dDLhd3FQ4fKEYu+YLrZUQib/KiHsy2UoSv8ZCuiHWhZqQQe2XTZjn
	 ugSLvACw0n5xTngqquoxc6MZ/tSdR7MeFny9Bcz8/kr2pJG/jSJrwkUXNzRTfF1pE8
	 L9xeL4ZzXUw6XplHW7Q+sFJVszgNiN6tilOfZLNJ9ohE7YPDGOenjFtE1TBL3gGuV/
	 q6h/QmN4KUA5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90598CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176198939358.8436.2606618142486724829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb4debaffe94f5f46db9fed21d510ceab8266c3aed541102d90279960848f49
Date: Sat, 01 Nov 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761989393
