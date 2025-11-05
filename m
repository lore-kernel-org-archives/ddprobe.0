Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2729921A453
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762309794; cv=none; b=SWGgZwTcLRd4osrGXuPNmrePbMlWyP9PMBlABO7+FJvL62SQmLRG0GnSyxx/gOr/zWwWrcjdylidl9NI5Pbm5cj98TV8ZMcwMXfFs7CL3pBEw6RQ+SUhtSKnk9AqWFaYv4I0BCkiFDsoqZA0fFMujXNQmkLQeO1b8bDmiWB63r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762309794; c=relaxed/simple;
	bh=N1LSrJChtb4JWRWVwDaBZXeJCQ/mTYPVy5F6wTAWo3o=;
	h=To:Subject:From:Message-Id:Date; b=HMOyAEm3l8iU6IRI36DzaD54Ag1mrUiKZF2WFHs6ANQhZUyrZKuRmLqqwMqaTyWLNV6U9ofdPP4PCVUgF+VYrqjDJZF36VuHv2bvO7NDL8p/dQatAh2Q1tGUANeAEYSEU0I7gdf3q9790nb9Cs/YsLdcJig3EEq8TZKqDBuB84k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0SjmCAT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0SjmCAT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F567C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762309793;
	bh=N1LSrJChtb4JWRWVwDaBZXeJCQ/mTYPVy5F6wTAWo3o=;
	h=To:Subject:From:Date:From;
	b=H0SjmCAT6R4VOkIIUFHeeqX/gez4xPl/29kzCK9J4ZLBoRyTva9TPDOEyiG4PVg10
	 LmtMY+v+KkGtSUcaHOYwLuWloPJ+iOj/1g13u8fyNzb89XUqrhwFb25xsZKk9rtVNP
	 PRdDnBubLywdgT6A7T0uXqIHzoBoPn+kaCYd2jyShEBk7mmf02wLVoy3tN+LLzmQx9
	 CeA4dDFQU4SW9wu5+fAtTaCIK5GvvSrO9PN9EUKBGryeKZ/0eKyD84DcJUMW9iAthN
	 CTzAWfC/3DzDnn3lTAMwJn+FD1HrI317gNOY20114q4zZSAOc2bSWH5jYhWyXUOCWc
	 3iGyni9w3Rt3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910D9CCF9E3
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176230979358.30071.4356178951481623135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 009e80bf11724ae3f78659923251ca5d4ebec3a8eeae47e33f4de64cee218a18
Date: Wed, 05 Nov 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762309793
