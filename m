Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2122331328B
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 16:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776184654; cv=none; b=Zz4hrs25e3aBmWCheCK010oNna6AMvX8rYb0jmsL8EfUsPACr/wEmM4yz6bku5NtSLTiqXHUNByN/mA7SP7B78L6uW3LjvdAdQGwmaCTzQUjaG7vLtrttDVjumvcKmvDDygr8spuZJ1tNFJXhbcfDKfJ5XqXYkXzyf/Flcwg09Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776184654; c=relaxed/simple;
	bh=kujUD+lqxDyoJDF2VE2WotvrhjdGEWr2eD5tyh3jQAY=;
	h=To:Subject:From:Message-Id:Date; b=CNhERPKigjOGpeb1Wi9PYMvmATnEaXmq1EbSCayh1Q2u6+vQTP5/ULvYiAieHXh6BzXkBDilAhGJrrf/M18IevrNyaCBdRzl5bcaePQKvUrrkkTwNk2v1Md8ruFU5MSXAlG3jmehNoA+VSqzrHYdM6ifadTjTqZWAqk7JXHofSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kk4D+Dpr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kk4D+Dpr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18D6C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776184653;
	bh=kujUD+lqxDyoJDF2VE2WotvrhjdGEWr2eD5tyh3jQAY=;
	h=To:Subject:From:Date:From;
	b=kk4D+DprqZKFByDmXRisaTob1NDVcjHqFo3H0gbPiDFZFKjG8laqE6a3yyU/OqJKq
	 TsmifElHWJB9adqIGn7Ub8hkTMMOUHY4DadkhSHk2++RgrFB8SlTMU1eldtBKo8rol
	 Q2zjgSxWv2XGNkC88Q/wcFVhmL/p5LhyWtYAjBaaDxMrRURbuj1vb8bMc8IV9zJzCJ
	 6YuK3B/Vzos0Qa/qcY2iE4BscJyyu18Y4z0biwVY9i7hjCA5X04zu2Rk77ceyOIyE6
	 JWQM/cns9phmenNHuMYEfHDz2UskBrdWg9XQR4LOJ2YTrufUWV1RWsxpLkMjhte87N
	 GIRB4PCw2kGdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC43F9D0E7
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177618465368.20627.674528160515140948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d690021fc7d77addf9f7a64e8f4e8f1af79761e72cb518f4a43a2f83cdbab2ff
Date: Tue, 14 Apr 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776184653
