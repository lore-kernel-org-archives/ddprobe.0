Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5D3146A68
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732978554; cv=none; b=sirSyjhF98HgZNZEYTD2raqDVunIdMJgg2H2uWgl8EPoo6MyrNEVJQAoamGni7mSdhRzy8xgWXLKcAXVrNRFlMR51+0qF6BnkjPCw+pxylJfTstR8OcgbV/YPwnoKNP7zGEyN2FtEtFjupm5Jx4f3RbhVTaVuqNWRm7x0mcIHfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732978554; c=relaxed/simple;
	bh=o6X09Km2zYc1p+tvEuOi3NmSCv+lBYlZbIppz7Rvbb8=;
	h=To:Subject:From:Message-Id:Date; b=WWA/+huqqKTHWNFH2GKHFNri9AnnYtggaIxPMyWDjZheLrLIzy8mro8eVmn1koq6j1RxpkBoNEyQHVHHlq61Xh3fTpsfQxyRw7KxwnasoMcYxlS8UHh5EARM/M8UG2nOej+mjVlVwWQLefS0zuGTEEKokM2yY5jzkECWClVht6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSqSLCdL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSqSLCdL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1F0C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732978553;
	bh=o6X09Km2zYc1p+tvEuOi3NmSCv+lBYlZbIppz7Rvbb8=;
	h=To:Subject:From:Date:From;
	b=rSqSLCdLKedn0SHAnJNIVnfvb/hejGTadeEGfXPfubBXB7T6dbeqaowe/jHOUufwb
	 XJtho/Uh2l7cW7Dt7vnQkcMNACRHuhD6b81NuQMJfdvRl/oYrq2XYyxyZkUlY0CaIi
	 6RSbGnWMDFMtxahOEisScIcQHHzvPlCe+AnYfWBN8rU0wRUeD6DGw2L5TM744GKpFQ
	 QxTV+EiV4aMuyTG7eMU6NzrGSMVknZs2c8AhYO0kxWI8oNomkNxLK80ABcvpZYwL9Y
	 XfpZuBfWe6FlDaZ1KXRNofpKk6QRsP7Zm7bQ8bUuM3FQFrryzhz3dN8HrUs0HrBUda
	 PaH00L38pvNSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91413D73604
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173297855358.5560.16579496672455252076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad2ba20ed40b04b4536e2203c7f22aa254e5509f3e82a0385d990f5099db842
Date: Sat, 30 Nov 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732978553
