Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D52195811
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738011354; cv=none; b=JxMO/+edU3hk9tO6hprK0wWyYeDG23Enqzmfzqjquh2g+aSuZefTXeNNRs93ivgclABZJkeYYCVBLFDni2btqNLU5G8B8p1rbEmMIUC57VJS/EV6GGp5x/aJsQTqr8/jGi00Jy83OTBQ6BwuFmwGO5P5E1bEpHmnDXzdJX34mnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738011354; c=relaxed/simple;
	bh=pfZqa9qTJTE6NVnuea4/MjXs9JoUdw2kiRRgQ3LeS7g=;
	h=To:Subject:From:Message-Id:Date; b=m6j24XA+RA8BaTjURyrPj5hplr+S7BikaXC49qbeYuVs6T8SXQW7cDUDLGgL0pajztJvkxudPx5yUVM+890lJbgioOe5tzZ9RmR2zaqm2AmO5EAcANKEP9zoyCTg1huPXI5eQH5Be2EE+HR/1yAfV2UgEPI63RKnPQxBjWGN8kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2JNia+W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2JNia+W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C9EC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738011353;
	bh=pfZqa9qTJTE6NVnuea4/MjXs9JoUdw2kiRRgQ3LeS7g=;
	h=To:Subject:From:Date:From;
	b=t2JNia+W85usvxJ40M9kaIu6r0RBSxd0B+BolHs3K1CC0OP+FSKQPIY5RkdXHLq0o
	 oCqTBNLVmeDWPpTH8FErSMd27kFpQCPnkCt0r+TD3vuLGbhGSEZws7ssg53RTDvsoI
	 g3m+lppEUPR11oZtlbrggipyBDJGuxkArggxrmgZawKgWOkhB5czOesV/HWMR8xvWD
	 9uR/wJEcfmSLDOiR0M3g6o/s+DBAa7QCYYQfGO43lKQdxepnBtmLQHY8qR2g3XM/l9
	 n4F2R1KqtrgRY9Rl2z3mRaumolo4wMxAUdfByH4zAyRCxeRCMx0OQzrYmrALQlDOXE
	 QfZPi7JybELIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB057C0218A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173801135368.17188.8208422645103851914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b2ecac150a9c6fe90074ca5f5fe263b59fec3d75ceb8fe2c9517ff3f7f322dc
Date: Mon, 27 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738011353
