Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F13922ACF3
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759312194; cv=none; b=i9NjeywfPgyk8PsdgVd9t/RfsixbBVbgTbaG59zgjVaImZcrS0Z6H5AQtXY9oU1fKJervClBohJ5QllLse9HYi+rEDLUYZpZkg4dQaZLtG77NyUT4rlQ6R2L6v+XvAFenUhMu1hZMzFRNx0pgxPI9fUXVV/gU5U7sJGNnoJkLOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759312194; c=relaxed/simple;
	bh=AZBp41BJ/dVCvPK/rkd+CyTxjAgOuCvQfDOz825zfAM=;
	h=To:Subject:From:Message-Id:Date; b=Onwamicc3k1vApA+2HDAOET12Rc0sG/00hXgem8f9upn5Y5c6220KdaZU5ydY+hp3t7mfO62v2nILDQw4YUqUUgtTi3WnuRKx2/ck50gTRhlDpUBxSWGd025EhzGuwF3p4YfU4kwAK6LCjGql6yMDtVF8uNuqWfDqmbF9N6fu74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIXqV9XQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIXqV9XQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBB1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759312193;
	bh=AZBp41BJ/dVCvPK/rkd+CyTxjAgOuCvQfDOz825zfAM=;
	h=To:Subject:From:Date:From;
	b=vIXqV9XQ7IwJvYDl0cGnZx+u5HKkgu2DuVpyVggG1JeYxrpYSbpC/6iGHQWI1CcN4
	 bfBfORFDbaqu+2HrUPpN68iweOMfZRGVgwnFqbORnc5/L5jDE0+L1y10OLGSv0h33K
	 oewipR/FZkfXRBXlOmirh5cPoddKVQuhqklI+GiSaBlzvWOCsCcG3q02QOQUkEERpu
	 vjmcUCkh4R+/ruLK4G2y4edmImMQMRSb2E87vxiB/qG+kH/IKjtNjjUPy5q+e92j5j
	 UMdQvq/H8UfAih31DXeo0dyM6qWXjF8uK2cxeZ8oa0NpXmBmYgvkd1RqbA0lmSCbNm
	 /NeqvCZqfVqSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90222CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175931219358.30428.6857298706710010016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8c743db237e8414a2ccfb8e748d4885504006f3477f1736b26ce8839ebdae95
Date: Wed, 01 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759312193
