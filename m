Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E97B1DDC3A
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736181954; cv=none; b=oI5p+6anB/D5fu0D5DH6HnrBkCnrJgtywr278ERPfV42iV3wJNfFk8dnyHPqab/KkKUHKLAiJFd4cOlS7n/q6iEgZC8X3lgscCSr4fY9qsDloButhEOc0iaRRblXCWFX2vJdfVqvix9lSAjfGkOGxtucS4vyOzHXyQcOhMMUbDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736181954; c=relaxed/simple;
	bh=BajRGCiFH59kns8u/UNttFj/YD5Jx+FNHtTeO0uFL7M=;
	h=To:Subject:From:Message-Id:Date; b=LfD1qpqqzeBosZuQkK7CeE9hQ0odzyH3euUOB3nQqfdhcBKbZSyBMNtqpPAZ4jCIwYHURQ2y0pAkuT2RB3F4OFA3USY2Tumph/NNMvFnO1VYFxPLCA5ZMAs+kL77suKx3igKkHDzyKqeYeFsIhTPvT2fpvVmXw1gVwuOegq79pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5mzDFpf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5mzDFpf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6C7C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736181953;
	bh=BajRGCiFH59kns8u/UNttFj/YD5Jx+FNHtTeO0uFL7M=;
	h=To:Subject:From:Date:From;
	b=m5mzDFpfMBcbWPX9EGuKnj26Ymll+OJoHOpgTCFf+G8lDU0qxKOFXq6+FpcI7+Gs/
	 pFaw7BDDrepZXgmRJFGSznRCtB72tqP8ojYRinjfym3b2X/MeRh4FiA/GYTKxeSZB7
	 sQSFY9MqGRCd6NRL4YX1QaeEU2YAklCTJRzRvOvhZKLlzgbQJ/F5uLb/8Dg3fq5/nJ
	 KVW7AFXPJ/OaG9jqE0rMP0Pa5hXbsCMjlwcF7GX6A0L9uyY1B1d4uMe5ZQo2iDB12D
	 eqZ6zyla/8qFmkRsD3d40Xx1WYmhVF+4Ey0V/dyeVa+GLKe9pjmF9H5Brg+7zxLYso
	 QW2PQ1RIHDk0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963B2E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173618195360.27027.9895841220412472294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6489f6d196d6995b5505ec8609da0bc667f3a0f91af8e9dab47daf3f6633a1be
Date: Mon, 06 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736181953
