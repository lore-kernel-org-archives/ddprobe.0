Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4500F350D7D
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789254634; cv=none; b=ALw+Wj2vBrnNlhe73RBztA7+Ztl/EpsadIm8p9yS7VTL3ldloMDib8WQ4lWUPsBiPEA8lENq1Shi5ETO60X56TX9SRsWtVi2Aydg9PTfb5YpvXrmprogZUeapdlAiQdrhsMMWWjc+qR6UKg+goIEiBQQIJCrQEWGT2cx46tJBFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789254634; c=relaxed/simple;
	bh=q9iNRftsDppNPvNhKDbgS/Hvk50/+Et4qxs1PkNCTcM=;
	h=To:Subject:From:Message-Id:Date; b=XRBYfcWa6K4MQ77pHL9D4RONJKqyFZ27SGxzWIlnOn8cC44wSnT+CA7woaKEqqN/HNqyDz+2uJQTdrNz355I5EZ4FwrYsS0Bzme52HuAKd5rEmgichwXIBcWoESb4kHTUxUWTeS6LG2rd+5kzEkgqKTQZvoZTehgZeJnyLrYhug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0nI/gzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0nI/gzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3170C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789254633;
	bh=q9iNRftsDppNPvNhKDbgS/Hvk50/+Et4qxs1PkNCTcM=;
	h=To:Subject:From:Date:From;
	b=U0nI/gznM9HQcBojGNXsXU4c2MCyBBdd3X3MxU0+jRDMHt7gZlpA9pty3IiM+g7S2
	 VGl+FZq5xwDaxLlZY18d9QB0RPYGv4BSYJ4NcpVh8A9rS+DaBK5Y3Mj9YtYGU16wWs
	 6OHRj51WPPF4doBb6+JoWqnAw+R0ifJU2HzsJPgbewomxtw70FEVKmDiPeBYHaugbY
	 KzcMqUvzDWjFAx5Sm6dzsg6dzI6MDWZzgGIuiUxbq2GbjI7hYPZPLjRtn3Xm4z6t/8
	 Nn28br7kNhJwYOLjbf+992rP7a1hoRlyKuc804/pVzcT0GQSGaFk/EQQDwCoaiMafC
	 GVJPLmtRhtOYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC7AC88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178925463368.7531.4183563237604748531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f05b794d44bd37f5dd36022ff9fbcecd7c72c16843eb487955f41dbff7ec939a
Date: Sat, 12 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789254633
