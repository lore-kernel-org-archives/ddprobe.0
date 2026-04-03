Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C821A9FBA
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 13:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775223934; cv=none; b=JFnvwtQDiZkGBtOrUOtymco1PfSB6g8b98o3ftbrsdELmCONB8zGzSdP9vd4WkE/vxcvxF9JGT92kNfwEi/MwZpjxklf3dwjBVO/Tz3ScHOYcq3vSfN7admIYGryCSWiEY09lsSbppfHORTnqhSzSIAEPjncPW01W9PSZ1N1yzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775223934; c=relaxed/simple;
	bh=jot8JofZWjDjcwUuvGUZNWrV/6DO+D3U20Jw1trZ/+M=;
	h=To:Subject:From:Message-Id:Date; b=nMpoYaIjsuLFlDsufLnlqcmy7CqW4xHgvEd9w0VfAK77UmZcyz0CoLhED+T22zpbxgf3qgEMKDWaiqqmoAVJzIuLngUzetodX+fyaiUUl90oh3aesy6cvbtDB/MWq4ciWrj/WtpvM0qDKbTj3DtTaNuh8+nEvVtTDq3Ir8rmYMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4ZpfkqH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4ZpfkqH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD17C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 13:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775223933;
	bh=jot8JofZWjDjcwUuvGUZNWrV/6DO+D3U20Jw1trZ/+M=;
	h=To:Subject:From:Date:From;
	b=B4ZpfkqHAPuNWuntvUc3kH8A84gCbDGyHpc9i6l1a5UUPAL9fxbbIm0dxBir5Hha1
	 SYJJgwk/3Cp4v3ZIWre1TL0CeiuIkikCpXSjPIgzF8Zbf/lOhUjZ+pkbZXN/VRAln8
	 zqlJb2KfmMoVAeD4DRWFGtffzwZqjOCHfK2gVUqFfX7WzWrYtvzBKCAV0BiEwV1alk
	 vjxGrblF875q8rckG9FaUnAT7SCJBeO2gbhAj0aozraWcFxdHC72j4vHOw1O5SvOdE
	 r/xyt4jO/ITfLHJatJfSHASFz/T+GiORRe3PiQibX6VufLrUBlRIxXu2RaVPZfkLUS
	 gEtuSiB5xlJeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCEAEE85370
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 13:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177522393376.14603.3448748332897300989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 599f7ab366cbbd1da262dc3cd1cc2eceed014c235422608165f5841f55d21af0
Date: Fri, 03 Apr 2026 13:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775223933
