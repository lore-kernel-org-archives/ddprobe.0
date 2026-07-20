Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAC040B381
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 12:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784549314; cv=none; b=m2TZiSkJ3RWJVoigJnT3H3g5gE6IRfdjDtd//1n+UgpfusUJzhnkJM8WPZru5vbCrQ2WV5mma3bAhkmW5GFBxQqP36V4uREoTmum3GOD7KE6GHJchW0+VVmW6hfv1/GWygmqI6bWL9L6QIQT4Fip5uuryW7v5UnA/ETYBfrc2Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784549314; c=relaxed/simple;
	bh=wZxa2N5mPFqB4XbBRiwqI1ZUGXrNCgdKPe1cgvRy5Ok=;
	h=To:Subject:From:Message-Id:Date; b=n9vh2sx8WkL8qiSpA8bgrbzzBtVpJsdCcIWHoqj/VMQ/KYcpu8ZT9fO2+3uC2Al2+20itus8YsyKAkG8HJxNv4jOeKpDvLdSy87n7tXu9DUF+ANhbgusHlyn2JAg4AvbAiPeU+4Wm+QIxE75eydmPO7h2nNaUSBDziH52EKtpOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKYIQHTm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKYIQHTm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE874C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784549313;
	bh=wZxa2N5mPFqB4XbBRiwqI1ZUGXrNCgdKPe1cgvRy5Ok=;
	h=To:Subject:From:Date:From;
	b=aKYIQHTmKb3MaXgfRdpb/ZkJNUZz2oeYL04VnANwb7y84i1k7vgFlhnJkm1dNfRNh
	 4wM68/GOCvYtbvnO6szDqB3bbSPsfGLVxWpPpzaYZomqOX6Ow7X+ulu7ZA5kqlP13B
	 yR4niCo3rhjytdJDe1K8IqJ8lV3Wte6NUfg2wwtVXrV5AAHKcb0uFO2YVLUBXPqUnm
	 V3rIjdHuwYujQy2YlQR+zY2/BkgQByY810SPoo7XGDsiYpFUremckxP6z0AxCKgArA
	 sAel8qT4YSNduzkweOMMkBfrkmD8nR4iCyOz9btk4PiNu+zqBF4eeditY9WKUHVwH9
	 gvWzvKVZDS4aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE64C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178454931369.21361.5000910476616932933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15d88f7807d56c66322af4dc52b77d5d4f43e596357849cac56c4ecd03fdd01f
Date: Mon, 20 Jul 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784549313
