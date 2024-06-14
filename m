Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4251B13B5AC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 10:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718361503; cv=none; b=QcqBFoMFzEyGLoZE+YHh0yjo8pMma9wG9lYjKwnavTkL6/BhUmP2zfiO8kSfcxFtAisCgUQA/oZ6hp2bCspp9y8WogHQkb3+LwyWiH4G7Zh9jHU9n3IE1z6fpeDMfn47RKqGx2UquTa/+GH46aLlo5rB6jt4bCH4IPIwHcUxvLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718361503; c=relaxed/simple;
	bh=uJkpYdYmeSqZ3autQa7ccqTc6koUKEtC2CuYLIUDhQk=;
	h=To:Subject:From:Message-Id:Date; b=GsvsVfynRrSwjOXSUD7DZ23Utw70wtQFKje6LhzpACKUS7T7UPB7eTxDkZn6UPTq+RhVS/IJbzguqxS8vz7UEtXQVJ3YRVOgNoEvH/DLBAJA1BU555NnkwQLhllHD+0ZXijtnL/AYKt7KX1BCttj3223uCVfnDG87q6w/lqVQi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJNrgJ5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJNrgJ5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA95C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 10:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718361502;
	bh=uJkpYdYmeSqZ3autQa7ccqTc6koUKEtC2CuYLIUDhQk=;
	h=To:Subject:From:Date:From;
	b=rJNrgJ5AW2O4xYxrNUa6zQHEbfvee4WkAtuOAMF/pk9SjFs6cmv69LPLUnXP/ATT/
	 vhN/I+kvgU7OoNGNcGVWJCXLYUgJg3efg/qxtJwKXXv5++/HTA3Sa8cBtmpWT03WiQ
	 i+MEaOZUifnSqL59LU0jmxj43C2mUywGaz35X50PkWJc3OyTTBsykHTQZjZSbFCvpt
	 IVKs8KWk0yXO0XebFoS9xNYIfYBeTXuKOTson7xkaS3VoD+QcfXkO0OSjGsJiv9B42
	 uq9VSRlvCoDA0BOWSeaLBu+Q3IqlCsuUV7I6Ov/ea4hlypHiKb2w8f2oPuNaWin6rM
	 H3oCrMJCpvNhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCF4C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 10:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171836150276.31789.3425783553320589196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5765909fedc5d4f46b8bfc464d354d6af992875fc2e89b29c005e0f46f24a42
Date: Fri, 14 Jun 2024 10:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718361502
