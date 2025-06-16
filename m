Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D191917FB
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750117194; cv=none; b=X2V5u5bt/ZY8Texn15LyTB510ecNvDTlYORIKq5hltqsZFnokC4/AATGjV/PxTteqppKIJpsKead4YmNlv1T5+tKwfq/jd6isoRS3CxUFts199LslruSPFp1QWhTWTPCEf0tthtyDzhj5shwC+ekNrB8QT5xiEYBCm1YZpEzEtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750117194; c=relaxed/simple;
	bh=vEAdcQdAG4HMGCN+BqxO7b/ofvlwBH7OT2ZbsVvLpU0=;
	h=To:Subject:From:Message-Id:Date; b=Wts+d9GEBhHtO80eXNhbRhRPrDzyBhZDcThNtnVe4l87rRlPz/2GkYq5EKXVUeEpuobHQnuxb9qfADOwsJJhDqPsvB6d8KIDXMGVg/ErSHjydnkdVYmdublKk4tA4l2mulvWx2zpYgHoIBm8ThjfXtKwMHCLmTbeg44gdSwn+aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=meeval5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="meeval5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20BDC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750117193;
	bh=vEAdcQdAG4HMGCN+BqxO7b/ofvlwBH7OT2ZbsVvLpU0=;
	h=To:Subject:From:Date:From;
	b=meeval5iCWlmXNsHNxiwg4+cmUkwakQigNxpXqCWLsUuNvY1UZ2HJ8b2xG56fWe55
	 7aMDJNvKXSn925wNxzq08EqFMgF+dzpfF9dcEqhDNkzRRYeQQMeaUfsG8rv/ycwVRI
	 vvSZs5KEY6vIwoOPPJGHs8ENAMP0sUobCiUVz0mt7KoiGgxqkdYVGflnOZCmOyw/Eq
	 6RD4iNqmxELF0i7ogoODiPW6/k05FzDPlXqD8XMmo/1+PS/vGw36RpF4bYjRK2p1AP
	 tO4dakGGG14hDLhR7098j8N6OL1f3tureeYWVXAMHaK2A6ow4eh6acu+U/akhzu45l
	 wvmWHgVHfetpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904DBC71159
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175011719358.32476.14463548295286634700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c608521fdb44c2985c84253ff7ee08e6b7f828040b619681e1139e9c88afee41
Date: Mon, 16 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750117193
