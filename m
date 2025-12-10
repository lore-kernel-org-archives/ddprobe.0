Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E197126A0A7
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765351974; cv=none; b=pTYUSMLlEgONKxHZtyLwI+q53vWgQXUMHVLpg9EjnvSlI5ZX198WlNn93KaOuJpK2uyg1Hs8nUJZGBIvijEe+EnMYdUe6Z3BMM/pD+fbbvEW67NWMKEZMWiusYf6rc8XsgcqZFiYl5UViSQcFAAlakucHpPnWcDJdtbizRUUDkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765351974; c=relaxed/simple;
	bh=XEiOXwl+7VFntqXVnEH2SwTOhmqATaIVuNA9dYgKS6A=;
	h=To:Subject:From:Message-Id:Date; b=Lx49wBnkk8/dASucp5Nzp1Hiz90m0ZWd/Pd4X+82554JjteULwROdsI+63iGte/4CAfQDDxDtk/chaKNOGgtR6RTMeiJ8Mk0JUEfARjrNEf2maVsIJ6+IioqJ5USk5o8lqooSkJRqcfqC4MTrva6qclZZStLZ6zwldDGH5LHpq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7GIbS49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7GIbS49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FB6C116B1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765351973;
	bh=XEiOXwl+7VFntqXVnEH2SwTOhmqATaIVuNA9dYgKS6A=;
	h=To:Subject:From:Date:From;
	b=h7GIbS49m7Frxh2wIPnFjQg3FuIpuSFr4fVdPYy/SqLlW01HHG6PhZDa6JVf/YIC4
	 jU3HRdZogYbYcYx0Ph/MiZRNMfi2yxQHKggdxc6L3jd72fICsIpFI9chYhlgoSMrMU
	 LhPWZWTRJf3pml8TEXTMZ/kZnZid3q93ulp0cJ9I2luyCvIfSwR1Ngr/nqOnstdx9t
	 rOJDdz+8aaRuiVweulvK0ddLSfDlPKeTSEaev+9L3O/gH34XY72HLT30o1QX/9ZxFE
	 JTzPmQGcXH7eDNLsC/zmNVDmLSG8BkSXEOV5KGeUuVCJEcrQVL7fyKeF6CYSN+wHkr
	 PEtlHMqdKe0Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9404CD2CE17
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 07:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176535197358.12700.9621305067774815138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241ef360a9963cb37b466eb769c1dcd005c8b9951507f342fabd3bfe034ddf2d
Date: Wed, 10 Dec 2025 07:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765351973
