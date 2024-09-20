Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D87F1DFE8
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 09:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726825554; cv=none; b=dayciubzy5omWbsTL+CfmwUSGNqZqazscO911qMXy/gockwyqREgcc81ebygrN5mYeU/qth7TIzM+nJbGCc0LeIvIcrJGiHP3LxWtbk7SNKA8SPQaAW8AAn9uNFur40Iax5TvKL3SKA/xF+uh/xE2UOa9dlf5T/5Zi6QV9OWq6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726825554; c=relaxed/simple;
	bh=Byfy0bJB2Du4gdBpF6+shziN8+foslyxKDRsVqOFh0Q=;
	h=To:Subject:From:Message-Id:Date; b=fjGaLkbyntgUnH6Zd8oDEjlbwvd2h2VWjBfrq4D1OSwYMTrNWprbit9//C6oCsikokg9UJqUDF1f3auWJkq3VFpHO4KX3vbuhqUukr/8UR1nbmprmVPBRK5xa5U5n/qq75o8zPi+2N4lLf2S3gaHIijMo8UArzDpQGrk/SoqpgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUQEkSyi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUQEkSyi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FAFC4CEC6
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726825553;
	bh=Byfy0bJB2Du4gdBpF6+shziN8+foslyxKDRsVqOFh0Q=;
	h=To:Subject:From:Date:From;
	b=SUQEkSyi9mt8JEaMkUTWW8ovu5r1eQ6F/zCF24yX1nFUnNIryA2zCL9JINHG4rxmT
	 Nby7hLmrVWjEu5c7BD2z5IXw7u6eRleDDFXPW8WnwMkYPNhkTDGplzb9myC3G0PtEX
	 Ug/D2BaOSEm5K+9DHOL8n2RGLjbUvvUHSFnCmxYQAT4wCyVmud1dLMfLmNyQlBDftd
	 M3rksmpXUCL6VhIqalJ2RPz4w6RfJpjlskhb7Xz5foBZbGXG8K04m2XHF5GcknPOhn
	 vfWDStSKzly5yqfj8SfKn0xIPBtfrTdXmLUTvVVO3/1lBx9AYWEoJ28UFvO+NOlXge
	 slSnlB3jcucYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83DBCF58FC
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172682555374.10278.16601998523783403910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89eec0ca4abc483fda0276ad559abcc656ca998b11981f80173c37ae14e21474
Date: Fri, 20 Sep 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726825553
