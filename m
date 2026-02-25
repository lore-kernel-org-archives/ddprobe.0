Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14ECC3EF0BC
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772048694; cv=none; b=gSN5PfVO+VqJZ8m6slQY8zJT+xpOfS0F0QQlUK28l1qqD5X0JLP9jx2is5aJc4PzJmeeJKJUUXHEMfk/Q646tkP/I5iymg4vlRkWLbeWFvxOXFw1sMvacXZaIBl4K1R4ozhBtJGowRYK0qMI8r/O8ETVGZaxOS+tZ5SiKLFByGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772048694; c=relaxed/simple;
	bh=Fk2Br77qDIgt91fZb/hBd2knZNQ/1DuK6iBphglCJV4=;
	h=To:Subject:From:Message-Id:Date; b=pz+4ucsKRfUceVRAFKyoA6fhbZAmAdhq7K8a4/K9amM1tgUzZZZpL/n1XRgrfT9AlppILv9k1g6Cxz/dYVAZ6RrKtlVpzAyY+Iej81i8TUSeat2DmX7kyx3fQapzqk+5ONuBBkHXkheKSdw4dKvccIIQFExyv9O8eD1siwcO+Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JpBCYBvD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JpBCYBvD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B655FC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772048693;
	bh=Fk2Br77qDIgt91fZb/hBd2knZNQ/1DuK6iBphglCJV4=;
	h=To:Subject:From:Date:From;
	b=JpBCYBvDfaXjKaNYhWdqSrr4MNPrR7tLfTN12lAbP1md8c2QLN2fpjH8+b3FEyUXA
	 k8lMyfuveRuzxbLzyoPWI+0As/gdkfZe3Vpa5NlxPKM/YMqZKCNJ9JnTtt0Mbrveh0
	 EWmnuDDVdakqwQps4CSB0izQbFUprOd0Yk6UeFWFhGNNno4eQ/RlI9pdGQkJiwv5XS
	 DuxKyKbib30jFMtU+9NGMyxOUJ3MkxmXEAVL0dS+FVJqE7K2hAD9M8gLRIv50rZIzP
	 To7T+KFNgV2Fb4cWwEWawbdBka/+egMm4lBiFqAFmdvwOhPwqDdongO+zFJ8N/QavE
	 ZJN4uMcY3MWCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD26FD45E2
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177204869362.1471.12950410499935453357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb083a66e7f7d6f1aff6f74388d24f2e50d2a69b625237d66dcf62a464e30291
Date: Wed, 25 Feb 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772048693
