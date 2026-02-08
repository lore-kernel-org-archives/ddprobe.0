Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12664946A
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770512634; cv=none; b=Ul6B53koLn5eCdEg8gtrij0aqpYo6oRnMocyJH6OOu/bnJznKFNFwVtZDaClQEU//zNJ3ImzhoAJOaA4aio0Cb+XyCdU01VvvJRiULlqlnhTwGETbicmdpWqaiCTlQtbSPxdPeg8fYLtl3kerUlkYQ8hb4OZyeRUdLdsik1f0ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770512634; c=relaxed/simple;
	bh=ePG+pod0RmKBCbnan5nXgmqdH8uvWTM6rPQYMNQgClc=;
	h=To:Subject:From:Message-Id:Date; b=hP48UdWQ4rYWmjAyXZ5kdYchCwboJ05LnXxP6kdxHx1FuqmijmEmNPh9hJG9998JwDoJDpb/tmF2GvG+TzR/0o0JzCRsJ7zaNZsN4njOn8BZMij12/AgjaxmcfqQgPEgsRTFqoxgNwSCFn0JmZAQx0YuFEope0czippXsdfPstU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0nhsn0v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0nhsn0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F25C116D0
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770512633;
	bh=ePG+pod0RmKBCbnan5nXgmqdH8uvWTM6rPQYMNQgClc=;
	h=To:Subject:From:Date:From;
	b=T0nhsn0vL5+6Eh5OLdHTitQOWmlolkSOd5RKB+PhdlxiIs5DGYxPHGxewS8TqOpPO
	 KEjEpo7RUD/Eakm5+FfvuLc2CdFNvYyhd6g7TIu0CPXX+DQuS7mjAXEKOeQ+OEcHih
	 zqJVZ17oekYSof7dVncfrbjrf+yBxa+750I8a+gzgcugIlqKSmzfyHhjVCa7HxpDzl
	 etk0BoOabCYJI+jm0w5LOs70V7XbeJPTV0swzAUiZscH6+3cg1qhymL1S/iCLeD2fX
	 ZHOHvGSPdVkajPt+iff1rN8746s7ZoM7gvhnF9JwXDp1Mo7sanPNNAlObI42kj2ahV
	 86O9aTez300Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B26EE0AF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177051263359.20450.15520631403403032020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 437fcfa718d2b5cf7dce2685b13d9a866096852a7d4cb31818978e5dfaa6e2d5
Date: Sun, 08 Feb 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770512633
