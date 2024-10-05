Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5032310A18
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 02:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728096954; cv=none; b=WkAaBxMniDistR5UJBfdN7umEqRM95rhw/6WcygReVWCVDmussqsXsxsPQ/XO/6xMlppaKgL6rcKEX+/8FCLmR4+o85jEM8k7L+p2L3nNMxgnOGfFeOw3TWC+UYKF8a/oC9wv5yj2lUOaky6sYsfA3mtUjufYJZLzFfOID9k5H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728096954; c=relaxed/simple;
	bh=TL2KfBkJCqaiHJPOUHob8GnUj0gg9PB+kPgcPGUIkuk=;
	h=To:Subject:From:Message-Id:Date; b=Hc8d3chMYo9e6LSKNH31E48eTMl/jRojOa8L90g861GYNrPoo0p4Ir0OyYwhHm2MgDYmHoSjgdYYlcC57nu7xf4H8Ea1yjAkFj77K3Ek+KU2OzkRnqZ5XL6OuYln/A0kLyFE/Ptv355CQwz8AlaYQ6j+1FBkqpiioVExHem1zl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYf/i6ju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYf/i6ju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFC0C4CEC6
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728096953;
	bh=TL2KfBkJCqaiHJPOUHob8GnUj0gg9PB+kPgcPGUIkuk=;
	h=To:Subject:From:Date:From;
	b=YYf/i6juxcJkj4OZk64oB5fgldWZLN7HAzyGffL40g6MxXUZ4jg1acGSDk2k0hOgD
	 zvfQ1/CT7J2hkIbxpSgSKzaANPCiqCgHZMt1GVzwhzYCWGxqm3uO/6XchjTdnD2zSm
	 Rhmo816JoRYbvQdZaiq7TAOjyAVGce18eQ8EHFLa6F/0TCjrDBffDfgFsd9w4FdJtB
	 b03RgdPmT+PnNj+Ukrz/SktdDK1ugxdWsdgycKjvPWi6fOwFiXLuAt1a5xvfma3uvG
	 5vq7vjCZb5LiZvUgR9UCDsMPBihsn+pqWNSKePdTHvi6nWIp4rshyPUo+dGG5JLOj6
	 fLiWf/imp+i+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B80C9CF886A
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172809695371.5994.2260065106224334098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2be2f2bf921d1188f38ca0a4219da2f9348dc6243db7ddac79abf381512d9492
Date: Sat, 05 Oct 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728096953
