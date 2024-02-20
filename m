Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E6F2F2C
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708390697; cv=none; b=P1IKy7dM4plmrzFvPRbCuRadcGitIvMFDILJ3TNxjUs6lgjgfiNEA3hLbpqjR+3k6wkeSFvU6Q8RtEVLt3cXgGiVPiYpDz25DlF/uIHcxPB28krxUb02Fr06K+3Ed+9WaLnQ62rijhy+u+H2FBxqBOxG6Im0pY9CZZZ6O2fEOKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708390697; c=relaxed/simple;
	bh=qSaL27Vq/86/34RqPo9QBFcdIsNKUzcgvH5N40uIo5U=;
	h=To:Subject:From:Message-Id:Date; b=U81enUhGDI3nsIuGfD47le0iVFz4IlGVoXJH/gE6Mq5ErMw7kpiUvK6IfkRVyZkslKXpTX0DjP/yXcDl2GRIfhU/Fkoc1ThzDSxC7qeQzaQ0ykZOAavktkgqsQ8TmglHwiT2GumMcfJ5kz3YO3eirjkwOs7hluDl7Hj0TjSQALU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+dZiRHO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+dZiRHO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 847F9C433F1
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708390696;
	bh=qSaL27Vq/86/34RqPo9QBFcdIsNKUzcgvH5N40uIo5U=;
	h=To:Subject:From:Date:From;
	b=t+dZiRHORaRlyLD+7yUEbM5ljZ7Zy4HdnvdO2sMo4TNql4jqPPw43glQc2kMzI1nY
	 dZCUYIaVR6EtqFFDyqDfJ3qfwGEv4Jr0PEl+EalRMgD05iknnNZpzfiRDKRSvw3umi
	 5GY5EIpPRKbXO0bC7Trk5SdKx/KPvPFzkoH3aXD01CXBc38tcxSzv2p5QvaNxQZ4ZS
	 Qcl6AMfDVp109GfMX+Y5y72OTkhrBccadELXITTDDYP+vtiB/c5hcRrIJzTf0GPBsR
	 q+wEq5pds4tYS1IRH+YPAxsZrVXv8w/f4MXjDMhDoHm1aOmb2NyBpLepo4HcWlhcpC
	 FTE+3aLKNDTig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68C16C48BF8
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170839069638.6798.4862754417438182781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dfb7412de33fbc908c34adf9abdd3551ca3f778bfd8aacd7f443b4e9e8a83cb
Date: Tue, 20 Feb 2024 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708390696
