Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3044F2CCDB
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752373194; cv=none; b=msQutpKVMcJkHpyYKv7siCTVq099CGlnYb16v14RUus5kjvr52BsooMHowYYkD2dXE0RR5j1p38ux6SIstlAEE7BjUAOH1iW9VFNALYfLlefC2ZBOjaMWXPkY/8pltyTFfwZrR415r9osGSpJ9inYQwcw8KZP/SSumHn/z5aTOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752373194; c=relaxed/simple;
	bh=8ms4Z3Y1Ek61c5VGVLTw9xWEnRNT3wpWhiCuBq74PKY=;
	h=To:Subject:From:Message-Id:Date; b=A464h5vjaDa92wTP/+eCqrQpOQkFZGKIfqlUV5K7cGKpq+MzbxWpCfN6l3HsYWhMJ45qsCBnTmn4o2UmFnv/IXeNA1XTrb4H/0CnWxCRA3f8LWUyYIHWiWwtaL0bi/CgNJQExyNAtJZSDXAckf/SqMWR0Uaa+9KEC314tiXn4Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pgifl8q9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgifl8q9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3148C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752373193;
	bh=8ms4Z3Y1Ek61c5VGVLTw9xWEnRNT3wpWhiCuBq74PKY=;
	h=To:Subject:From:Date:From;
	b=pgifl8q9faNyBZGWFY8kEOtx+wBSjrfNyMslMSYSR8c275tFqn4csXAYds/Y5i2EQ
	 SG3gKaswSenRmqjVhs3l9yA3fkoBJE7UcuprQgDff3R+oi03sw1NXFM5lTLJvosQ8M
	 mdQH2bwcJ45Z3s1MvkNzIRmRZNkWbxY1x20sZsfVCCwryPO/abCtfQ8hK21zgAyxm/
	 8/njyhmBjcEUpz5wjpHT29uf9xReHgGXVMQIxbPrxXWK0JaCScm5xj4G+yVDCE6V6z
	 w7uOjv267Y4eXecevX5reIMIFDTl4pLiOiSseJ+8XdaNbDkXmiH025cyb5aXsixA43
	 3J6SPhsT5GmKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9123BC83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175237319357.15189.5300266808244916919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83a75c27707074a4a44b1d7070e40086ea6a3518598387cc752f4ef4c424e7a3
Date: Sun, 13 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752373193
