Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45898145B38
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732746354; cv=none; b=GAj/6qop6Cypkq2kL4kJcdsheTh0uI2sx03tg3UP+EOGSVFFeGLvD0/Z/ORodzX6K8I8uXUszmrNoqd42LaB7+opUH1jEF3VN+DjmYILTDSb7xiRFMgnxrvFrcDlEolvTBNx1wXIvL4nHQFX33T30PEdkP6EepCces1zo7tPTjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732746354; c=relaxed/simple;
	bh=tImatNjREH58AOPAS+pOYQr6zF71ctn2Qw+T6htLoms=;
	h=To:Subject:From:Message-Id:Date; b=iJ/HtViUuX18onjRJmhesF0rfmmURMHBHHMOOV5CpooCZdVFbGDKqP7qoiBaITd9iNSgwnOZxLa++Ekpql4fw1R7nuRc/rgTQBUadSa7gwAkbzcDK0gYNn+05b94C9cuyJMd0T0ZxQMFiVdXuqZPDC/NGtxj3khWykGBuIttQiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AiJ02xvf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AiJ02xvf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BD5C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732746353;
	bh=tImatNjREH58AOPAS+pOYQr6zF71ctn2Qw+T6htLoms=;
	h=To:Subject:From:Date:From;
	b=AiJ02xvfzOOtm9X8etajBI7XUOEakjNGUnaGkdDLv0F//K1tW1lwZBJ52stPTdwtH
	 Zex6n4SCQE9PQi9agEsKi1t8UWweIz8kpa9jQ9UAt5b980QncHUnFy5N1GMgiOzoNH
	 z93njUBRMdqiX2P3SRsTs6c5yXLG6RlZbvt01xb8ZoeF91pPkuFx1oQh2ZP6XFjDLH
	 wQs03FRGwJa8d5r4WfGbwsNawuhU5ocqq0nhifY4lDtywzEz2uSIDCbirhi5vow2Mn
	 sS+E9yTZHide7cV94kks8ePom0em44BAUssxyYiVzCunva9P2icMdUK6eyqCgY1l77
	 QwweSVrTPCTcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E764D6D247
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173274635360.7176.11893651577963989471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aea813330c148437f2463ab360eac329258c3df581f5bc30c4e289a807e7dd9
Date: Wed, 27 Nov 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732746353
