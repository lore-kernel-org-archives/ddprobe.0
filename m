Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335C963D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721451354; cv=none; b=JX9CsRjakqXyQzETOAKDKaYioqjOs3oqwG8xX1cLAY2hcLk3tKPA+bracWqqIvYV8aUubYj8RqrECY8fWOKSlYKDKpG7hh38BZTRl/NBnAYESsXjxAf2wtZt8FcJrXuCdsDeJWO5qJqHAkiof0viCbEssuSCTGLVOLjsK0c0P0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721451354; c=relaxed/simple;
	bh=DdZG1UR+8FW9Ei/qLWoe6z9i5RzWsetkYhpL+TYqrC4=;
	h=To:Subject:From:Message-Id:Date; b=lKZadURPr8WqVLykC5wU7lC5VtUtVERC/8TyNcFuO6wIV4Tfb2F4+NrY7eTYloUnLoAPNuNcRvhYEe4gKcZH5VvWRHg/mW57H1RVHHWrAwTcHmnz9Onn680yTC6xxH+ACnHF7j5sKHzc6xnr85cOdQ4sRxBw+esqc9AGQtxrKTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uM9VeRsL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uM9VeRsL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC11C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721451353;
	bh=DdZG1UR+8FW9Ei/qLWoe6z9i5RzWsetkYhpL+TYqrC4=;
	h=To:Subject:From:Date:From;
	b=uM9VeRsLBibcbCSzsQ1Pb6nIUn5t8FLj0yAr18hVpF1dxzDC3cuno4smxKxSlSJ9d
	 bMjXtcxc9cDtPbJ1QPN5W+DTgVR6CC87UxzH/C7SJD7QnEsLQaIAnsn+4YU9+vCaPi
	 ojwcKT8beEDa2F/nJvGR7EELxhRYkYho/yt0e0ZFEh7doJtE209FWxKwbpc/ZhOXJO
	 XuJMYTCwVtI3uqU/sBqyJ/NIxKVXAFFhB1X71QucVzpB0L3BYcP74QBZaA59R1N1+V
	 DJnjgqIHFFt5JxLzwybNYkAYPYIaWHx2bZLtZETonZaOCXQpS8Z+zFlUX9no6Py5NW
	 VzhaVdUCX5aqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988EBC3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172145135361.12042.3469133198068058089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67b611ab0c5aed63b83995b5d9324294941e13ce9faa2aa9102b158899223048
Date: Sat, 20 Jul 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721451353
