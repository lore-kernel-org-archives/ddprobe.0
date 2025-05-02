Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E6419E82A
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 09:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746179395; cv=none; b=c/jxFYw5gvuYQayLKu+OuPMhPu7PZ+z9Xpf2A9k6UBiusrLeoty4L8ZCvNQ5RVUwGDBCSuI3bkHSi6dBmI6FCkJcQJ3ms07obH5ojmkeG/+FqechESHvKtEzT/8aklroinprFlznQkw4jCkh8hJjfrzT/8HHIE5lYQBoFJDAofY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746179395; c=relaxed/simple;
	bh=Oog2iZnjEM4z2a9fGATuT3Zg6CSkGbuEsAzUC2IAVA4=;
	h=To:Subject:From:Message-Id:Date; b=pV1vXoumdveXMO6PvScwxWT3/XGXPg/Si8c6V9BQ0VUEeqRrXSNfr32e70jPigvgZ7KeekXWDnOrKdwksMU5iAlznrAhlpFakJgY2uydsbr9eQioXVMupTytNFN3n4xRLHHrhDZSEz+Oqk+setmoqXBeCvXLUEsyiw39P/Twn+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqLMurn3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqLMurn3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A094FC4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746179394;
	bh=Oog2iZnjEM4z2a9fGATuT3Zg6CSkGbuEsAzUC2IAVA4=;
	h=To:Subject:From:Date:From;
	b=AqLMurn3QLBcL4SrSpQ77ogwn6FkAusj06mN7F6rYyuaeKd4e79HjjQ+Nbxfko79v
	 qNsN3vqJlA84JWWvYjYAcDBulA9IQnDEGt/CFoflKSsQ+Ac5REr8oZngeGSSAw7a4Q
	 fI2Ug6T4Kgjw0bmuGFinHKDED9knACKFHJJjLmr4j4OjTt9JHVwRWPKD8bvkXKwLBY
	 hbtczeKfXQvIpsAPzS9qfD/VgYdlC7X6+AlPO3QmHdTpLHnYD95Aa4mpPOiawkzqOa
	 gO8SjQmqye3q/IvrdjCna29iJoWXJZT/YNAsd8oT9+/Pej4JjQsseTl5yuHKSekeHj
	 jevw4fYA0PQwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8FAC3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174617939357.6666.1309904361609556948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92710b93ccccd0fb2c7628cc278a3a04796eb68c561a8bb7c3e18e5cef14b1f5
Date: Fri, 02 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746179393
