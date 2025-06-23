Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C44E22F77F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750710594; cv=none; b=sreZpM5qBuc8yaoD48z5589Y3DYIloWsVt5kL+kjpiHOcLdoUF9xBqo2oW+DTXB5XYZVdtYeCM0z4G+EO2Hju6NQ1Ft2BfJsOfMQcx+IcP1hfg40TU0/45Cw8S+HQiyfUW0fiPdDnc88v+6RtFx2KurJxkB7MY/ihVdWyBbLG9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750710594; c=relaxed/simple;
	bh=LjUd+S24CnvcryEFgqpDqgXhNTJ0N42odu2RBuMPkj0=;
	h=To:Subject:From:Message-Id:Date; b=U8mL9XiCP7KGRTr0pVLFB5a5ZpOeHBe2ZikeCayK8fFVwrDh8u4HQXqZA5NlIpkMTX1u0s7JAfac1iLIDyIg3sIsHIfJMSPZpmVdwWbCrov9TfRZ2Aj8kLnUvRuJ8yxYTpKk5Ejys5HfgrYQdPnceGbISQ5BSomzfMVXLmeuQgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgowFqYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgowFqYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A572CC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750710593;
	bh=LjUd+S24CnvcryEFgqpDqgXhNTJ0N42odu2RBuMPkj0=;
	h=To:Subject:From:Date:From;
	b=PgowFqYbnxZNVJxQE7uIwdgiTa7Os4GWoqlIoUtP9aFAYHNWNVNzIOoA4AHOsPfLq
	 3njgFO1HbaYUgScmJky2+lT7QPSgXQ0trpLenWDmkBJZlnjs4IaF2Y46VuuYonBInS
	 bclvWO71iiCHGxCrf2dbEjfR6UuMHALsC6CcE9HakNgQtdAgZx8AJFSbTQN2ruQ4DD
	 SxgCoHdlneikQ0DR1w25sjqGMVUk7K4QoDoS+3VZubE7hO3DQ3Uo950hsbotdc73i0
	 wgegKgjcY1af1/yg0X57nmrTOPUmG5PYQOP8ike0kjQdPoY7Lt66MI0lAr7K+A5NnG
	 hNskc+l6MaKZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92727C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175071059359.3689.15115369052980501294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e32a2d853f59f7098e4ce63c7500da5dbcfcb556803d0f0ca9119be0343646ca
Date: Mon, 23 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750710593
