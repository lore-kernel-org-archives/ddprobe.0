Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D82053BE63B
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 13:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775137533; cv=none; b=QmqcA8inb56poLuHfN0LMEVngPnwNL6Oaf9x9SG8GFg0lRUbFaskt3NYwXiDzLbIrSHj0PgRDmR8Thvj5f6fmFETccfK4bkHx5F9X9eyN2EINvGOy9jOT8yCeXHr39wP+2Qpx2BRgeFFBlMA9aHdNtNVho5urnU1xXoElTrDfUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775137533; c=relaxed/simple;
	bh=KW/ErVhBWONj+wzN6r0bIUPpY6/Nq26P5+QBjqOZnSo=;
	h=To:Subject:From:Message-Id:Date; b=Q66ehc+gDCyihU3vf3SaEBB//Hk2+xojwREYpZnKmc/JGwh5KF7zBuIGSq7++lrCq/Jj6dWSvomvRxAp0sK9dA3H48ejBf74c//H55qRbxs2reMOoOCMVyj8gS9SwIeQqVf7TmowSdsxvy8PYslSkTnWEJhtMAvrJL0lQKzjRug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PcNOMDDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PcNOMDDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD7DBC116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 13:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775137533;
	bh=KW/ErVhBWONj+wzN6r0bIUPpY6/Nq26P5+QBjqOZnSo=;
	h=To:Subject:From:Date:From;
	b=PcNOMDDUDpF0tZ2fA2lH1nMxDWEEfZhVlyeY174Z3Vs6SFG2JhQCOq6DW/CCwhs5T
	 +2mxcPZI6woLQJo3CQ5j2k9AcmWkJJZNXN9B5EmLx6JuI6GWFQC1vguDKS+hAk1k3j
	 v7Nq9aQbuUx/sOy57XGavdOtJl7+j4VEgOjktG8qTjmdr2rN+110rjz8Ol+u1hQd7r
	 LXPiZvhiosRRY92tfpm+aXSYMwBEZtBNC6FpESgnY4eXP7fEcyDDOBIbYM8ujr7YNh
	 rLZdLjNvGlI6oOhkpfOtsunXqDvYEL8CRu4HBzjux841zs5RtjwtHb6tmx3LHEnq4h
	 LRxo8feUE6dPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6D8D39420
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 13:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177513753369.23753.15744758734272074168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37e3732117626e15affe1baaebd0dd5edf8ba53fd947e291ad3e0182b7aa3898
Date: Thu, 02 Apr 2026 13:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775137533
