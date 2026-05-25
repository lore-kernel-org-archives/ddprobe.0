Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B083C0608
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 07:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779693154; cv=none; b=gFnRJO3ynMMhQFVEse6CJ0ndzCQbhVCrCcuBJUaE7zWq9YFIsbI48z3H0/vDYJLUszA9iqb5MeGJ7Y4UdxLZaEb3uljQquhDA79GkolSec4fB0W3c37E9hhF/FsMuiQhgsSzgGZDmn+eE7Gbwhx9mSBolQ2Gp4OB0ZbXnhkNHf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779693154; c=relaxed/simple;
	bh=Sl2TERpyiAjFlD2ZtxxJGmaARGmi2c/ciX1GXOrrg2M=;
	h=To:Subject:From:Message-Id:Date; b=jyBqnsPn7JfcpxnT3TWQOxHNeMtDNpCU/JLjV3FBXL2k6iTZ/Uar16BnUleWXcX4cFR1cP/21CoKZnuG8iWAT3gsXh8KZ8N7JrUmrSaTKm1YIXYDaO0V6koaK5D0Z2lKX5y6xxoQXAJN2dhYtaTQxJ4wttmi04hIEnU+qJBtKSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4HtwUmL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4HtwUmL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3896C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 07:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779693153;
	bh=Sl2TERpyiAjFlD2ZtxxJGmaARGmi2c/ciX1GXOrrg2M=;
	h=To:Subject:From:Date:From;
	b=D4HtwUmLUBmy+IzgIAN5hD+LN+/sIY8u+aOWSZbKQFBjIy+hVY6kN3ljDUuGC5CXy
	 7WuzypA4aNp1RZnHz7mTZRWanTw0R0WjssadAnQFXBlzJrn2ntpSs2CRjd3iTAFOfk
	 2RNAcxT1m/ik9qca7tlRlwEZF0hEFh1uI9btf8ePyzbJhFzMSg3Oojye0h1lp5mzHT
	 4E7i5ttmv9+T4b+vv6uFKm9BzTEFeotZwjMMKElSXPe5PXxzHvpdCZ1VFygxa6hONC
	 EVrQI+1atfCaCZvtRa/gi4vlRqHOc60ZvCtD0zHcKQvaJzFOfcTCwNcOYcGZy3KqqG
	 MyOPasB8rrnoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7BC3CD5BBF
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 07:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177969315373.14884.17479064149867966517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b28815cfb48a860615d26fd6541331f403fde331da5a5b70655ba3ac7e2f9ee
Date: Mon, 25 May 2026 07:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779693153
