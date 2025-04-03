Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 929E3253F3D
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 15:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743693594; cv=none; b=e2OKvVdAeWwF0kF4KhRkkqdENstCrNsqu8WMDJKoo8Whtrvq2G4Fx3fJo+IvF+f4q8XNF2e5w0M9FuKOkB3OUrFTKLbmQtTyS8Hv3zynrrWO1LCzZqIDBLGId0rRhWkZvtporaRUJkunI40pg7IZ1xvhpefgJWiVQS1b8QhzeEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743693594; c=relaxed/simple;
	bh=9hskYvcp4XHylz8tWPgnggyP9XPwbVStfqywdgxUJJU=;
	h=To:Subject:From:Message-Id:Date; b=YV9cG821npzXF0+eZly/lTCIymv527RQXK0RWUuVqjyqDUbjeCVhTEp0e7o/4XTxq8eloZBbxJ7r4eg1EqScqy+PhoC3geAIWeplf97c5XU3BYUdm5uLzRLJz98zOLDng6doHvwdqwkg/RaA+nJq1vVE4tcLFw4srTt57s0dVao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hi68eHc+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hi68eHc+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB6AC4CEEF
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743693593;
	bh=9hskYvcp4XHylz8tWPgnggyP9XPwbVStfqywdgxUJJU=;
	h=To:Subject:From:Date:From;
	b=Hi68eHc+pKYgddjGKk3UlBpMN5Wsn5BDfiKI6CsDrsENsf8WSp6Ts1veIZPsdAIPL
	 FJXUwVRxdekVk4fJwBGIiPv1uZCGO1W6jBWz0MB5OXe9a7mSzZgCLbKJwxjYHnH7Iq
	 gYkysZaaHDmHyfKGWSHSVetVm5LJeIHRcLwiHltLyO/Bmwed6pJdLwDLqEbuFP6sX9
	 c4MOqR0kxtxZD33+lvVKJeaWf+EHy5xXq1ENZz29KO5B3if93hDZTDHOxyOOg7MMel
	 ZRrBixP9fpYUoNFyNLjAT4VZqtI5OAvi0f7lAT7fdcebasuKC0f57XN5okN9oy+LhQ
	 gAGsiavh0v+PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A32F5C3601A
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174369359364.22959.11676636704579715404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4755aaf69ea0975f25c67abec3741e12099bb40aed7a62ae525906ad2d86a83e
Date: Thu, 03 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743693593
