Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7299D357D10
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787481634; cv=none; b=XIv1vmDOBlKRGqvffQaW+efxA6l7SfK4XAAAQWOe7tjhTY/kNdMW4REuUZPz08rhPyr79+OSdPxuGroKjWsSoglI9HbqvSiXWMe0CU+I+N7ChgnfV1xtE4j2SEbNAQHI4smLvaFh/uquz++ry7JLqV2VrBgZAeVScJCmR3DLkYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787481634; c=relaxed/simple;
	bh=WmZdeBOjS24id2kD48BClAYlwC/MB68xKLUat0hrsQo=;
	h=To:Subject:From:Message-Id:Date; b=Vqh65v4ssZ2KvYeUULNgFW2xuj2uQ+QTfhqAdlEyYh4Dgiy1VSfzVcYLqEij7NoD1TlDkfBTjhonRt3SKl6OQ2FkdGQNhNwJSHarrkTl7UkEfYz4r8O93KeXctsw5EqLB2KAwYe7JVMMRq9m/b6AjQonHQuMvCsPEEbUoR87viA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CU5p3XdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CU5p3XdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7A2C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787481633;
	bh=WmZdeBOjS24id2kD48BClAYlwC/MB68xKLUat0hrsQo=;
	h=To:Subject:From:Date:From;
	b=CU5p3XdYW17uZ+FPojAFcEIXcu1p5aQ4SOnIaG911CM2/gQ5Reo025uei+9BlLhtt
	 sOcucjaIlRE3PBCh4sgv56s4t0B0+ss3pFpDgg/fSUXemW+HIQSMRvIQCcX0D748Ck
	 IHTh8LEaQPB2G4RcngHXrB3vgUTKt59Y9Elw4VJbcf9gxYiAUhXLp/9a23okL2IQJD
	 vyqy0AoiiZatXgTgim9lcyax4fhDGqSrONOanwAxCSd25qacyWJgBFCAgPjOL/p6Bx
	 3ZaT64UQTHQeGK9rrTaOyfgjutl1D0HagnR7tv82EgXM6SUjO/fXWD26TSycT0CArH
	 IEorLY5YDQQyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5F1C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178748163369.8846.16646360515013742443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2fae7426e588695f7a61bfc4014f6584148a198f9b84c72aa9409a6ae155ed4
Date: Sun, 23 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787481633
