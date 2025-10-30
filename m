Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217BC54918
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761828594; cv=none; b=SWXiCs2XAjAdOM84cR97aQZ9XPUPFRavav5UkJRNjLCS6bjDDaNkIY6mIaU3CCxgJLwvTIa+EsOFpj5XPppPLlFs0yE3HVSweSMv4wMKi8mldZTfKQ3zL45tdfpP/qLaLfrbH2bJNGnHBDXnjb82doXSmqhH8hxke/HY49aglHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761828594; c=relaxed/simple;
	bh=0RZ96Kzzm2GqTGne7Gd+3ZbH7ahvvbJYv684BL/K728=;
	h=To:Subject:From:Message-Id:Date; b=I8xrjtZ7fU6w2NiQ6BZdCDUNKDl7vEicIekJqZsEhvA/4cl48sPTP7H8JVackR1WHTiUsonKCh4FqFH3mbbL2VmzGi9awtPRIqQVghtNi7f63TebcGee+4IpMy12APfVHxnDgVIIMxR7cLMGng/yAzett2svYZyR2ifCvXl72rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gK88f7XZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gK88f7XZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A260FC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761828593;
	bh=0RZ96Kzzm2GqTGne7Gd+3ZbH7ahvvbJYv684BL/K728=;
	h=To:Subject:From:Date:From;
	b=gK88f7XZd0YNVA1uLee8tOntxsFItgw2EwcsRfPKhzn2NPvDsjB6qmii2sL64wtz4
	 TEEiJyMUTjbUYcWgHSbr6RVF5/Oh3JE26A//R3GCEfu+i9XFpW2iyWWZaboNVuBvLW
	 UO+G5s9ktm/qMrizYYuxGLLRIBct1zLqae4i0kJpbteteSzIC33A/HX9YtHkkZgtOo
	 pZWvXYvAQcSwb24j0l13p1meAMF7sSpZI5VOZEUssveOBJZCyrJ849D/LO9OqcBDbY
	 xxwpOSngeCBSH/hWZYt0sUbiMocjkuclRg2Ftx18eW/UfyrefS8fA7JDZRe52JHqh4
	 zRSRDl49FhTsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940D6CCF9FC
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176182859358.29607.11820062728006337841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0e96ced2e258b1403e98290e345d9fe01e58ec4f5897a6b666f98d9b950edfe
Date: Thu, 30 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761828593
