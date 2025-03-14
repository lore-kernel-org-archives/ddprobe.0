Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDF81953A9
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 22:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741991334; cv=none; b=dXtWSuO6GxTy88JyRiW3QeUvbzx1bxqqBf8M6c71mdcViA9KX8KJxskHojkF0WxV0LfRWgvUo8uMwTmf8kZWc6Q31mYS8qGcIG8K3C/MFJpeLdV35/6qeh0c6OcsT763ZcwWiS7/rZt9GGEk4dIzYRkdZftYJf9slNCC8ADlP5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741991334; c=relaxed/simple;
	bh=GabOKLKbn8Yc1AV2XPiw0SJLPRJAT0zxkMto9WflZvI=;
	h=To:Subject:From:Message-Id:Date; b=TnVaOEsF5QC7j2VlnKKatt2YmR0oopswO3tKPkqAbMkzFZA0VDqnB90svcExpdxBerPUWnfG7b9NS3KE2gffv+Nk4vn1BBGIbMWyWkfWgrNa4pPQDUSzqqDEvJbDYYN5IcaTGEp/5oE4RVhDV53GHPsOK7IBCZyR41udUPF/Hw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBSthMzu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBSthMzu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BE5C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 22:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741991333;
	bh=GabOKLKbn8Yc1AV2XPiw0SJLPRJAT0zxkMto9WflZvI=;
	h=To:Subject:From:Date:From;
	b=uBSthMzuKqX6HXbgUlg0VcZVJh8qHe26U7w8+9gSfj00mJGuVQYU1fotoqBKByZ3a
	 eoaqemyK9XCmJpoOgB6A4u0n3eNZpuHI3f05MAqEgdOXcu9sAheH/TsA12oxN+GRIL
	 TfLE6jTxriJhsT65ynRyA7pQewFgEA28u+PlUuLR4c8OMKrIGYyu9qsJv2Jar+UWtl
	 qIurP+/8BEjo36UA09JvEKIMsHI0NQMIq64OBZff2QRaHQNXxu0B+eeOi5WFI5264I
	 M5uohclvlK/xigpvr1uQbc/mz/PNW0vuFg71a6WQItbGZkMiaicIVa+lN5TEOusrvx
	 KCZj/QHIfPe/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96411C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 22:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174199133360.6599.5145780436196009402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b311f2c3dced371b58555ecd27c75df1dc1beb7b3ee3ce593b9bf779177c64
Date: Fri, 14 Mar 2025 22:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741991333
