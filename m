Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 646AD1AC44D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 22:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784759374; cv=none; b=hlO4bW8QgxY0Nk2kXDygtHa9ZnySQzezcKxq77AhM8mYTaqg1+oOwODpOFQo2qA+Vis1PiaTr8jeQH/R3N0T+aP2zIrYAw5pLbvJdAsqqYOAoxQZHZ/RhRRgJt7hh5diZxPGO2YM9aVDXD18s4C+0/xw3V8B3CudlL67R8MiUe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784759374; c=relaxed/simple;
	bh=VisJAgqHZK7QWleF5ZbZTFmvn2HcQkTGir/SUAYWWo0=;
	h=To:Subject:From:Message-Id:Date; b=f0FQhwQkWNPHsODBXHInCdIqXlOXM+HQKShX3f9vrBpXsVXKRcgiU5SdjVn0ev+kbbz2yIyPkMyc8SjQRQ3JdoItNrUNH2ygCDoMM22JfIGi/8KDp2cntq5g9aERfsquN42oD8wMTM4oMAVSeNU4AFo90JX1tJn2wKoT0wSD6wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BcfJiMLR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BcfJiMLR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A39C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 22:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784759373;
	bh=VisJAgqHZK7QWleF5ZbZTFmvn2HcQkTGir/SUAYWWo0=;
	h=To:Subject:From:Date:From;
	b=BcfJiMLR/RN0Nz4vzjWLh/Pb29prWyEiiwJ8NniVimUE6ws5CddhNyF8UETPTpjd/
	 4Q2cNHyWxQnyndqlDm7kd3PUkCZL83H2qQZr6aL8F6s0DV4C8FLpyscaty8fJm2eqI
	 qcayBoHCycg+6rKIlBpvzJTtSsEnr8ObV0INtFVNuRN2aJwtj4U+/w+xiPCicC3MiF
	 Xfke2HmnIW1p+zm3vS8nfGpA8PXivPB6oHcsWN5z49azs45f6ww7o2BIRPUO/qVvXO
	 3q74P7cyK2g2N8Ys4cu8tLQav/e8bzU+vqhBj3l0fusBoMG7GDpfc+89yQ/k1/mlM5
	 3WmVQ+ied4rnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93DEC4453A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 22:29:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178475937368.16943.6189479194440102365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bbea56868adeee8f71b9ee52927d7b6c34a1ad78459013edbe18f0b46fc39b1
Date: Wed, 22 Jul 2026 22:29:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784759373
