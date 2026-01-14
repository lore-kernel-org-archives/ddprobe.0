Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105FA389DEE
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768391034; cv=none; b=Aj6OBLZqTb+srHWpSKR5b2GxFlnv3VoaalXqgkSEMsYDlC6T/fbAQsTVnp50aLVt5v9QK52oikdX5mKAv7Z2Y+tQ/bxYAfNMVEKY4obFPuAMpKdWOhsHrbTGl11jfDR0lC9tszk902k8m3NaY/eIl3fUy6NGrUnwfy6I1wLlWn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768391034; c=relaxed/simple;
	bh=44ahspHxtm/xZVDjuUASEv1Z6vmjKvewlu8bJ7Y+waM=;
	h=To:Subject:From:Message-Id:Date; b=EiRkzQsCyWt34dxUs8P5A8UX43pwCvOmrilMfCChQIBdM9HdyzfzH8HyUaEDVeRUjmteZ0LVDMqIcPvpmNsI/KpQgx0DYZEb1tGFFv5/6q7qzsF0xZEekl0iZETdtlLzki+dAtQm6eGutTSYZg4kyQ4JREI8DlpQPTiWJDrJw10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Syb6HIfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Syb6HIfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2023C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768391033;
	bh=44ahspHxtm/xZVDjuUASEv1Z6vmjKvewlu8bJ7Y+waM=;
	h=To:Subject:From:Date:From;
	b=Syb6HIfzRdbm9BvUdloBl69UgpFZnbxsJKCNxRzKg8qyJnDChtj9C/8jP+t7xXnuJ
	 386j80j2jTyAWDNU5nLahwO4PMXeIWqrQQ2rFf7y17xrXo6toRv0wPuJmf4TuIhK7W
	 VagMqe6WZsq4GABOIYoa9k88UFmaGqiAtdjuI0YvQXhbuH1cpit4sAedVYRK59fqRP
	 E/gbNkq4TtfJQJbSUZ5xIHewcpcrvu9WNipDN6RmmqtqzJZhZMSxrV3+a2iRZV0ZDz
	 TaRVn+lOtuQjq7J+38h7L99UtrNdataQuenTUttIe/EoH9Pv7XDQuzUnoy964UbJiF
	 eN8VvaPC/x3/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94925D29FF6
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176839103357.31727.15237854765260594626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42cde5bdc1163b08940d0b20072da81615532f6543bdc5da35575a5f293453a7
Date: Wed, 14 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768391033
