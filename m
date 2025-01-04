Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392BDEACD
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735952754; cv=none; b=p1CFWJKPCMwDQoacBXJtxWOJ8EtMkeQJgnBahMBamvkSavjolGs7DdfBqdPvKQsr3+xgPy/GDvq3EvXZY7wGDboL6dNCAotO0CgDvWjt6CvLGJvGOdHwt3d/FU7Qzsqp0Zjr2Ddz/6Z4lr/mcprJHltLTFTddi+nOrDK49AXiUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735952754; c=relaxed/simple;
	bh=5NQADSfroEySiiNlzdsPivsR583XCVuLstrVOdQQwaI=;
	h=To:Subject:From:Message-Id:Date; b=DsD/osdfGt+sqd6mEFqv9W0RXBkDSeHmD7ShCKQQONfWbcQKbkaPC5+T1WUmFPitDmW4OMZ2avkFxJNrFEgjcDQTU3hfofWzo/oGhgIHXeoaUIPS7oPdNXznfJOeRlWsDmJ2A2CeD0fBMGCbL0U15k9iu8tXo+bnhiyQD4/3J2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIvZuzw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIvZuzw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB525C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735952753;
	bh=5NQADSfroEySiiNlzdsPivsR583XCVuLstrVOdQQwaI=;
	h=To:Subject:From:Date:From;
	b=GIvZuzw/KWxspNtzwWcdqBtS014TwZjJuhN+vhB2UiWUoTZHiI5UeTU0r7tTr1pq6
	 LFmnTR3DOFffzHc8qu9sdDsyKiu05UIzF8r0zKej4lOGXmcJFSfX0siIa0QPkAdEs3
	 puFK8sHirk970s3WxYX7a/6hPd1lpwfhaEOPetFRy/ngdKJ73bAdnuzaFkpfSpifNT
	 CXi8Gebotun0NXheGVmla2XTfDMyWfBdu55LhcL1/rJEVKi3cnAybWV16Yorq/8A7u
	 8Gg6wlwWKkYaf35ecDQ/gwcyLjAVYVSodj/pPSbsfPH8p0cvf0o0nm+13dD4zBM2Oy
	 ELO5zgnLX6PSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9220AE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173595275359.2271.5069560571684260262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57804bf0c596fb83c77be5ed9af394255ce532e5c4d8ea96876420a78c7c5cd2
Date: Sat, 04 Jan 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735952753
