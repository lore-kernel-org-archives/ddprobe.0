Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EC123F413
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758487196; cv=none; b=KuwODCOCxno8dZ3l/9lqcTXbeLo5oWU9WYoIn3waYg4kI463WBDRHDOdoLWwvctbzoTA0bq5td0qGewz6+kjbN1A6vZNS7eQ2AjtMcyjXjMFsXNbeLMwEltDd3qPnfMZCxs8aLPY6OSyCkMdPV291qb0JSh8gg3uQf3KcEF1E/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758487196; c=relaxed/simple;
	bh=gOeXzLNGU0EbYkAD+kwwuCMvqAiyORMEwy6BmAejFZI=;
	h=To:Subject:From:Message-Id:Date; b=IRyfAsRQ4L0DD3UHxSGTArj3/uTPnQza/n0YENLV8tcqvq6PMGewBp6DMqx87VTxzu7SrjYiu/UXtGXeNS3Z8m3gHd0Lp8KcbghQqGIAwIStyIEqa3f3kwYJ6zvqEpUcXvypsnPMx7RByFFR4KuwPGRCgURJRq7zuXpocueOQYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWbv82xh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWbv82xh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 962F6C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758487193;
	bh=gOeXzLNGU0EbYkAD+kwwuCMvqAiyORMEwy6BmAejFZI=;
	h=To:Subject:From:Date:From;
	b=fWbv82xhqg+devYbqMy5y931d/3suPfMUB+H8KvImoOr9/OLCD3uivk+XQ++hpw6d
	 XbTlg3fZAk+XoWBkR+DbsTwysA1QzXdWncio2mJce7fYpobmMtqkOY5kNF/i7MleL1
	 qCHK+X2f/MP4Oog616k1d+DvWONFeu1/MsKRygfqeZeVJD9j/sXZXKfD801nivUB9P
	 QriJ5IksYYWAftaXuhELZX1S21SmptasxaNmsjw59uPMviOG/wIWGfrIf5LEbKdv3y
	 WtsTd5JaF3OZDNVNivmtcg8Xz07CeU0Eee4xRIii1+NS+KI9kp2GoKjDqSGE8zx3SL
	 20MWcakE0zYUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9A8CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175848719357.22568.9672070231961713073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38649ec06e779a8e9c8ea2821a9b1d1cb2ef001be9c4597cb94c625dbbc5d38c
Date: Sun, 21 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758487193
