Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D06C361DC1
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785547234; cv=none; b=q514+y5TAkDnkJVMwOeQECF7CJw7YkqYdQhXskwICuAq+p52s17xZ/IAw10NcEG27k8nPBwIDgAGtSm6iVkZO26S0feAcqqtNAfy8LKwUFFHeBcuIHi+CCW65EC/rdC0HR9zniQK1r9VVIV1NE7xej3J6u+cpSEcuKsT/finTNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785547234; c=relaxed/simple;
	bh=uJUe/ocqykHbRUySa5qvH4LvGP6p4OeAjEu3/iW7Kuc=;
	h=To:Subject:From:Message-Id:Date; b=fGaJ0rM3feDLGWE595RXzoNTds6+VIkKmNVcqZ28MsmIlLAApRZq2LW5KYp/XTqBq33Eym5Xe8tjBe9Z8FqAeMyfWyv1q5eiRvSlZSCS9D1WEUnTUMh1/9D3iDDhV3HrbyQW0lGJtLCzIlS3yOVqhJDd1lfcHw0Ghu6yx6OcAFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zb1yvOWK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zb1yvOWK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1690C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785547233;
	bh=uJUe/ocqykHbRUySa5qvH4LvGP6p4OeAjEu3/iW7Kuc=;
	h=To:Subject:From:Date:From;
	b=Zb1yvOWKJayMv16ecMAnMXKJySVfX8kMdEEgF0kv5Z/wNcuk4GDZOxyrzAbE0GxW7
	 3HBRdd2MpWuSfUfMHO12hjEpYyWuozugkgjjKNgB5W/CP/m1BgTZGhAb4dsDwdlzlB
	 ab7z2bub94Ut6NR+P4prvIWfirTlVZxuLxA2XKvHth6y4jlZSUsHSqNRvj0zMG4mu2
	 R9yp6k6Jv0aJmttRBrybTiiLN9fISWpz/GaU/do/I0bfGgPvUnTT5vCaRAk1AIooKo
	 vYT+CcaNeVKpkBA/nJZ6FWv0VI1OY222uq+XpDXAXi2XybwW5LN312jseWaDCYsEx4
	 /QDufBrSmAx+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE6EC55171
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178554723368.24870.15722611146007532022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36113270d4a80c7b6e7ce1193a8ffebb0c479ded16ad049b5b9dba688864e2ab
Date: Sat, 01 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785547233
