Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1472D23A6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 18:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764700374; cv=none; b=lxND/+DToMb5Jp9fqCOZ4NgO/fukBLnUU7JszKueg6Vq3jy6FWIn01uMTHNJY99324Y8OMN8aCop+zvUroDUI91LZ+XvkrJ7W9ELRhwkGcahGeXFzSCj+MRKfi6paNBXTvz84EkySQntWQ/fotX3yaWiAc6eJqUwKzRv8rhj4l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764700374; c=relaxed/simple;
	bh=cf1QTaBWlNQgLFlTUq9XzWgnmq6qqF6T2DlxfzE4Dr8=;
	h=To:Subject:From:Message-Id:Date; b=TnfkEHeqAf+JSG0gauV8ca1v0RmyTbyivvqkU2uA3ZvM4gbc4VAuTeKZnP9dphLZAMSVxAEKsOA9RZS5YN5JoDunWzc+FolXRKjTCw2hI2BWy+3SLleDVA2Z2wxSImLkn06KmjBIgGUR6i0vl8URjkAA0ZmBwhw9EyR38Q7Ljks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYSofsvD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYSofsvD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CA5C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 18:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764700373;
	bh=cf1QTaBWlNQgLFlTUq9XzWgnmq6qqF6T2DlxfzE4Dr8=;
	h=To:Subject:From:Date:From;
	b=KYSofsvD+B2TWQs0/vCmZUgDVHpcPDnG6bQmwNTCvq6nhSbPWq+bcw+KIBviYoBkH
	 uzs6PUlxLNMwaPNV4373OSB53BpjnRT9AmjqOwCzoCWatDqn3uA6eHzqQFAMzgGYTL
	 flTtI49gRX1WwRtF0l6qkYIUiA6Ussh9Cu2ci03LFay/d6V7ILz3kdMDJSKuIQimBC
	 TMulsoXmDTDHE7OBHm/iZtBRIuNSF3R46T5CaZtelzq7mrU1iIZw3ClB3ILKCxTfft
	 h2Ilc16tj0P6yzioLj1bEHNhMhz3b7zIGgP6M5mj7agrKI3QNAs4zkkaFzf4fPB1cD
	 TmaN/i0layIzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974EDD12668
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 18:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176470037359.25828.17067195543256050504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df202245fe92b2ec0c8c572c34afd72373699650ef07ed4863f82aa13c1bfcbf
Date: Tue, 02 Dec 2025 18:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764700373
