Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149802919
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708562297; cv=none; b=kV946euX76inZ9GlzY5FraIvfDQiN7j0iIhXT4K2rKDF5WwAhyivJ/l5VZR/26MKKS61qrrCYahFmUSu5KN7bfxSqneNVHSmAURRmC9HhJhpc7l4Zb4NPQf6UYhC44f2BuiL5ZtEmOHA4x7sgHB4k+MmafvRrMMGOyYYOkt2j34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708562297; c=relaxed/simple;
	bh=z+gOjNYgmR/K8dRKZy/ns3uKl4U3zGRLFIW4ayJZV8k=;
	h=To:Subject:From:Message-Id:Date; b=UY1iMVS8dt/EgEFHWgeHqobLPBcdhomBD7gQThxjVKHFUR2RnOXAyHSYnV7sXrGY/gWcaF6RQHB2k66yx6CKD/sPnrT0Zb8vJHExCiAmvfnabXy+SNyCybWxAvKeG3jXDg8mJg4Ui1hmfRID7+TL+eV1/zGPmcSKjQ3daQMBWD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCxJ+kBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCxJ+kBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CD53C433F1
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708562296;
	bh=z+gOjNYgmR/K8dRKZy/ns3uKl4U3zGRLFIW4ayJZV8k=;
	h=To:Subject:From:Date:From;
	b=jCxJ+kBaPn69FEsw7U3dKEoGjcofoLZV+e723R9AYnyoOaYka1imGDLqwFkh2RhFO
	 QxoBpBuRz1cFj2rlfWvy1Pk1p33gkX3/mmEC3gJGvCeFvjKFJ2ow88WWjxO5PPda0D
	 Jkc2st7vM4nr/BMmuX8iw2cntYzEYOcNCSBeT5PjfWhV0fj+GJb6mcM0fKZ/CV5I4d
	 jdOc90bwWIu+Vov8gNigVw2beBHPLRsM3/92MpIp7eJt4811l1E8S1Qh76LyBPdVpL
	 M0MVDIOETuZMzP+HKppl1VSlVg96XICK2tGvEcmgJ6lwtauaaOLdJsCIq0bumY8a64
	 6oS0T7aiCwL7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F4FFC48BF6
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170856229638.10095.9188868215179981743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cacb06e67c5224ca3ea60d3484a012bed86a028f3fc96b8bad6a9e2d1d7f685
Date: Thu, 22 Feb 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708562296
