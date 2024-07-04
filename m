Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3993313CFB9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 19:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720122323; cv=none; b=rTpFersJSeaCmjC/mVMfBvnUb71Av+4Ex/6cXfUdJPLVFPeor6a3GWRUNn3wEr64V2GjEBfALjUVThFUFu2N+TfTeD75eEyQ3O/igPAY5AdKmKlEA7VTrRWOQz8hcZAc9hkHpJRaalv0Jhy0sIWuWlqw134m7BbOkbWu5fF939s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720122323; c=relaxed/simple;
	bh=MlzAzdhDGk4JCELvas6JdiGfGfSKVxEMwAjCe1FuPv4=;
	h=To:Subject:From:Message-Id:Date; b=M8CChVDrLSIRVLWBcNAhczMtjDwnlQqe8lW94/tMteu6ZE5wniaCN8L7l5A5Y5i3ymMNKXTvcwRHiOBgtNSMFTGmb826vDT0K3KZs5Ot/k/uwvFWjNclVD1KOap0wea4qKflgGh0ircYhyQMqRSMCsZRsca/1fCBSDuMOSeYQxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WK0T3d+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WK0T3d+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F50C4AF0B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 19:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720122322;
	bh=MlzAzdhDGk4JCELvas6JdiGfGfSKVxEMwAjCe1FuPv4=;
	h=To:Subject:From:Date:From;
	b=WK0T3d+Q3f9zpdSRasiZOLXDP7EjENsKFY0JQovW+lB8DLM6iDSzutse7OinIzeTB
	 q1fPwuXJtm5kwzKgSMBG0mW0La+L6Bs2B7x7HYNn3/PCz1uJB5JYun4DOa1+cWfnmE
	 4oBt9K+6EItZ0ZvWMqS/e3BHngFSIZao6xZCcapo6LCt88xKwKM6g+8KNiTAvFpYHe
	 YW2H/aUaMTRlA75ttlWHVORhfbywo2SOL0u0i1eeVbt+Pv3eLBKug0+T0WVeRXdZtU
	 SJi6bGJoH2s9TRdXXsSv29COHrkn9bhXOsEww/x/pTq0ZAsP5xoSYVoiN9qn44sEMU
	 KMzMiT1ITlxew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3406C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 19:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172012232276.30245.5966298464647687079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f16c15a9fe2d946517dd23dd38d6fe4ccf4c31354a58d1fdebdc03f1b6e4920
Date: Thu, 04 Jul 2024 19:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720122322
