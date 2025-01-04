Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488D7139CEF
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735962354; cv=none; b=PUgYkp4WAbL1LKzwM6dnBVZ8BWK9mpWrqm3UAxjo5UbYu2jqmUoPOIFj/WRN+lNQLBLE4w5V6YUF1B53oCYhtbP2fkDzQNUdwUdqGetVEuyP4GZKngZ5yFQk06Z4m/QxKxeFwv/BXysqdqol9pdxGPs8jYZSxYtZ5KvjUQNIG6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735962354; c=relaxed/simple;
	bh=uQZNHbO019J9HCZa9+NhWeyVPsHiDCmym/KL5iIK63I=;
	h=To:Subject:From:Message-Id:Date; b=OaxxBj5lIXh5JFkiBmOeimtZSdWFsVJsDlktZkuZ9hPdN8yMuRQEI9PBpUz7OmSDNSrmRiMpcqlKJK8yxdTB1myBlirY/a+9BdD57U5LpFMm5gZp0j7ZOH8NsjoZcHA6vCXl0wQ65/pkFH8101V8mlGPu3bXgkWJwqma7LfU7xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dc3qKYTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dc3qKYTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B47B3C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735962353;
	bh=uQZNHbO019J9HCZa9+NhWeyVPsHiDCmym/KL5iIK63I=;
	h=To:Subject:From:Date:From;
	b=Dc3qKYTjRfkUwjPutqFZ1CYpMz8WVKdAVxOv3XwuSwouhwNryHKMlLVgDqbPN0nfW
	 aH/lAf+RPJbwWJ8RgxBkVXGLU7T4GHlSVnbF2pEesxwSdoCtkCZjUttUhT30HEXi1K
	 fCFtJgEvxZQx4TBFuZ5x6wmiuB0wQMmXkFKmUcAZTpxH2IL3eUBHaNBFPFbIa3lviF
	 ntPe4CnpK9Gn/ZLiu9avdIKrCOPUXBQ4iq62Anmcaw/hEAhc3C1X4GLcr30JG/lqMt
	 qQpOtk/eA3FUVW6cv8+MrDYdTTnbeE6guGmFr5peJsU6ViDMVtYKVpHzuaXNbF/Jd6
	 iVMTVA8yb65AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBB4E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173596235360.9388.13508336112050237276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9e8326722fd52cdb6e86d9c43fffc047bbc8f0ef672dcaccdcc44766d6a600
Date: Sat, 04 Jan 2025 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735962353
