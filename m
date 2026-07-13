Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226313E2747
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 11:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783942114; cv=none; b=knZ3VlxvYrIvAe83GjfcT7H3+eF5pnrFwRGUOStisZeiWFhY5GuLnHT0lid7uT6ruF7RqJSzbNO8hWnOkUtMC/QcarWHo+D9RolyURb9tQ+42LgkfbWXFpOlLAvsDzOaAhDWeK5EtINe55O4KOunHawVP3nS63kiQ2Xj/H73MSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783942114; c=relaxed/simple;
	bh=yksP8dqsoCPfvToO9PnjUVZLR9iS71tksD6hvDiYx/U=;
	h=To:Subject:From:Message-Id:Date; b=Ztbs2nPbf93gf4NhFaWC8M9WOmIv+I37Yjcx4dV0UDmQHESPLj1cT/T73nYJuIYe95zlyoN2xeVlQ2q7Bkg6nzPM3cfGZA4/ZUTpmYnUZSVlpdFU2UQqZkgPysFVwNCP3xhhfXL5zhXM3NJIkTfYLdo3gW28PGq3MZQGzlGcSmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+IueqvP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+IueqvP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2FBC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783942113;
	bh=yksP8dqsoCPfvToO9PnjUVZLR9iS71tksD6hvDiYx/U=;
	h=To:Subject:From:Date:From;
	b=G+IueqvP0gKNaCIaEbT+Gr743b8FdWIpNqZ+1Osya4Sp8eNYm3Akxoh+3lsDev5Cz
	 XDoEmpFB3agbK75Y4elfX844V0CjUEj+mLMfxn06YDhxNiyWqlGt3Za+viI8ghvB/c
	 4n+vQrHrMBug8x6Plxg2zDOOCKHH0TeIb3YoqWWKbdzoEBngVQ8646OMM6AFSwcQtF
	 ff8v4oZL8hUzcw48iJS6V/zi7VF9HokplxIS7eUcd3Ew6RFlg5xUcKBrD0YGFZ1bW8
	 0+mM1YuUqIjEQRXopB0NlYK+tE9+2sJbjt/MvlFpeIF7w1ao09M95MhfCPUAuWJsG1
	 kIOb2HJ48bIkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ECFC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178394211368.25201.10161766819626998330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d78ee8854b95f64cbfefc035810e7fcf390a235d87179692f9d5c040298b8e08
Date: Mon, 13 Jul 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783942113
