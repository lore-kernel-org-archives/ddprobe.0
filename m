Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C657146D77
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 13:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718371703; cv=none; b=Q4G6zOI5FgiOsDQR6DTw9xkSP72k6nfQoRjtZ6gUghFLfcmmTR8tX5RIU+f47Y2j8Mo0KvnWHaW0V6NCmTFXLBXJmWAKBrIz7LaLvA+EsUCyHZG+eCCHKcDRR36fKAqX7DSgB7tj4e/E3mQXq5MG9YNiLEB0cxROIb/8r9cF5bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718371703; c=relaxed/simple;
	bh=6rzuBme6jVmIvb752lFqi3BQ7iJ0paNYIC6Y1N9vIaU=;
	h=To:Subject:From:Message-Id:Date; b=cjC6mtWkSdutIw6ilgyM8Wv2vkFxIb3vSKBP2MU0zKjCYXKLuoBcmEGkwCagmIUdNvwFe2fJ72r2R9RPlp3+e1tNQOEPFErAlh4o38yYsoTUgl+bee98GSotgj9j3ys9ZCR7F1Bgq3jKMx+75a9awWndXtSQvmfkW5e2UanTcTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVxGKLpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVxGKLpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1506C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 13:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718371702;
	bh=6rzuBme6jVmIvb752lFqi3BQ7iJ0paNYIC6Y1N9vIaU=;
	h=To:Subject:From:Date:From;
	b=RVxGKLpVBrqVehB4intIRVXYQWuVvuUZZ5rzAj5QC8RTtxNzTGmyfTZOHwT68rFDb
	 ScmAzARJsqOwmPjVILYecGT9ynJBNbD1kS/kbrYy72TGvRV+1juqmRuo4OtVRE3x43
	 0bqy+ygdh8M0BVNV7+OFqBQ70KVTZEh4s8n2KSUciKEj+Q8ueb/nIDkS3WkE2tb2VB
	 PElMte+3yu3v2Yf+pqFJyz+dfxkaJh1Zfrf/f87xgLZZhYy9lFEgIA6y14zzgZiJ/e
	 rrMLngvOmH7EBkIwlBGdJac9I7Mx+QxXywiIvZjH+77tpbhncIpFX4T5IzKbK0NoDO
	 LsDK0p+fiWgyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D43C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 13:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171837170277.9706.7961669839953687881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b081acc1128dd97d21fdbc49f16b037d21a426b5cc3121a7301b8ed32239e50
Date: Fri, 14 Jun 2024 13:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718371702
