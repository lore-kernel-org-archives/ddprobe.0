Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C19637F33E
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787686234; cv=none; b=UkdbIKIhlykEcybnVY5KY/gI7sDvElCjDkNVjhB0HluzuclUZdUf1XrZraOS0cJx84IBb8puLPX+wRc7BToqZeNTrr5zE424O5dc1s1WSSZCLGdc5txJ0o4N7uCi/NbXxcjK2sptjM48Ux9sUoC2U7c3cPVD81FJE5DH0XQEbyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787686234; c=relaxed/simple;
	bh=1dgjsvSiO08AM7e1nu37q6XhM4z22fMYS9Uf5/nqzBA=;
	h=To:Subject:From:Message-Id:Date; b=Wgobw+i/9hM3MAdc+WwksO5tdDyEEbRf4GSp0VCO6F3kMRNMmrj2UapdeCtp6870ZI4CQDHCKqKapTqLHyMkCRRbVfPtEvVq2EVzFM0IIha6f6G9dDUOdc+9j8a8qele/S1Lwr9/PwQEWCqPfDC9KYhOHJ8L7Ddh7Z5IrTq8pjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9cSv0U7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9cSv0U7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD68C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787686233;
	bh=1dgjsvSiO08AM7e1nu37q6XhM4z22fMYS9Uf5/nqzBA=;
	h=To:Subject:From:Date:From;
	b=P9cSv0U78Y4K3Rubx0TvosX0INT7zwAx7j7bXwzM3sgNPHP7u+WlZBxvQYdyaBE3Z
	 3ZlA+DoqKTfwhTrrOrSKiOiIBRjziHSJqFyi17amVyOD5868YfTgRfRTUJRt/Kgniu
	 Mt4fNcEzhKUjbHOEP4rcmp97nSh62/cqV1ez8QhGXKkOLnxYPLK2nZXpmXE4rH8r1C
	 dKnsYSoBHwglSTR514/8gi2Syk+ub9h8PORyiKmprVBVxZ2puuNk9Vp/lybKw14oL+
	 8F2ujxJPG8GT8yzCYPQAATSEKJR9zWoieA6zVjOTpxQIwQoop3ZzPakRCzZtX4gPub
	 nRm7IBjEjrINg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB720C61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178768623369.5230.12316810336923841941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c93fcfe7709b691cbf8315f6bc2dfecfdcd3c2bc5559e62351a70878e08b71f8
Date: Tue, 25 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787686233
