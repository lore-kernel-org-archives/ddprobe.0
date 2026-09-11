Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1AE33C198
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789137034; cv=none; b=kGuKU1VqmQsmGm9LExOYZbe1s8Y25i3SaRtOA0qIhaKPFnAwxD9UDYcR8ud2TmCDkl+dE8wUWl9zT3j7B3pS5nbMB564cZNLwL2a6v46BLm+O5Lr272X9Ri9fG/68agp8lU0+HOoLDWAtaw9KVpSc4CJ+PxI9yvY5OO+nrr+jyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789137034; c=relaxed/simple;
	bh=tRoN18Z6mfiRBfY3iPtYKtMsBrYPHcG+y3iUkBDpoGk=;
	h=To:Subject:From:Message-Id:Date; b=YpEtzdgnRBkr9KMcEHHydJFYhEzZNn112AVoMgBqgqio6/C6UiQBf7IrTHXc8S2v0QVg5Aq5IlK5DeXy8BkpYhfr6zfRRfIsiYq8yDalqq/FrqCs6k1I+cJwZ/qr6STVuBIYgec1iQgEkF9QFTv5mcaH7AIQlRr3OX6VhGkZIZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6zjXWVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6zjXWVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BE7C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789137033;
	bh=tRoN18Z6mfiRBfY3iPtYKtMsBrYPHcG+y3iUkBDpoGk=;
	h=To:Subject:From:Date:From;
	b=Y6zjXWVG22Mlo8teNSI/PQkTZ5msu5dlDZktYOlKoMp68uwtWu1uotHwrL8y1cs79
	 7Eg3RgvvRp7FFAAWXCtB9nj/2Y3koxG9NTOokPK15qVc1XYPUrGmQyvZHc0mGrtYOk
	 9Zc0vI6M+L8q9WffFcqFliBssZAYyejw3J0gZzHBoUXbh1y+mzTb+cyF9tLDzxI8/K
	 Bmrr3JeM/4NUMStQeLPJxX2YaPUj6JhkYw13jR7ZpkUAhhl7MwYFeIP/xUF3doYD0N
	 XWaYpfP9+LjdUX8uDQsPuHSgPaQbjdGHG84thtfLn6irS9eoti5FIoOS9rTcLDqKve
	 m0qcUM6NszVUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8C9C88E45
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178913703369.6367.1270099503961974804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 869567e0e8e5cd3dad8f18eb5f4063ca033ff90775c4b755b16950df713d8ef4
Date: Fri, 11 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789137033
