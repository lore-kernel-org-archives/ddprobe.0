Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED4E41448D5
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777439854; cv=none; b=c5NGlvFIVwgnnicz+ICAEvfs7k3KMvr+eOGRtRRbJFObDC4X80ZMrEaSOHbxf3wRIuLiBEhauNA+ZJFJ0BYTJmaNVdTGf+SB3H53bzRSWVgDFaKh5M5LfN/rI6vsTVn3/qJWrC6kJawPf0Zr/reO32WqHoFsCFJJvCkI4F9M87A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777439854; c=relaxed/simple;
	bh=xyPAjxacFDbHTSCU1QVTiw4TNo9e+VobJWhq1fgIiSk=;
	h=To:Subject:From:Message-Id:Date; b=nFaTeap5/+O+LjpV2uhgnwybi9Du7gMSABXTqTkTkLlPqoL+iMboDas46cexjiW4OZ/VHNmvg/a74ZBo6A7jb3TGtKJC8WFrvypy6I4EszachhmB6jytdL9Mq8+geQbc6FYu3T9Z/J44BhOsnPVOdusB+/+goFoto7LK9couipE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/EvNMC3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/EvNMC3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB3DC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777439853;
	bh=xyPAjxacFDbHTSCU1QVTiw4TNo9e+VobJWhq1fgIiSk=;
	h=To:Subject:From:Date:From;
	b=R/EvNMC3j4fQb914BXplSc94eW2dO6B0A1e+i0vsZcUw5EKE0t2+nwXgcLmPHyMad
	 c7NhriGbF7VR5E9ID7qmfSAYHu+4nRRUOkYAhlt4w5IpINVt36uE8qrIAasTEOC+/4
	 SqUEl8mOUopkIuZDxbqszR3L81+DIytAJMuT1yuO4+VCp6GFu42dOvdGpPyabPV6B5
	 kDrOv8iQZJgg6aowtuHlDcLDgTuB5+iAUB0ym7uyZmsvz96QbPt12F5TXtsVCJzZiN
	 m6P43iOKzRYnlYGFODNLfJK1Tm9fqkzT/MhrQsc6+G6Q3CF1bD2JN7PGzOA0DAhyrn
	 ZUKS4c/DR5NQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA9CFF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177743985368.14007.8934908252548798507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f8cbddaf3377f697363ac91df18a2b4b6bda0cb5b1f27ea4974ce9f45862bca
Date: Wed, 29 Apr 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777439853
