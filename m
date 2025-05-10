Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C605194137
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746896394; cv=none; b=VIJ7iGog4GDPdEvf4F2SgIR+HigU+QnSzxXe1F5DMsJws6kYE3eINEt2NCq3kHHB3CbQxm0Y4KCI/TuGZjjZDFjt4dyjnVhBfZrCvmocvQrWODzZxEl0gyqeNhtcdd8CYMG0SZPJa8XYRKKMuw0Pxyt2XrIt7FIrYn61hi9FNCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746896394; c=relaxed/simple;
	bh=7G6gcOCnvqHf5bCFpoqf+iJ3ftT/52Mq0Ej9Y2hQWBo=;
	h=To:Subject:From:Message-Id:Date; b=LTK0Su1MwFjtrcoKQ2/QM3SX5X14w+C2ghDCdY4nSCszKdOjd/ngz9x3VCoEsUj4pQC4wnkduWpv2XLVXpXUjgDnYHunqmMmtR+csfAfWvCp03v46/bBxapP6bBsdbjg2pK5ZDAtu7FkLHGn7e1KBV0KOGjjQYP4OK0DMvZr5fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jy2v/KeH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jy2v/KeH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15AAC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746896393;
	bh=7G6gcOCnvqHf5bCFpoqf+iJ3ftT/52Mq0Ej9Y2hQWBo=;
	h=To:Subject:From:Date:From;
	b=Jy2v/KeH/ZDl1wy0Bq2ZALdq5a18lbkSORc09SxgJoNoBkgTOM2kPHTEVvreKNnjx
	 ISKw1ZPBfmfSLsfv+1YTUTzSOvmXsqeXTWeMU1zitXs8o0m6BpobTgRQRSCE+MxJVM
	 s6GuH/uT9ZQylg3mC2sBT+ddVzRtqwJzVzseSKxfUevZypxmwS+3pqxSEWknX4QtuQ
	 QJr4GHF7OMrQoYSoeA8Q8mZBciawvOqPVf2dZ0fLHzFGRQ2toMeAjPMB0TmJ7In87Q
	 kD+NvmwNFgBXfD1XAGoqNQ2Jj/yCncp+7VZ8tWyqdeISwcuO7FTPP8rzvePxRUDwbV
	 H1AuDJIkUXJdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E862C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174689639357.6848.13672093409905020229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1f46686aa3e13593ca63730a93956fa043dc1172c40e8ac02bc1772a3194886
Date: Sat, 10 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746896393
