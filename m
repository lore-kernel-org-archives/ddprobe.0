Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A280B585970
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 20:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789156835; cv=none; b=QHZ8GvjnNQlcm5QCWfEtJ8OoVV+i2qhyVz7sZ4R8NlUlVcXNv6LdpPJ9Xfv7/pUn7ieHduiJeWzpnW47u2Ryk/YZyNajcQxTOjLcNxig57ij1k7ks/shSNrFf2nLzOwYXkJF0frTaRroO0xHNBOLMYTxjNRYhLzygzqCw203zgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789156835; c=relaxed/simple;
	bh=NRevdJIuAHpZmbVU+aOD5jU4AL0U86paM0tUA7uN3KY=;
	h=To:Subject:From:Message-Id:Date; b=ZHbqggG4+2KPucvYD6pPODYnC46sTyXheV0ZAm/cGfVJ5KmQOleTLEXofbV4ci/gY92AJcRpEMc0zH5XFBGUk20KUq34yQH3yzxmnRUFI9bc+NaM4sUsM/Xn81pK9cIXiXXMbBoucYPaXJPeNadxq5Cp9I0T/fXhtd9QdI3sfgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5tzGLT9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5tzGLT9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2D1C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789156833;
	bh=NRevdJIuAHpZmbVU+aOD5jU4AL0U86paM0tUA7uN3KY=;
	h=To:Subject:From:Date:From;
	b=Y5tzGLT9MCd5f0SYwIbFJM+j3kXlZmhaq9xWAJDGheHM3xxCiKFf/O6CX1LRthrLN
	 ZjqJ5brtJF1GgQSwNdcUDIF2JvjaxHGdaxwkiYucsTe5RehOE75n38nrMUVo02Ectn
	 GJePRYz6OKqOSNGQ4H2GsSSoxb3uabBD5q2xzvbDWEF4GtB2z9DPLmsrmyLDLmaaKS
	 tzCtlCUJBX2rSkt04B6G2OGT/mHJIPr1ZlRwPyywEJWgQWU30nl9TElRzzImnOGav+
	 TNiICSV9aCl5RyTYJx3aQcp6Uq3+/kIg6Knof8+Fyo0g01Uyw/HLbUK9NFQ3l5ye3j
	 oxRkkeYoPhYqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF668C88E53
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178915683369.13470.4966227233675833753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3134e0725dec8bc74b6a14ae597d6c463e5c2e0128f72c185595f0c7b39e6243
Date: Fri, 11 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789156833
