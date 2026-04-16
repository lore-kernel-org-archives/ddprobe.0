Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBBE34CDD
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776301054; cv=none; b=grnBYti1dUnvTESFMnD9X7U9L7N0o+rBCQyh7+IX3/BAA/XGoszIaFUb2zedGnzqNMKfK8gc11UIqLoqzCoFjXtM1OC2FLR5EWlGCvmISUVb3MlPiwP/C3wUKHhU7Yr0ITf7/h7QgPuYIlvNqwyBepLp41oSHCXJHIEU1V7cZrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776301054; c=relaxed/simple;
	bh=XOsVHG74gji5SgxU+QBJ3hOmDnZB6xxZW4RuLtZUtfk=;
	h=To:Subject:From:Message-Id:Date; b=PQ2+m+mASKLDzwSy8AWjEz1XupmvSTF0Brh3AJBuxOgF4CcEKgWApktSwqDOhvKqlfzeDU2z+TlsnH8FuNURqWzBN8DsGzc5c5OPSvjkVu//1qAUBYILZ5SDWTb4psfmk99GI2WPsOHGokBlzI8ZqvKDTTAuamaVn27jhH8AFWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LG+NjUL3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LG+NjUL3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9ED9C19424
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776301053;
	bh=XOsVHG74gji5SgxU+QBJ3hOmDnZB6xxZW4RuLtZUtfk=;
	h=To:Subject:From:Date:From;
	b=LG+NjUL3MP/6FHRDaD9pku46FQG8dmXFAFKbSKWiOPhy+0wmbZ9NhgmUl8JC04maC
	 IfKfK/DLFIt8wOidNZJb0CuCNpTCrfpq9pf3sV9aPeyjwjqCO8WhQt9O1CWsbYSVvo
	 SrqzQqKgv5kyCLZETv+GWAhUJZV80hSIOFqqbWcsisVwVs2NvjlKFBTtQA0kglZ2ht
	 767XiJns8Ccc7TQnyvsAE80zrlvyCTCiKQcuM7heQrkPN77F1a4Fn+noj12QiIRuX9
	 FGhd18nhXfdNNaRcJVmZW+8qUe3OwoGAMcAL5T5vTPrDES4FoGzSe03Q+2YrNIulib
	 ZX1Z+ggRd99dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F0BF433D0
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177630105368.27784.11844427679504451695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c2b5578927305e40ce014bc00f9335534f7a4a7e5c56cebe68e79218aacff69
Date: Thu, 16 Apr 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776301053
