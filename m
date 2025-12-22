Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E6A1E1A3D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766377434; cv=none; b=dvn7F0ZUYbWN08mxz+5FqRDpcINN3wI+ZUZVMNxC71dKFFpbisi+Vs1958aFtEJGAZsyDHcYBkJMH7o3sJjWonZ2DPVaW0SoGLZgFymAgnAuF/JDlF3Z1VECo15viDOe6IP+/V64dyLvqY5NrC7+79u1wQVIh3+EOPAg4Mg8szs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766377434; c=relaxed/simple;
	bh=Md0JvOYhlNU/WNJPpqmtp20JgUuQKX8eWhsf5P0ZQbE=;
	h=To:Subject:From:Message-Id:Date; b=EJofSMTvjOR5JWJlpiWFfu4XYsGYASuVBY8+dCEEbuYUPnwFzwc7qLZ48h1cUBxx7iz7domZ1KDZmSZS0a/PVIeOOmKnfj1IzxSvUSgi8BrkC7HgXnEY97/lypz/oGGth4WRMz1oM4nfg0IGn0C51z7B5Uegc7v+B6a0SexwKQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgqn+uoy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgqn+uoy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1678C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766377433;
	bh=Md0JvOYhlNU/WNJPpqmtp20JgUuQKX8eWhsf5P0ZQbE=;
	h=To:Subject:From:Date:From;
	b=bgqn+uoyCmaCgPTPmrisCdhaHx5ufOHc9R6gZ8/mN5c8Fmh2QBB2Fknyv03y7Oimu
	 EiDkUv4EJi+qPB19v2phpedQkRPNohQIB6qG+8Uf5Mie8XnwHgChfc8agRz5i29pD9
	 49fKoOPq/zVEW7X9sOZTqo6wV9Aaka0IULlGqevUmO0uZkf06Opc1AJYCxk6M2Msxo
	 p73/rfc0/eN84/E7EtafOEBrc1Rqq67cMJZp8H2PO46R5Ks1e78AgrkQj22w3cFT8j
	 BOO7UVGgwvhBS4YqwkxDTfXFFpecx5ptttkFVlaAXZWWl/9972KdW1ZgwDcEsJHJWu
	 +Vlt5d9YgK70g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D677E67495
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176637743363.29415.7856015027934341579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceae7e63bb6154350d083e0e4bc20b3d23d9456c1d5c96ad09357bd2342f353e
Date: Mon, 22 Dec 2025 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766377433
