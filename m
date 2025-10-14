Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11610188596
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760485794; cv=none; b=NEwdN1zlEyxlDZWIrx8YARHu6GEPa7jSW9yYBEz/9c6MnfEJTBbpIXPfIkZ+psm/4bxfI6FurtEgbmxTXmpNWYAJGnlEzkF/RKOzEJI5QH7QNuZN/SZqBPti+WmijM/ahqnOHnDd7b/RiXm2BOToqyImERUvE+GoolLcioDOmA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760485794; c=relaxed/simple;
	bh=CfvjS+tZVEgq0mjnyNn352a249F9GUYpA7pS5V6DsRI=;
	h=To:Subject:From:Message-Id:Date; b=l/cTNG8WYiKAPwowBNUIwJG4Xvv7aPgeIyiP8RRPb+fNwYWYmLNxGDbghW5rOfqImMgN/9Ve4cAezxKcNxZMPlhC4BH9VosqTmFucY1JS3PhbriIzvz1VDbCvtdkhvl0iuQ3LmmW0HPGrTQjci7Pb1+yvUO2kPany05GLjfFFO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q98ndcl3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q98ndcl3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0496C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760485793;
	bh=CfvjS+tZVEgq0mjnyNn352a249F9GUYpA7pS5V6DsRI=;
	h=To:Subject:From:Date:From;
	b=Q98ndcl3FNBEWlCYzpiHlzUtMTI8QEYgXXOrPAo7duUbip7dr3Cdxron0MiPUyy3x
	 y2Y+8InyDOwktPTOdRe7A96KTHh7fEREn3MN9X/ah44imt2hToR4yetA+6EH5QnD3C
	 EdcWCk0tegmAd0mbCviqqyM1iXsDF2qM4lnDQ6RmMoGPuZi4tQC9/fY4rIS/mXUA80
	 GY1L4EavqV2y/DVnuvRMJt0dby5mfCsrq8baFOd52j6cXW95sbKA517bJ36XxQS+vj
	 XV8QSyy4kT6ftzypQjiCD0ltgdV/7LOE2/QG1d5VJJOOoBPhL384xjxyio1wlwYniE
	 yjw6PjOhJKGFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F7CCD18E
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176048579357.14330.18382718892606460131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e59a9dc1970e21f17fc51ccac1a597f856876ccd75ef9a1a768901cc20fe52e3
Date: Tue, 14 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760485793
