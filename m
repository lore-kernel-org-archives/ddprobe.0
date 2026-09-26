Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4BA3A63F3
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790412034; cv=none; b=oN99LjAVvzzOUr50LKgLbf3ZyAuzoZFmuWnSnc1SP4G/RXUzo7PmaBTdXsRQOXnavkus9UtdaofgQzy7sikEbTA0nvbt68MYBNOvnWISzv1/HanMtYELdQlDo9sb9ApLe2eIyfWN8BRtCKTVwFkjsgPLnhP4tX/vNj7wybKQQVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790412034; c=relaxed/simple;
	bh=WdjxZbM4yaGNeX3xktZ8WkJFuJoCjmSlWyz1v3lQu6Q=;
	h=To:Subject:From:Message-Id:Date; b=H23c5nbwSWR56bFIAhITDM1MF711JBvDMyKcxj8xm6iYIUpFxZmksZaG3dSyeCYuiCVgl6WV6ZdOl/0OhF91wDUrUeY5NChRjESZvfqi/CycWkUIfH18mIFXvJiVFPEKQa/DZAoMrmp3l1jZI8NHZNAbG6+g7z7JmPlJW63cbXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNV5HdGC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNV5HdGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB42C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790412033;
	bh=WdjxZbM4yaGNeX3xktZ8WkJFuJoCjmSlWyz1v3lQu6Q=;
	h=To:Subject:From:Date:From;
	b=aNV5HdGCYmb9aL3n9/y7NkkaOUUcmuisHLHYIvAM0Re/mlMjG7NMA/u63o/lIqVb7
	 FCa7339Z5dJad5AVqW2EDvL+w4M615353gT8ARldaDTtPM9OFP+DBTthZo2PGIqYK0
	 PFNLYM5W90lap9e7BgZZ6W/JnXlEEAamY5o6sLZppKCQIKsFW3G1XeQw/PKhlZZn8+
	 DS9aarGzyweN3h09WfwVcwdNTe0onKiNvCsVCeeMoBGwvv9d+YO3UORoujGeKGVKBM
	 ilXNUHDJOSWJ0XhFitVwwJHYlVTXMio+jdrSmosy0q2BJMyv6e9/+97NWduQCOgzgf
	 BM3lGL77VKoGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE2CC98328
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179041203369.10371.393186022856021605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2b3057d0eb459e55e6244674a50452d176c9f440b0536de595fb473166e322b
Date: Sat, 26 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790412033
