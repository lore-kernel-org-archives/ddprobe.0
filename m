Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1997C3375CB
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776488254; cv=none; b=cGGsqgPnQpjV7Jo6uXVaYJLZJmqXSj3VWoBI2yBZGkCKUMxbuIDkwWLxD3ROyJdAd22IAvIpyjlZhM88NLdsPJJnEjswEl7bpaov7+F84v43M/JEVMtDCDBrf6qcYbXBYajjrWzuHSJkJ1ZqIrcVkSJRfkCmKgddYp+0EmOpggw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776488254; c=relaxed/simple;
	bh=/AjofU5mbS++HgTKjjUu5bBwyNROJ8sCSYiHCPJqhyM=;
	h=To:Subject:From:Message-Id:Date; b=nR5MwELNmrkJ0EozF0RW6ANgiUsgjKirucM89YGw2/iVQCcy77sc0mnrQt7z/TQM6kfoDDxpdIFIhBCabBQu/EIwH8F2nBTtLTeYCZAQoDF0lW1cv881yDV38rKfpM1kviQgQRBlsLtegojtmRNe/3NPV6DwErXIAidQxdpXR8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jscDcXiK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jscDcXiK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB93EC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776488253;
	bh=/AjofU5mbS++HgTKjjUu5bBwyNROJ8sCSYiHCPJqhyM=;
	h=To:Subject:From:Date:From;
	b=jscDcXiKI8MurJOSywvMMpP1Pqi0hUxxBFRYgT3twcvgQ3z+EXVOIegnztsWnSJnq
	 N5esLFHrX1QK6wW7dlk/mj3yh3/TGHzp/zpXeKzeCYQDUnp0nPxRyKwZddIOU2No5q
	 BgjiFiRS8sQF7iiSbjDxvcENGhHgHLStRafnnD3DUU2x1cSTecbZF9/2V+M7G6x+Gn
	 Q4YKZnfZlu/0Ajjm1rWCuViYOSFVca2+tMOBqxrPwyFv074WjM8IEf+urdRGocwhuh
	 yXekdZdS6EaPAlXX9F2o9bMW7XBQCjEhgYqSvgPjK6KywhoKgV8n9NWHiAotrtjuL2
	 bvLoNH5EBnFsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9A5F436BC
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177648825368.23575.12168181799438129446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8218ce1f3a18ef366d24849d66c049de0bb182015e436a4568e570be07cfdb50
Date: Sat, 18 Apr 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776488253
