Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F83E32F75A
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761048594; cv=none; b=tySlBS0vOvgJpr8jhb9+8GQoNSbbUQ24Gu+Skp7t9/u17WVkFJBEzLTdFRPa6I/JXjogedCpWkY5tJSZQXatKDELU/7yBWlYfDP8r2+d6KVInIjmVnRIGAuue+Oa90vh3QFdLxCHTUlthBXoQjdW+fxPCTpODLBLLnAUBRYMNq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761048594; c=relaxed/simple;
	bh=fsy0HVDa6MxCn6bs3lt9fqLnxhH3XzSoxFhk7moG5kU=;
	h=To:Subject:From:Message-Id:Date; b=R5l0HTp1z//v7ssuIPkaj/frfbS8SIlMxanG9yIOki1Rd8XktvgZ2q5/zovnxwmvhBdrjbftWecTZ1Qk3tWIGkPnVrK3VzTWq6pt2q1k+0yziGyscyL7JShXKbSXg7Il8a5zsg9mwAfTh3qxVXrWQkjhrHF1htdjY7rsssORcHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3iSmrg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3iSmrg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55DFC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761048593;
	bh=fsy0HVDa6MxCn6bs3lt9fqLnxhH3XzSoxFhk7moG5kU=;
	h=To:Subject:From:Date:From;
	b=E3iSmrg7EHNF9wYXVz2/fPzfE0mYbdk7wrQKAplk0omIG3m3UH0KyDFPQq+NXH5uf
	 24Z/9mjaAmugIWSltwiu2bwmFIetdFr7Dc2zmumI1aCjM0eaqwbkhk9i+3FhGKz1I8
	 pTqMYSRhHqmmUaM+UR1U3wl95bPfwmxXiwHk8hfW4eYvmNd8CCmz/YFN5gx5dI42Wg
	 NjCIcNhDG872lSEwUXPVH/n64ICFNTgOEQMtP4zkiZGxxP8CEYtrLbRs9lDqTryzWM
	 6tmv2SrVLB8xYsjDf9Hg6YCt0T7odMBPI+xXsP4zNwiDhV/eeh2JtLcBFc7iJorfne
	 QMlLWcxVUzipQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CDACCD1AA
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176104859360.26738.816786658127046227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7e27fa24cf91573579b1e7a1abfe3f01057a6836902f8e27e33be979bd7de9
Date: Tue, 21 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761048593
