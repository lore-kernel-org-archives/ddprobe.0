Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34696EC4
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748478594; cv=none; b=WlFed/IvDIZGDI02iCJmtnZiVfeuUHugk6IBet+68ThY3fx597Uj4Z0X+YZPb9m6cKTVnqNGRn70CWLpRrN6VIYC6qsZ0+g3gKjEPzOrX9BYjzjfswodX95/DYZccePQRmL3BeuMmhe7qPBhZDJmcxzmw1ZWHzz9z4XCkO6oEaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748478594; c=relaxed/simple;
	bh=SHPQTlA9Z/Aoa19uDR6Q1yoLHJ0jXMZ5v8cRI1tcd08=;
	h=To:Subject:From:Message-Id:Date; b=HGy4vUsnjRzvW5sINlpHkbPhKWp9n/BJvu0UER/5Hcngv3UpVzzbdcPogXo1zGZTWiRwHx809evD6XdiFjq43R3PiHNTg9erU4GBmwZjrnDxpudK+rby/HLd5ELmkXlO1ybqPqKhGUsNJD/IYmX+h87kggUgP2BlwdFyysY1Bao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ai7O43sc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ai7O43sc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A19C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748478593;
	bh=SHPQTlA9Z/Aoa19uDR6Q1yoLHJ0jXMZ5v8cRI1tcd08=;
	h=To:Subject:From:Date:From;
	b=ai7O43scZCA8j0d9Opqx38fK/ZJav3IL2JIPTksU+iFuVYbKVSILCvvPEZliZo99T
	 f3brqAG6FO/5NG7nHDDsR7vtn+YcneRmYnbjUpM0srz8QjGJb2iR1F29q5SM4Q3ECy
	 +gK4MITinhldn8VJlGi9o1xwymL8Il7zpC5RYsdA5zWfVaeLJH7IL13DXPAtC/gpb+
	 XIH1sByFLjsEq9HNzUYnD1yhbifmKLnuSlX/JQc10ddoGcMDKIWEtAwe71xXKMHrgq
	 rRqJGS3alufYyOtVxk7Wg5ZWynkErU6d+hP9OduUlmYNWKo2L9sALrvQdG4SHlI2tR
	 Q5wT7tYLNKk9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91799C3ABB2
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174847859357.26938.15945855082305315878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1088ef5719e5af29d3311f352b6981f726d23e52432341b835e50dffbf7ca6bb
Date: Thu, 29 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748478593
