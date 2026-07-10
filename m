Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4412919F40B
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 03:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783655314; cv=none; b=tnnDcqFwMbo+s+xR79mnafgYcYDMkKzxstpa4dD8M7Jl021LL8Qxl1VEanqUlE4H26xUKlKmZiHqQaIdSBRwu707SaYFIacBwnz+JgWZyLTxUUE8/q0aoYujE9JQk4E4TTihXmlQVHY+zOvQTKDL8n6+g5TuZcp4e6NlInkDqic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783655314; c=relaxed/simple;
	bh=MmkGrxIFuM9t2FxtrlC5Wma4tYWf3JYu7/UW+V955aw=;
	h=To:Subject:From:Message-Id:Date; b=VGtbDyKmS9lLn48Ro2T3Cjtnu/xRM8xkKTU92W9oij9iv6Phewqi/1Zda96OxBvBYgznQ4fnDfWVepgeSsjuNFPFWHM9Xulta+7ojmUtu1HkO+WWGrwywpqoj63eGPaH2zN8GeoZuXNS38o04i8cB/GSpl6qUaiNPiWt1JVTPho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WOBaV4Pu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WOBaV4Pu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06D2C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783655313;
	bh=MmkGrxIFuM9t2FxtrlC5Wma4tYWf3JYu7/UW+V955aw=;
	h=To:Subject:From:Date:From;
	b=WOBaV4PuwknSfXxWNiThfuIQzXpLFljzIj+hqk/JabXiWrEh/L6j2JkOZ5W/lqvw+
	 VdyWHoYzQW3RX/ydG9xyeIlDhyaAA9sA0FCBqIWABI7MwzFEGD2kge8UEpSCiDB0cB
	 IWfYJ1cr0D6zXMZ/YUkz6oK77+d4P8D9qvLu4jYA8eKy8/gjyK2G2q3bZCbfU9U8Ay
	 DbBgyNdK37A46LF/Nj0FCvr9MLBSA/p+F9e6oXXUYz5NyD899h9FMVyf4dQd7W0vz2
	 aauVHcaEqfYnD4f7PEchLIokAVq10XhBBzhBFtwfG3JD3dhQ+/0EgoxcOmy6OUfwMh
	 9htbyuiADLX+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCF7C44501
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178365531368.9620.8776182342488203754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d0314fe26617631fafa6f566330366da0e1336fc65afcf9de643e8a16ff378b
Date: Fri, 10 Jul 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783655313
