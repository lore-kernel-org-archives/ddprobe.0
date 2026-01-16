Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187A54A33
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768587834; cv=none; b=FOpOqweqnEgHpaJ7H25OcyDLDkwu/s4XQD2KYxMyKcCjFSDfariOuk/VZuc2WJRKv5CLlIe1GP2jKGvGfWkJ0zr2ALD90Pi0EPWi0wauPJeUz/SaP6mTrdFmjqfXwSgsoPvRMHY6PaZ2FYx5xaLVyh5kymK4eFVFSYFE2uo6oVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768587834; c=relaxed/simple;
	bh=XmYueagbI8nIMKWglBDla9Te1Slg51LioFutPYG/4gM=;
	h=To:Subject:From:Message-Id:Date; b=TNcSopSIAl3VBiv2T9DwBc4oEZSLXy5lXW7ssQ/yEWZnZZVQj772rD3IB+mzXfWQ02dX7grJwwYGW7Y7yIgXnOE/ojlcSif9xPvNAZxxvlqOAjhoF7e5SLJIJdfsaUdT8UFNWQrmiSgGu+wRgdxtEVmZOk6gK95nDS7GrFcccwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBlLb9KN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBlLb9KN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFC6C19423
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768587833;
	bh=XmYueagbI8nIMKWglBDla9Te1Slg51LioFutPYG/4gM=;
	h=To:Subject:From:Date:From;
	b=TBlLb9KNkWniYrhMfOPxk39/PkD+jACrnc1GBIEDUucMU6cWx6wZPtX2W+v+waU6Y
	 0pgChAqDo+nynabM9YMpds+7Nit3Dn1wqjNUzy0daXlj/gWYlj1de8Ug1ljCf4XGQe
	 vlirT0TVDiOnn48W1VfYcpG9UnfnF8FebxdjA0IZCdpH6qYGwwZjd25LFsZUOzcTtn
	 gnXHYjl/KoBsQsYEGbX3QmbNopMRSpsOO98KRiyxAgG//jWw7LcMGd1u1hKh48IiSY
	 bvG4SD8kHY1ognkpFRvOEAKa66pSPjAZr+RptJ1U+Q13Mw9FNkzCjTr0P8emPKLDJf
	 3GG5FppkMdQbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBB9C982EE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176858783358.19194.9381381164263963571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27ee24048d481784149608e9a52bf9839201455141266293d424b301a2a2b456
Date: Fri, 16 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768587833
