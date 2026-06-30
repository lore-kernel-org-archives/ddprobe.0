Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33831351C2A
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 15:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782832714; cv=none; b=psMsMZhjxkKt9UwqkCf9O8Tlw7FHW2Q8Bpb40pQj8M+amD+lZXNOxG5QRhZLatSutkEA0mKEcm9kuJd11TNH6ahGM3SdfraPFCu9Ey1cH2fd3xWu+H2VI7B33WoqtwK5gBuYwSMy4UWcmr+O+Paf1la+fAmFZ9Z/zt8ScYUJ9B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782832714; c=relaxed/simple;
	bh=wVdPsgTgTVteAcDlwisaCuVRrd9a9LhpXv14wO81uAU=;
	h=To:Subject:From:Message-Id:Date; b=kOpBxEcTjWk1jLzA1Z/LyUXGpaqn0Z8hIiV5jUaG2zMcFH5T2oh8d7Z8xGW+bok1k4TboCOnK9MgglQGqfMTQUtKoyyGK9DGvotsRiKcFoJ4JB/pPzJJUOoTV2gl/e5qNF1LAnEiglUgAyrYQ6hvequzih9lKkcJL4TCA2NnQGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcS0SJVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcS0SJVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C33A2C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 15:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782832713;
	bh=wVdPsgTgTVteAcDlwisaCuVRrd9a9LhpXv14wO81uAU=;
	h=To:Subject:From:Date:From;
	b=tcS0SJVVG1lJz6hQv+v3+6bn/lvW0M7Xar3J5ijNwbRcQyI3+H2pdaLHPd94TwNQp
	 XIXTwo63TFxR7mnOyIWhFLxSjI4df/9lGHK1ZRuvYiR5zGyNt3ZOILJFRZzI/fb0tE
	 S4s8L9goA7p5L8I+vZbnyrjwKqn4BGweqzjWIVElBVJzacdXqeRgGiyiiYE8NK5XwL
	 /fZSSPm+CQJ+VHr/nAl0VJDPaqXB/mmg1+XnPNF9hzOgeam5dlP4yhVqWCOFAElYRX
	 zwBwxpnOBtH9tDvRs/f0P8l1VHh2cbvwmxTOqafdDnqMVG9Ofkxn13I2idXPTw0/Sx
	 4OrdyJsVEgEgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA956C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178283271368.29811.14271187263676483103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7caeebb593a95a8aa7cdda6325b1346df10cc5d543aa98257df23cdfde2d27ca
Date: Tue, 30 Jun 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782832713
