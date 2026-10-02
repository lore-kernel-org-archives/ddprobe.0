Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0CA30569F
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 21:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790976034; cv=none; b=C0BY97f3LF5uSiIrQUrRXGlzPcEafA4IsY0/8zgeVtxL+Ox/KQFjJV94XLFTewJWjq/WjDfLF7hoaQ6WGUXYplhXS2vS9nKwOBgEJgYp8ZCKdRehpPTTqfEQSg54zHUsd9vqZoeQsJAkGVC/ggr2bf0BsdaBrdZuRPXH/GRw0qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790976034; c=relaxed/simple;
	bh=is4c9/NjuuS874L9VqxrSU0QpHLqUIXzgJg9f5TaWoA=;
	h=To:Subject:From:Message-Id:Date; b=hNlOL8VWlH4nBuAbySntN8iNFtVkzHBy8G2VY8de2DG0YhRpIRubOhhJ8/wKcc/W5LpzmXhAaA0bYOGWuKTfK+JhjIhN3eZmEPdEUhSa2epl1G6B73RQ+f5Ob0KZcPE2AWsN7UHEQ8xlSCTfYCYRzt4+xiBeYxGu5hoKs2csBAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+WF9S+O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+WF9S+O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE24CC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790976033;
	bh=is4c9/NjuuS874L9VqxrSU0QpHLqUIXzgJg9f5TaWoA=;
	h=To:Subject:From:Date:From;
	b=H+WF9S+OOqLeUZxckYg9yn4tOkLvptM3ZjnyqCASKd62ogSOrDswzl2fkaUelW2/i
	 VylzdN2UeSViMCERjoed4JLqLBQ1zLL9yMJnUNHPLqRlZSB4XXtONyom5VCJjXu9pr
	 K2EC/1URhvhZbJDqVBvwd9etdmHIb3tM2eIj39oWfwv4/ZIZNZGz2VWcu//khOTiYK
	 Vh9oel3GEcPDeGIV2xa533a+DkHYOwiEww1BQTkZNyvLZCn+ZRJ4asph8vvJjBzyHN
	 zNENmHZ6uzI4gNXfpxoe7Q+HzLKvRrld2LoQeblT6n6nKJM07UIKEEqJUdv41QIA55
	 Q5/fq8gTV6eXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA4DCA5FE4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179097603369.5033.1549696582002386009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d75ee60c2de3febce3d5c0f575b230445b430491b46fc57ac4dba473cced7181
Date: Fri, 02 Oct 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790976033
