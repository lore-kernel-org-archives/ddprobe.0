Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430BA7485
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743763796; cv=none; b=fKkI2Fv3JZjOCds6RCqWjjKe9/w7qoLjWOejOehB2/8UdXGSGs/XCbAcKXieZTEufY8gx2R3YxJ2x86PyBrC3hkVm2MPtJvZjoqzLurUdK8dMKisl+2SLpEW+pd1GCQK0kpQsXTFpchqinJ1U9MjnpeVk4JTi9TeRv8DAq52oYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743763796; c=relaxed/simple;
	bh=7iWa6fZ3PCyfFGH+jcKVhBUj/dyt2EuinfaKU22smaI=;
	h=To:Subject:From:Message-Id:Date; b=DTmOEchqZJPUGF0iZTUFHaeI9oEZzgxEiv+whcBykvW7lyUE1qjx8PWEjKxtTRXN4BG/u1eXLx76vv2WpYyjnnLfvsKqp4e2/BG6IljsKI3GI9WjN3m9Wgmtu/hjk28YIEQurQKN8x6usc8hll7cSxHFdyQqNlXfQ6Gmf0/jeJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQG/DdAr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQG/DdAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF5EC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743763793;
	bh=7iWa6fZ3PCyfFGH+jcKVhBUj/dyt2EuinfaKU22smaI=;
	h=To:Subject:From:Date:From;
	b=SQG/DdAr7sF9BVGugvTK81sw+Ny0cV0gvjvP6h3fvW0QGcJXafRhvPl1tmkhk0K7D
	 60+amQIJXcXiH4fVCdWg+zzTFTFeFaU+xZPYnE3/tRDBqGuyTXMl6hctybqej3SQeA
	 s2067Iv3j7p+i9ZPygsb89GcmSSCzGV4vV7flyWHFnywvoJSy8B3SSWQTcFjxTdGks
	 6oRhhEc4cpGkA1duILtQNVOyOhrvq87pEQqOm2WVbaoiQMWQb/SFP2MsXGnDETSVb1
	 D4NcoFe1bUGp+0p2xN5twAPf4IbWVwtHh2Zgd7FtZxrM2f2ux/y/Y4uOWDiatQ2Csx
	 kyGACpsPRZIbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98806C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174376379361.970.5989640013626632587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d6b160fcd740cf49dff45c6647af7b9eaee011eb4085fa8bb3aeab8e7185171
Date: Fri, 04 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743763793
