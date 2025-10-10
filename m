Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E1029CB48
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760130594; cv=none; b=rwim5tReK8gcgqPO8G5Q688ETGet+JLgcn0c7CU3dHwODHGyu9rO8/j6GXFRFybVWtABEX8d3msoeBjh/Lfz+jwfht8v4OOsx8J8A0R3PbPkT4umnZQIFEtivliq5HDKQ+CDrNnKvG806lm9NLeVnJixbobtCOnbswYRY4Dd8IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760130594; c=relaxed/simple;
	bh=BjmFwzEAgcftgrtshvQR1cQnUPN2069sFDXlhoMLmZ4=;
	h=To:Subject:From:Message-Id:Date; b=dS9Kku2jeWwPrezm2VPNx8yUzF7KFvewrl4LdYnHBjdNUP+5/CgP5x49jDexae+3fkHBB8BNvUHiP3z2qUGE9Ok/I3wCYyTsHgJgB7wzivQ6mIVs5Dj5wsSaDlmefgKmAE/a3gDqkP8IrBeMLP5s/792Y6cZc12UBMqknhhz6PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HV9f+isK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HV9f+isK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13CFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760130593;
	bh=BjmFwzEAgcftgrtshvQR1cQnUPN2069sFDXlhoMLmZ4=;
	h=To:Subject:From:Date:From;
	b=HV9f+isKboAEbXrbMkOSVlhkP9V8ZYwAJraYiM1uOy4DRKOOTJ/hBN4U5Ibaqt2PR
	 1USFLzCVLQrUeHCoUEwXBcO+Qf5hEfVnnKXk3p30pmWFjwbk7dcHKc/L7jrCPbb4M9
	 WBPmOm7jViDcP87f+9lns/gvwq7wace0dWPqw2j6uOKRnS/flgAfKoXIWnn/3yw5qZ
	 VK0tMRzXhTB6f8dSiNXolt8//5Vbsof/yBK82kWvpClgXvkN4TxHMbzGb4l/yOj4G+
	 HLIqgTCsjSQeCfCjNb5cauSUv5Io6mO1Hh+zA+2GhlnR/I0fRaU24c9Oas8T9jCsGz
	 xBxs5nt+ZmEeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F412CCD187
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176013059357.21307.15641165830327012187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1552b538812e85871aabd3bef3db5aea41e86ad60ce135307c957d3a688f0ec8
Date: Fri, 10 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760130593
