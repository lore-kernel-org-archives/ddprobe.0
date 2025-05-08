Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BF721D3D1
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746694194; cv=none; b=S7A/oJmLQegn5n9cKWqCOPpVFt3qorT3CIweMRYGdx9Db7NMKDlCHAMZ7y3gRqQUj1Q6zZrMvnlBFyOWo9LPyJWToByJe+KNfh8EwubtMWviNresMWmRY7/8ENaws55tIPMcaEJzFI1cxUuPaVdw6oKjtAT3FKnPqk7JO9+8Y0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746694194; c=relaxed/simple;
	bh=tS1jzraMtKWW35kBHWH1fQZ9MqLkm443dZLYiRItdxE=;
	h=To:Subject:From:Message-Id:Date; b=W6zGxjpNGYsYU4ISBo2lxABYiIjeB2kzfu6G2IyPHVgFLNYXi8zD4XEsUo09lMPpYqHN42TXpP3mOV54K7dyWItVKuN0uZYSEB3x8vfJuSF4a7EYtBKltuXxfScqDOA6dztkfUquR7mW3/Nblu+JDjnqmeM88StCGKujje44lZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6xCXJeb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6xCXJeb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EA9C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746694193;
	bh=tS1jzraMtKWW35kBHWH1fQZ9MqLkm443dZLYiRItdxE=;
	h=To:Subject:From:Date:From;
	b=f6xCXJeb0QB5Mbd7mV/iM60LibWms+v1H/NWPzhosvi1drhBt8SPUgizmRZYotZ1H
	 e4r3KeealT1XNdFv5tKyu9Pa4Bq7cBpjCpe04fOZLXgo52iNUaUPXeVS5h9TJ2kUHD
	 DN7U9Sid+SnjoRFjNwT3/JPr5XIKDrjApzwszUrAX4gmdlQ2IzZ3gNfwSbUyRV5psG
	 F2Af8mJEbzjEku0sgDTnDiNxDC9eS4tgm95ABj4jsGNhTUD22N9jgHx1XhRRNQkJXI
	 idn/HYd66iZQbfdiMZz7FMJL+GBfH5gO51DYE7sFrCj86alD8+Grazm4CEniE8AM+q
	 9o+WO2LY1wCJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F037C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174669419357.10807.5694138915399275527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65fc0ccc28206a7d4b776e3119fe2e76962e72fcf938939c6993151ef9bef815
Date: Thu, 08 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746694193
