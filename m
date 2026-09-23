Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4600E57ED92
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790196634; cv=none; b=KI+UxzRP0dVDUgtcQemMtxVvulPDv0wgFqw8Y54U4adFz749C4st+Welb2vRB0/PaUqsZshhTo5dKzrLG0JXOH6E47DehgGWH+0QLAAMDoXLq7Sz1IUyMP6mJFi0miFrliRLnyjgO/P0Jso05A+Wv0Yd0l8yBC+LvCDripi1/uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790196634; c=relaxed/simple;
	bh=LDucESMLX3+jkD66tfPeHsdwg6niAJr5Qz0QllBarfU=;
	h=To:Subject:From:Message-Id:Date; b=njX1xMhO2k4dKgvcixsL2FzVmf69JlxGrytBaTPVPJZ7xQ5R4ScawWE6qHBG1jSA+yVMeIZgk6RY4lGRvFsiotuP//RPzTTpHYQPHAJKWSIesSj9le23MVvO7d4InXH31qr71yZmRjkySkWRXfL5jJZQxH6SJbrAJGjTQInsQaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8H9KVl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8H9KVl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D092BC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790196633;
	bh=LDucESMLX3+jkD66tfPeHsdwg6niAJr5Qz0QllBarfU=;
	h=To:Subject:From:Date:From;
	b=u8H9KVl70h3izmTk3W1OEDIJzxVu2lNi8vY/63JbpsslN2wGRcgP/9Iy8KY2aTXbv
	 V6BY4tUKEsy83787XtRwZELcBGarWZ9+Qnv0XKByONJ8/3+NN5q37T37ogLrwTgaVr
	 tnGfgM4a+C1Wbjork+lyx4W1z1wvNyfrXqKaHDbdSrMIW5vm3FEgNf8E2dWNsaaYlB
	 OHY9Pq/YQr1z8h6NiqquwTg2+nz6j7ibG14WVGZFRbCFC3Zr8I6fEkAM9e/iMpkHpu
	 F2zbO00wsaw068oNOAlo4CtuhvsMXO2MAy9N+1LBFGGxFOYANZWu7l0HOdrQOlSAnN
	 n9F4f+kFjRMqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6C1C98304
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179019663370.12335.10532556672392666747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84f1dee14ef7e4a008937ebf4cb0420d0d65b08d6f0ff5c59bb49d92f6bcfcb4
Date: Wed, 23 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790196633
