Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2130113E02A
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771282494; cv=none; b=EAwxLbXIhaix5WG+/sSeraBNVGZJstZq5SKDqC7Sz9eqxct12Cv1lM735mXpdbBYImr21oHKs80byDnlcPWkhn8vUUBCSH63CKrbr9bVXYrnf12COVvkEV3m1ArpTrn5XUGe+Mji7nomKqtksuL72MEG65qhkl8hsnpvuXbppZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771282494; c=relaxed/simple;
	bh=5dvyDWHBPVm2o6fz4nUd48M+zJOaseNPzzN5LIzeKd8=;
	h=To:Subject:From:Message-Id:Date; b=bZeUIIVeh+AwV3uBaeUlkmltIlA8mru1xI0yXkvIWV1wFDHPK0OilaoK2qEwfsJuK3yQ/GaJsuDwOtub3gSZEMtSY10yWJuSmow5lIxQQzLxBwBb8b9C30PBdXKZxUc0B/DGHH+GiTXgWFL5tvM5Ng3AUvEdj8QlXc7BPzf3z2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfIpOFXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfIpOFXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65ADC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771282493;
	bh=5dvyDWHBPVm2o6fz4nUd48M+zJOaseNPzzN5LIzeKd8=;
	h=To:Subject:From:Date:From;
	b=jfIpOFXJJeghMiUM3mij4deOtPCA+2d/MZ2WI00xJk2/vn5IajnwjMm1gf+By13D7
	 gstNUybFA+QPOB1LkIX9RhERThKvp61qeiO37F9OVrw0MPex/Ox7ZsG3ud7/5UFn9S
	 mDsuPBVXjQM0kn87JdDD7CVxQZdD+pypSBE/0WMrcocuwyd72THo7hL1WjYYx6uLyK
	 sU5M357LufOqbf2XCAcFrEp26q0Hlp0/KBqGqBIiAEF5ItoKPt0WJ5IL5J78tXTpFw
	 8clidLLLAELCXbrpZfMa+BudS98Sa6bhjEvfu22/VSta92wuQjZGfHiImrKmi+Xzwr
	 t4La2bI9YsXKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916B2E8383F
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177128249358.22954.8142093330619736839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97d5a1a3b6275978e2c038b61a2128e2819afc952fb02c5eeb468707f25d7d18
Date: Mon, 16 Feb 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771282493
