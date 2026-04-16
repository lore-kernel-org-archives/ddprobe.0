Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2344C29827E
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776331654; cv=none; b=lkNHAs2RDM+CUno8QVKoYc4KCXw6MVXtKPW7iqkyODlxwLDhKNkQYHvrRJKN/Q3tn7g+2QGbaEbPBUdAQWWp4mzacg5AKltFPVCbSXZ7dNEhqYNDnACCJmNWdzi58n/OB5Pi1Z50RkRi8CSS+CddI6QZ3HGXU4gD5//b0WDx18U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776331654; c=relaxed/simple;
	bh=XCeh0EY1qpNvlh4fZKJWVM1t3MtasNclREdFLdR9uwE=;
	h=To:Subject:From:Message-Id:Date; b=uoV0zyklaf4sE0EOaZtg26KKWHg7A8qNKwIiKXRUCrMjCHvRDChXRm5mF0WtQNbWyeKKQjRHOIQN2EjLdOIUk0Kt8JvMevTelWM4AUs3xv6Fq/OjC0AfjA/5+5N+GNz6kX1nyb7r9nB6rDjZpNA7qgYthgEZD7neF/+4DWO0l5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPimKhIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPimKhIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD51C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776331653;
	bh=XCeh0EY1qpNvlh4fZKJWVM1t3MtasNclREdFLdR9uwE=;
	h=To:Subject:From:Date:From;
	b=tPimKhIegU0pxVdzIsB561CpcU7OWX8Th0mMsamDT9f8iR6YXQFU70p6EngAcTSYf
	 eNuxEFxFaRyCE02uzozS2EiMQ+KtZclJBKlZfWBUJDzxGoBIlVY1Kyr9tXsWXz+MQp
	 qWkw9mMyfj4C310OZpU8pZ1MPcZYrk33bWGvxn543yhDYfqnW9nPAnDoaH7WRHBDkI
	 NV4izyYc0QvvAcp6vTz+4ub2ehMihtMJFZM4SdHHZUwHijXnSgG3fbj2TGia4KnfIx
	 QYRA48p9cMaGPgHWhFO2uc15dTrx22fV5JxmYfef1s3gwNIn+IjyhkJzuKIO4GSMhh
	 9JQ6EJzjMMibg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA07FF8A151
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177633165368.29720.1128653712310333247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a40864198683ec02d9b99414c48922de045dc62743e03e95503c0a3adcca9f8b
Date: Thu, 16 Apr 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776331653
