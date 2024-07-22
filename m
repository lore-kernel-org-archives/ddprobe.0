Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF7416D312
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721667953; cv=none; b=GRMboBOWDPnqp60GpWvB1jPOvcwxzERbG77ouIsqPCZAXtuw0zvIi295kxT2pNaG4X+AhAZ2FZEEI7HUgnrY4f+MVpMJqWyBvqN/0tRWWf/MsrX7gY168YOb+lQVfnOiJrkoqxfUokhZftuIEuYe1DzP/j55YecsimMnoT1duew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721667953; c=relaxed/simple;
	bh=Vk/xNMucqPBQW+FDyclRZSeFXs7u5mh+AocI4lF/4I8=;
	h=To:Subject:From:Message-Id:Date; b=h159+iqisld/YgBhGku0CWbxItf/dwOrQdxCJKDSBTpZ4HdU8oYgkStfQ6yBN3S1id7xjItc2OmH891RwyI4EzdtzwvrVHN8h5R5EpfZUW9KDJJ1igyYRBcecfyXAOptZW6MNFsIsqgjiXCjGqmJchSKS7jJaZKKqfn/Mes/LdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3cPg8QQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3cPg8QQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8E0C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721667953;
	bh=Vk/xNMucqPBQW+FDyclRZSeFXs7u5mh+AocI4lF/4I8=;
	h=To:Subject:From:Date:From;
	b=Y3cPg8QQDkU6r84qz5IjZ9E6qw38dguMZnqCOiYttK216jK31VNGKEi6THd9JtWyX
	 s/eNk38JGthd2cP6zccYSzTRzwhmQMFPr/C0SzkgNKbY+JwaXJ5fcELFDkLgXKgB66
	 +0dVDN1j4LB1R8z4pOe4KmldrNgVfYaH+HS0vwHbp/CH5Y/po3Yx13dbPDk+bTIYyN
	 wggVqOpKHwGXED5rB0oir0seydfNJSwHXIG4Ua/QcQzMcFr9MCaXT8Y9cDCH2ZFEx1
	 l/lQrKdkuqWGq1+28FTE6MPBwY3MDRWodO1MoSCwYC9rK/bXshMDJABbw2GzXGswT0
	 T4wadaVDC1i8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995E0C3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172166795361.6332.13868301613619577424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c49a113ba22c2ab2afdabb9bbd7004cab0889184482f946ad7e5239a3353113
Date: Mon, 22 Jul 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721667953
