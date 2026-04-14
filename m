Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265C63947AD
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776166654; cv=none; b=NN8BpsDbrXtwlXv8h515vrRtYgYSRIpKyh4FZwOpCGWsN6YgU9soxRk79UO2o++xsO4do74Aj7VoB1yNh2sfx5DeGoy2TOWPj2lsufpAW/dXSnFakNOVreow5Z0B2jFVM9XadeSWLSrkd5kLME0c4DvAiBWY+NXlGdzTi0UBoIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776166654; c=relaxed/simple;
	bh=uXy3CLbdHnmzIcwyPe4j+1qe91DnrZBwqW0NBJHOmKk=;
	h=To:Subject:From:Message-Id:Date; b=tG2XfWhxTO6A1uwEEHO6+JtHdmRGtSXtCuqG4NkdVM0yML4keHtwSPKmLF4iV6wRBxgi9bzeDVHyVpvefkEavd+DgURpsgxTv0ccwNMMuvv0lZgen4+2Vxho/ZzfRSq2TNb1HW52LxcEq8be6U691xFjm1PrKGSRG/07K507QBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LoQnwDii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LoQnwDii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA8FC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776166653;
	bh=uXy3CLbdHnmzIcwyPe4j+1qe91DnrZBwqW0NBJHOmKk=;
	h=To:Subject:From:Date:From;
	b=LoQnwDiiAx5+lCr2d8m5i+Wblu39y23RdQeLrdUnpeLXTaWRkqL0ViC0jjsjDdKt+
	 ByvUEkmZMUbQOwpc1Jm3Lyo1/BKQ72mvnw/bTdD2GNPgkihRgS7wI8rR1wfqsJiK8O
	 d7eQJxpM4c9u0dq62NbiEPR5TWgNY2bn2XSW0yZUdimQ/B5a/CIsYF0dquSNYZxGQS
	 DmZe5Z9kmBnZwV5S27EfNMDLdks82091XuFQYxQHmvss+OYAqQNvVfu99wCJMdy8+H
	 ROZqZhuop0PditII3T4nUhfY1/DUS+jElt2GiBv9N5ksLMj6mDGo/2Z/hNR4y7R/+v
	 Vg7sdwC7rOZdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E39F9D0C5
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177616665368.2775.11917467679470851914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c18b8051ddb977cb69df38511156248bc081b421de54a400f4d27de49063ee65
Date: Tue, 14 Apr 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776166653
