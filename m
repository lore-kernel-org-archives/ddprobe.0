Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF182233A
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776540454; cv=none; b=aC/0oQaU7HyIMdFo1wwdGND8HVlDEEDa5y9RD3D0V8vmWSqqmrnfwxcY7/F5/yLF2EDs0cREb0OB45MTdddgvyWDyhz6q8nH1gtUBZZ6W9pCgtVS2/kIyCSyKFLrOHKQPRDFGggyGi6xj/RGIyXzvnrrJqFLR/dJRBeJ8L25iQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776540454; c=relaxed/simple;
	bh=D/TbhqbTe2ZPF4QCrj8LAUdOxiEpZaaF6yfOh2/SZjA=;
	h=To:Subject:From:Message-Id:Date; b=Je7WhjPbnJwh1/1xT2GH/GYZ9Im4KQyEDSMdZixKQYXLpaGXlWtYriiiiYbFA63L7EDeQc+ne++p9b7PB/cDiOHKW+Q43mNk75G/AnYnhu2XjtbFr05c4T3TwekomaqTp3Yg7IfzRrzxZCa6qQymAAg2CCCiDcD1m3Se+rioJ9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NdtiljLm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NdtiljLm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B895EC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776540453;
	bh=D/TbhqbTe2ZPF4QCrj8LAUdOxiEpZaaF6yfOh2/SZjA=;
	h=To:Subject:From:Date:From;
	b=NdtiljLmVnXXxifQd/S6PTsIxlGCo5kKyV/3SOf0Je2i5tH4gtb/IdItXcffAHfx/
	 Mp4Ry/k2yiA8K79znNQdDTSsZFNmk0y1UvANI2sKJml6rPIIwqbIQa8mJ1s1aQlP4+
	 d5lQQols2V938HszRpw6h/9XKqHhCQdNE/qBAqbKqNFMBIh7MoIP9UdPT7pCKTSHJV
	 id6SAIQflUO/IVXKaAsg9smC2IXolmlOveHOlolC4JDK1Z1bx1+dStnbb/uqPJNpiD
	 8aOC1ucO5Ikqude4ZbVQ/FKeAYpu5bd21AMzdZ9AU6tImlj3Fi/N1JTfgfhCHz7Fr3
	 Bv73y6ZQXkoBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA505F99C8E
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177654045368.15650.7551825721913335648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ecbebebebdf28e11de97b17a3931bc13774ae89a869f8a97caf4fecec14a16b
Date: Sat, 18 Apr 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776540453
