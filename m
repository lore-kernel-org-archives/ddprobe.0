Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7A7249EB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754183394; cv=none; b=HPFk9vReY17I++OSKeyxblCEEPTpW6B1mGzfh3IdF0s07PwBvnW+1CLq+/fuGk+wJUEArlUYhhT6VsWRKuObd2vsQyuQmzNxP/aHHbdJ3KYNPRp3bBli7JRFn07mlyuG9TzskJdhXZ6SrsWPKQeDBFxxXc3p17E6Xsc03Ek0XBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754183394; c=relaxed/simple;
	bh=vUQae7jEXVRknf8jK5PO4IFiSri94cBAB3H73jYcVuU=;
	h=To:Subject:From:Message-Id:Date; b=ip3gW57AZQd+yhsOdyf0HzcAECXDT+FNs3gqXDjZAYzV0M0zWZP9E5dWC8E73lLLgN67R2UT6iINjVLJP0ySQhnn5jR0DHuT6VasH8gCpEGDFfzbtJQDpPLdT0z0E+zFyMl1riq6/fE8JUvm+ZoAm0GLKZhSg8DhPtBSAt0hsy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNmtNlHH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNmtNlHH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5472C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754183393;
	bh=vUQae7jEXVRknf8jK5PO4IFiSri94cBAB3H73jYcVuU=;
	h=To:Subject:From:Date:From;
	b=mNmtNlHH6CbO8SttNewq28tQuv/HQiB5PbmzxInq2czXH3aUYNjcyAUtTsAvCCHJE
	 vUh7mBpKoBmTfMnIvm+sDrpo72a43s4kEbEsb9GJFF51CnJSWb9dbFQBtrEbYjC22q
	 /wwhwb1qddFFvIVuG2qPtTSanTIdpPwa3PjvNPvvm5HgbiZ02/fyFhOll/MDiWowRC
	 1V7nEelxjhcrNlzYJkYXjGYkPCy4nJW1pEJkeED+IKQ6UIa1OSJqQvALd4OcPC3NDN
	 q9fvTL6wThEd0quauVxEp2BKOeVP46bT7W5MASwtxF7t/xywn0avLbUOqrj8D6hVtb
	 SSHYOw/c3Ir8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929B9C87FD3
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175418339358.8768.13301443458785733020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26bcedc555e549c1939524d29a76a873e2a9902d25d1c02e4e54906d7339fef6
Date: Sun, 03 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754183393
