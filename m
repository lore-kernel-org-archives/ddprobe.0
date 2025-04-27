Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262F84A18
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745769594; cv=none; b=HObh/YGTZd0eLnkmidcPK/R439bi2Fqau9xiAbyNRvfdqWcwIZ4xjIRIeeWZnGx8y8MQ1/hTos7DsJuMVhFfAXirae51P3rhRqtVbFyJ0XFu3gxRXXruw/osDuR8hAiTL5qtC8iJhn7te/RQVKMW7rXguDtFEL9g2V1drrX7mZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745769594; c=relaxed/simple;
	bh=nd9zeDlrgK3nVlRsTwEzGzi5lOI0gms2fsQ+9Tc/jn0=;
	h=To:Subject:From:Message-Id:Date; b=K9FKpva2yaJX4Cu53GLQX0UoLUOmwuZt9eQpfI9MGZyi9zejukI4i01innozvMQswwjrvza64f4k/vm0iwe+KGS3dg1gq5DtCGX228T20JSk1kbT990xkR+zY9dO0gbzeQEnC58wYiMw24ua6pZqMwSwjuUQwjJxLeG1GoBvWuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNb66ESs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNb66ESs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6DAC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745769593;
	bh=nd9zeDlrgK3nVlRsTwEzGzi5lOI0gms2fsQ+9Tc/jn0=;
	h=To:Subject:From:Date:From;
	b=pNb66ESs8PCuesqa47eFm5Nf6UgdJQRKZNf/OUPd3fnFGTuwrkoPLD+nh7Ra5bTyA
	 obbXeBw6kDoVIiWm90PV7DMqlKB43EKZL2YjdVw9UjUx51zrxh82m8650tkNOf9Moj
	 1lAwId0fCRWMb1RndJbdDF+EckqcKPkelqksysR5GFNty1yzfYQi4MYauMcCU579nc
	 oUhC0d/fPfl3qKm0Rxt1b7OhC6ggTWzF7O8TeIMPRKlkWpuoXH/2APW3d672oDHbY6
	 3bq2xXyevE2d92h9gTZzEPPcZkrDO6M18M0c/Dq5dHlqeO1QcBJ/z6TxPb4uOdpj4M
	 nYDWmlwnJv4+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBF5C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174576959357.27901.9314846011239489740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e97b98d2eaf0dffd002180df1666de6c19e80b2282d219025a3a57af90ab231d
Date: Sun, 27 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745769593
