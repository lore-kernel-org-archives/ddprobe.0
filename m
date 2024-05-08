Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E088A947
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 06:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715149943; cv=none; b=khjhho40jppxdZCLJfykNom4dpY1mnPhcTY9lUeMVUB7XMbC7y+giQ0ck+TTRYSbwN9abikGw0+FhX/Dao0kllviA7XaCECDwzhuXsWOfWLn9tfNGL9PSYLWQCk0fTBx93+sKyiIqc1PIRZlrb15wji32o5YElFuTEuN8AajbqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715149943; c=relaxed/simple;
	bh=ORhMFRIOZKt/GwBZJgpJR4DXztaQqUOQad/l8Vgs2KY=;
	h=To:Subject:From:Message-Id:Date; b=sVP/Qjb92jO/cbxM5fzPTTlD0sNobFEOsXKzpyFUspSrrhw9kIBrX+4XJLYfdZHKGSrHjUmCz6T8VKcXV/JdhjlrFQI5q/XhUTeeB7Jt/xSXvGRDPcrjNSJbG6GmHM/smj5yY89eAn8n3SxEg8K2hO0Wj0qsrTutZZA7ugzT114=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSpsrBRZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSpsrBRZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EB6C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 06:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715149942;
	bh=ORhMFRIOZKt/GwBZJgpJR4DXztaQqUOQad/l8Vgs2KY=;
	h=To:Subject:From:Date:From;
	b=BSpsrBRZxTlQqW+vGXm8M/VXgmB7TY5JfEfh+wom/dh0KYNI0kCNLXaiL573xLYB9
	 t38480UoR2Jsgm8yMO1SXeykxoXfJBAyYYBySVu8ucXAznx1Oshp0f2W2eKUTqUkdw
	 7Xl+MKj4Xhi20ADEonRhKI06v2FUW+uJojH5NJdrnAiyrXJiuXgey21nLtz+PPV5Ch
	 11BIefqBMbNGt5Md3dS3AO6tQgfJVBB8WbN9pQvElHexr1mGB8liiESpIg9+cksb+R
	 wjb4pto00pERj5UMHXiQRXhmYT5A3DZ2ViQYV9HyIFf48XtAWSpLrsdPgZQY/EvYBg
	 dDAKN255/i88g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE88EC04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 06:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171514994277.9185.1186437015644724498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5db787642ea7f25f755d898b83c96511eaf3f45c8f06b5da86432a6f50d2bc13
Date: Wed, 08 May 2024 06:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715149942
