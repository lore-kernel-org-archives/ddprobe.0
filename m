Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB9B10E9
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726299954; cv=none; b=H2zCFgK9zgAlAk6l06nZq7vR31iQotDB8pUrC1/gIpXHFzRTKiQ+x87szmeMmgvQyeGIU+u5GpmzbfVTw7ssFONxifM0+LdfkepPhoAifxB9p21VH9KqGdwlGBu1d7DSzV2I9VyZDAgXIozL508gFgVqu30GcKPapKbTVjfZBuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726299954; c=relaxed/simple;
	bh=hcSEow9G7JO79DiZHo5SwHBY1aK0hP/NG4G0KJQ4SQI=;
	h=To:Subject:From:Message-Id:Date; b=gqdEzK6GHHB2HanzcNLapkFRffa3z0b4Dfj5CuXd+mC+YJNNVW0omWpEDhMj6bx7/qEa/PwJHi+g4ttHPPJXjDR6xOAivsfIYmWlJ/qRJ1MtwHLQSVPioqmxmLPbii0tLd2Tpeyo+Npw8MEzvCdeFrmXAWD3NzVBeCsccAGgMr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KRqZK///; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRqZK///"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0168C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726299953;
	bh=hcSEow9G7JO79DiZHo5SwHBY1aK0hP/NG4G0KJQ4SQI=;
	h=To:Subject:From:Date:From;
	b=KRqZK///aJAvbh3kNus94dnz7KKLb4GAuR9oU62bXxgV2zogl5DLLVuRAd7YDTnYb
	 pfBUtc+nTPkoOfpU1fFmLhSffn+EbQYNUDgTBQphxgeTrPTeyC1yYdwWlxknqWm55y
	 Y1NWEeQrK/G8NeRaZb0m+WvCSor4T81R7m67/H04HZNfWF8NP8nu+cio9teVE1Pv/O
	 EA58aVQpma1Dv5psPyq6145DEwtXDH4Vx5WEkrghIoK8cjgnUCP9q5dXIu4OSnsMIC
	 1DnnNIOWLIBxUXORuPU68licErWxBU+KNUATJU5nTDctjQZBmfyF3xvPSZokXVkkf5
	 vm/DD3enpuhEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A79F1C02180
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172629995363.12972.8623262089441343841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 624ff71d298f847a3714dcafc2ab72f8a79cef54737ba1aa7659bd2be9d7efc0
Date: Sat, 14 Sep 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726299953
