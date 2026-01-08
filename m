Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5158272E6D
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 06:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767854634; cv=none; b=rg6u3gBBQ/Uk6MA5HjCjj+Rx11/QMzJ+3T19eYU/t0L0hiwsQT5nv6YVwCmEcK30baKkBGSqQVV/R6SEqyXh9ZTTxG90mzKyhN3oxmvGxpiUoU046rU2D6ddG7Vwu19ZI2/lyXJQoCMWG6/ddDfn4iHbn0NKLWksTcDfvtUCEgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767854634; c=relaxed/simple;
	bh=DI8KBYQM8IBArRzm6ftEhgmlr/UDVmyjjYGN165CIM0=;
	h=To:Subject:From:Message-Id:Date; b=HPUSSjZgH0WangjaWki3wM738khPSbeWw+tO+AikY526jjY4CJxtn6re0fxNx0h7SwPQyvp2Taq+XY5dyVMjZlCYWLtD6sTo8dL0J1BZlHu/mZcQYIA0MoGMsNkY5kTTDsdfyo3yNQlVL9vFa61CQnJJxCklxSE6288CN5UOwtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOpiO9av; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOpiO9av"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A389FC16AAE
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767854633;
	bh=DI8KBYQM8IBArRzm6ftEhgmlr/UDVmyjjYGN165CIM0=;
	h=To:Subject:From:Date:From;
	b=aOpiO9avUYRawp3WJRmQPY0IU+3R+WxIHf8xSyI05MiFE8HMoyDrylntldojMxICR
	 a1ZhOQIyJSiXWHp4zYMDiZUgGIh14vUR2BGUb2iNTPzg6VNvD5LU7xPBLJmrpRUMO+
	 TBs9BsfpUZU4/OELdMNkkP4m24MbqKRkG84VAoxuorRwIOIISNCsHjQPOVO+fCLNNy
	 SJ9ANG95fviX4Uxc5KNj5N996LMzIPdTBG4gfg3jF43dxOW1K5wKKZmVUll7u7Cqe7
	 eM/+sO184HKAE7+4aLeO5XPKdd2+pEbv0bq4d80V0CyPOBE1AakkwPQhmvFk8YXhxW
	 lmXCofzZXe0EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934B0D148A3
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176785463357.25269.2179608762489282257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99e42acac9f19be9bd9c824256a6ea4bd651ba4c13f9ca799e6b0b8ea383facb
Date: Thu, 08 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767854633
