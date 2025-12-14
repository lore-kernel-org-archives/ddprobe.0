Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF111A3160
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 02:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765678974; cv=none; b=OSVfCQzHzXPSz9W0uMyrn2yyeJSjWQJ8llu7uP54rN4hudmgKt4kTHsO6giN38v26mqBSXl1vTGLe/qCjryvGE3L6GG50G5xX7F/m3qpsVTgTT5R/YOX0VvQ6aV/6P4svEPOOhv6aUidUxbLQI62z3VwcQnXJJPsmtbLjrThrf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765678974; c=relaxed/simple;
	bh=Fvf5NGBMqUMQOJsfqYdH2pGfqDxdRgB6Oaf0obacl8w=;
	h=To:Subject:From:Message-Id:Date; b=lU1UVAfa8KPq1Y8C2GpDQ5AJP2CQ5j3W0stVTcmRn1SR3HQyJ+nfsLK1Sy2b8ef9opChDWTXeFsy/XBdpUc1poi7EoGyLUOvd/pJH0gjmSyzBh1HmYfaqr+FzE3JVU4IuK76bp6mNS4mts+kyzXxQMX0bsWrT172cfMqNMlONHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6ZXxlYS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6ZXxlYS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9472C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 02:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765678973;
	bh=Fvf5NGBMqUMQOJsfqYdH2pGfqDxdRgB6Oaf0obacl8w=;
	h=To:Subject:From:Date:From;
	b=Q6ZXxlYSJwRkHJ7Ij2DYln11uWsjz1NnWb7BixLKDoveiWIhcW2QvNiOpWlp/75bj
	 Fuul2xYgYt4RBV6gmgZh/4DmzWEwcWiVXxX6fcCMtfi+6bz9fZdthuem+yUR0pa1T/
	 m+/DufNxH7DxFRn9YAjs97YbBJ+ej4hzUqHONsIhxy1Rc0l5hRCvGULArzt8YiWFXW
	 htuvPUrUlHvU/xxKM2RzBCTteccMTe2mMOwAaMv72EY2R6yLlJnV6Zs0Gry7BAkQv+
	 kL3OspfZO9F4HQH+OhAMFUsB/VeSO+uTp9keX0dhaJv75HqdPY2bHMcMuTmBggASb3
	 9MSaaykbbfEgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B44D5B169
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 02:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176567897358.16209.1326558783126381308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9f3eacb4f346aee8977038f752255b2cfab00b5f9a93b0ae17dc43937640b25
Date: Sun, 14 Dec 2025 02:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765678973
