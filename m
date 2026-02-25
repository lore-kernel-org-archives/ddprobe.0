Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09287306B21
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772051094; cv=none; b=u1u1VEgK3xkA+oH+lMBNmTN8nU3mMHyOaE9smMF4Rf8XXuZ9I5lBAJ6ZiH7v2hZA67lRN2ZeBICGM0unFSiX/yPQ1yOSSHtfodG1lpAeHwZn3yeTNrYKEITGpynN7nd7Qiq+VOh76Y6BreovoiiBoJHIVBLBypnKi2T9hJI7OrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772051094; c=relaxed/simple;
	bh=30EmMK9st05db+8+RLhKiMtaixcL8dJhTRMe1I4lRw0=;
	h=To:Subject:From:Message-Id:Date; b=C/aIg1p+o2TlRmIlK7aGZ38zpivmVlrJIu4PiEW9SmQE8ntGrp51huRfNVxGp9tTDqMrwtrvmeWjPTWJPNQVPj7bM0zDawQfO9knzgUMqA+wyvCv5ef9oAGWkbSEgCRFBpd1qu8z6jAEW66ZfE+Vzw4GuXs47bSLjNqzCh2BsSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtUpKiFk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtUpKiFk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89F5C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772051093;
	bh=30EmMK9st05db+8+RLhKiMtaixcL8dJhTRMe1I4lRw0=;
	h=To:Subject:From:Date:From;
	b=EtUpKiFklyXanQELcpmDmXu7Qts8ksvDKaCvMsiAL7hNOuduTXL4U2uWEYxRp27jm
	 lzralf2TmdITVcSZD0QR09sf1jfPMk1XvRQ6TRzbPs7kd1/tVTaYxs3zHFl+U+Vpv2
	 EEAlkxUD0GgDVZ7B9UAMqiB7zkMVvcmKpUPLi5K18FOJjBinSztKRMWD9XtHM0VbLa
	 CZtyNsI2SBuqzH+U07H7WIkeCjhrfv9TLjGF/wrVxeNeaCHyZ/ovIT1Wq29g7z+ecY
	 2BEYZDXPuJXFOEe4HFAVtyCpwmyaCkZgaxauh7QEpH5WPM4+bd7PeQKucAwE5EiaJw
	 3fq9ry+46t+WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958DAFD45EE
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177205109360.18140.10826509592706929640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17f267aa5b83f6a467420575e16eebd40c94b66044c110571dae5db663eb872d
Date: Wed, 25 Feb 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772051093
