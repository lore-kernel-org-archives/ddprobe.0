Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223223A256B
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772807094; cv=none; b=NP6HLdYGDjHTbkcCp7ZpxcN1yFBshMXRV/gNRytcBcSYwR8vXFRfv1g0dVNI60JScK2ZO3A3qjzav5RS63Sqop7DffHhE5osARCZXf3D99r8xtQ4ZFLNWGnwfppWtPnVom+dDj+YQ7kqURlyI4z2kPfklGL2QC4CPTJO4W/x6K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772807094; c=relaxed/simple;
	bh=ysFTPCcns2YolpBxU4NabUwUXS2PQe3k65DhSNy+RKw=;
	h=To:Subject:From:Message-Id:Date; b=BmVCGFE90VprXZUAhwmXhaJOk6nncZ4+KuLpIVlCmxClQlU7zmC73LRrxRvK4DQSwPFWNyzRkAUl4TEuc4lTeBd9dJRyfN6vZmenNlV44zb7CRgD3PnNrvowWOlorZQ4F7qvzBPdIra9k2Efmabrgbzymqy5UyMYlQOGP9IqEVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyKxkLOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyKxkLOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3827C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772807093;
	bh=ysFTPCcns2YolpBxU4NabUwUXS2PQe3k65DhSNy+RKw=;
	h=To:Subject:From:Date:From;
	b=nyKxkLOV+KMpbzhpTXUem95HbBRLyvo/9OoGsQrrx9YHkhtIG70gQr9KV7VWDa5qW
	 4HY5OJ5UOppikJ/1h5M9oCPGq9ACvinHS7cr62+aCzwFdGqKX7qZ84ekt5d3ihiJku
	 s2tPtMB5weNGetR3wUM7ELuclJrVpJb3vKuSuuzoioXnxWeKDwHVMJd+4R9wJesBOp
	 NdsA2qXfNeEk6pOk5Q3CtTBlLRsvoySOmy8OuSsHkEu6yboxbu/C/nshPhuILc+urs
	 Pb0rtn5XznSVpXqD8kKE9Fwt0S/9sdNvSaobkG+wsAFKuxgYn4jE7QzxBiuyzDVQDG
	 YPxmt9pFKDPlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ED6F513EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177280709360.19111.16095094789975423835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df66e3b975e63bfd1c66f7a0a60dea60786e08c8133375f124cb4803f6425173
Date: Fri, 06 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772807093
