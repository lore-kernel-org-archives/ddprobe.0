Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF9430217E
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761647394; cv=none; b=UJzp8U/pE9xxp1yUuIjskRRft4gUZNAOtg7GM0BtK0rE4UzixFSASA5ydZ3rfnAj9kYjyMLu1sWC5ksm+mfOr3wN+azgX6HzeQnvn8CZmDR+NjW751U5eOeTstdppKE9ATtFSCzKDEb11L/pBUPC3NrZpTGo1R1xNKPYvsNXIMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761647394; c=relaxed/simple;
	bh=fbd1N2LxDuZOWZoTHhthPcY8les34Dgalwc2x5eDNfE=;
	h=To:Subject:From:Message-Id:Date; b=NA7xZYtJaKISL+T93y6CjyYuvF/RbTKtQGRxz2jZUj3KHxYni/PxFmd509bS6+37V9oPkbF5AOn30Dw2ZeyCGbBT9rt0F0hR91lqaYEITjJw/A55RQwVrUSHhlMsdK6nZHnYKEjW4uDU72pKhGv8x7j6V1XTyYDdq3MIrp9uR3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KnN2kYoB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KnN2kYoB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39E6C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761647393;
	bh=fbd1N2LxDuZOWZoTHhthPcY8les34Dgalwc2x5eDNfE=;
	h=To:Subject:From:Date:From;
	b=KnN2kYoBH05XllJS3qg4MbLCuZJXWtGvan5DvADEZNhsniofKCWxKNJ7Rk8tljlul
	 Zm014XTeuM+8QAM6gzNIITNjpp4EtHOr6OeW1DMGl1TxLpNp4Aj7cdYpYwDF9auSKJ
	 imAPLIp/g16yvco3CHWSog7unLuVHb6r1ETUDmzJbS6P0LoGgneKPI3QWOpd8syyab
	 A5RVReOI0gDKMz6ur9zNdry9I89hGdJwENwZxKh0uOTg5wzyojB4z/Dy8njRq7bJSy
	 JFl8J10LBihDowbsgsdF+sFYhQh8mIeb0HetNmWUlGZOIuYif2YOtb77IH+scVwngr
	 DgbVaajq8ypww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE7CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176164739358.24401.6468921204445167481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c55a3b6fbb0f21b9e6fff597dee2b639ec833d6864a6f7376c5a944fd77910e9
Date: Tue, 28 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761647393
