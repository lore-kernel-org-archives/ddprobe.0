Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDDB36E46C
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 14:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788272434; cv=none; b=Ex7JVqTz5NoitqisU1GP8hU1aT2I0BabLwtE7VU5BXSPxnG/9q8OIRsYz2/3AULj0A3wHNQz0H5addArSPZZWpOycoMhV7xOBgTh2CVdxk2yOy3Kx/yw3rZMpD1iiMGHDX+jqNlZC0uU3RSZjRjxvI2sQglpioemteGv8tE0r8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788272434; c=relaxed/simple;
	bh=XYIU7wwwW137fiMvf70QbquqvUXpWPqzF3gZOAJfRaY=;
	h=To:Subject:From:Message-Id:Date; b=G0aSRlB9tBRS2M+YcPgglySj72SN6NUnOmM5BtweIMLJMUBglr85cpC+aejtn0t2/ckpgnbKqU7mdA1MbfQuVYLDUwSVgsU4U2w33MTziS/kyOvrR6eQLTIOO5DsAdXdjNozkRruw4kBJPFYbqThslmXY2lo3TW9HkbLZo/waxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6b7/6zk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6b7/6zk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3AB1C2BCFA
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788272433;
	bh=XYIU7wwwW137fiMvf70QbquqvUXpWPqzF3gZOAJfRaY=;
	h=To:Subject:From:Date:From;
	b=Z6b7/6zkJYW7TSxoRFcOCqtJCO39iYJgdmSM5dDxFTMkIQQ3yLWNSIeh83J0TD2S/
	 J1w3QyMvP96jhS+nVqtV/xslNFKTqgMxlgUAPn7Zglx1A1YVuw6bSui9hqLCBiZEJ4
	 DH/8QrLKBGKjbW+PeJcu+FBU2pfHj+st3RlC1xD8OOEe1WfEhnmQHqS/PDr+/09O9m
	 z4tulMZ/bYzRUJtS+ZGDDKYtcQ9EZHRqSlXEVi8WYudvEIA80JANq7OVa2+zX+z+Wm
	 TBIJakEz+9GQTgf42NYe80WSpba5NPWu+uW7U/7UQXTt7Sly0mGjH44K8bEGGcutLx
	 KkaKy4qp+xYjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1A0C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178827243368.26508.8118708092932605271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c357c5b3380f550bf3f7c3ae5a2791b00e708ce31bac779706327469a931162
Date: Tue, 01 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788272433
