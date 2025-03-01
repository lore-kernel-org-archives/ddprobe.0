Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA331E0DE8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 17:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740850134; cv=none; b=f9mZUo0LkpoikCG44dWerHA1fxqKmsTQuYXPV3muhyNe3raE2aAt9ur3i3n3imzXp5UQuJXb6YQUrnVveVEUUNQeDF9ThihvOGRVodDdb8MKl0Lxp84B4XpQlkbzQ0rApSlU210os5hHGvmNlIN9NVuCFvHSSsy310Qm4U3MLRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740850134; c=relaxed/simple;
	bh=vdmgH10d5SMpwuxfqfffPmY6JsYGO1tOslipn+hcaiA=;
	h=To:Subject:From:Message-Id:Date; b=nOaVYQNCRHYfDNDOhIPHeYbOikixs64+2ZVM6Xq4eF9Owjfm8pKjQmxOj/dpDVPxz0fIPPl7sHaID210yQetxf9PB3FtoMt+JWoQvsiGQ+VVAJ1mmQauN3fzv4KaJAilw7Z27JkzkMv9H7CptElr4eIQEI0bBwru0c9oX2RuQKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PorCnZre; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PorCnZre"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF6AC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 17:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740850133;
	bh=vdmgH10d5SMpwuxfqfffPmY6JsYGO1tOslipn+hcaiA=;
	h=To:Subject:From:Date:From;
	b=PorCnZreolMrSPHe/4eilXZdwEer0SOp5zW0FNjAh4rEpGPHADUoElYIGSvHCit0U
	 nHGsVGvWIR4Fk8k3MbDOyZSFk3v/jL5QJcdiwcuXZOypOLSNbr76XG7egBZ+WkE7o2
	 1iFQSGr1SvoUZgQ0yV3iBHUQeWBJ4gSMcuYNcya35HbGzsIdmlYp9StcjH87Z06+Wr
	 aO2VBXEEkMJ+/DmInxt9kl322ER5o9lbPZG3Ep1FDia18OYqvAjdEZNEfgg64vJJp2
	 pIJxnw0ZsnU4Q+k0PDFFOk91G+mD4COZaT43sX90scFLlN+c0wg/EI2zrpCx2MiOz4
	 1iquz8ZOWJNkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95634C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 17:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174085013360.28400.15745107221188479014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb80d052c83d9a6ce218f867d58495536c7884b8eb504629cbdf55dd2f608e58
Date: Sat, 01 Mar 2025 17:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740850133
