Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C5F1EA7C2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746868194; cv=none; b=qOPUk//zYs6WIFl8qySVWBQ0dtbRwKfrNGXCgajaLTg4OXnvEjcTfXW1QhSZgcEmfY5t0agAXYMucFsa61VpS1069d4vOt6wnWuts7HYGzwIPbRHs0vrjSbo21x+a3hrNxX7Ca7PMYl/a9wNeVa8EV+xS8wGOOChAjDtZsB1tUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746868194; c=relaxed/simple;
	bh=CNDn/ziBwzSlG+ooWbobha+3JabZfTM8DedxWN4skvs=;
	h=To:Subject:From:Message-Id:Date; b=u19DXgrjSqFFXRwGd6+pjokYwlt8dPehNcnmpLsON+mquS9C6/fjV6FDufj/I2skK/2OD6B69o8eArTFVBTQ9TlU+ql8mEEsRcLiDN7L4L6GvFnu0OkaXn8o5JXsFkoyMPbYf4zZJqjUAWYYKqI+kb84VxTSTF37OXyaBua5ZIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7tmRD13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7tmRD13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3825C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746868193;
	bh=CNDn/ziBwzSlG+ooWbobha+3JabZfTM8DedxWN4skvs=;
	h=To:Subject:From:Date:From;
	b=p7tmRD13TYq6LS297r43N5J7zwyII029dEhMhf7DmzBJI1gI/VIUL+4jQbrUjQYjr
	 ton/uN+zbpHKcANvIhsfeEJ2S3m52bTY0/wHRlhHsX1wN4Bf3WiDGS4mR8Qw757WYc
	 uKU5HdN9lhRrE+eTpkXbP93sHnNyySTHpE5jvD1DqX6AKT8P7JvG3GSQNuT0VFJyJQ
	 GsDf0GyxKnUXquvuIBfO81+CP0Cnlh30kUEu0Kyek2aTQWFh02/qi0VCs1wMCPI8gl
	 PgKS3DK5WjdU7007J4AoahDsPgLi4zYId0Crm3pphCHHOSeS0uCSTTMhVCERNTr8CU
	 nKNgsN6FrGTZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BA8C3ABCB
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174686819359.1019.14712592923676983042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b929742ea63dac30ffb087be1bc786054952d0efe7c92c3ccffbb42d7d14f8bc
Date: Sat, 10 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746868193
