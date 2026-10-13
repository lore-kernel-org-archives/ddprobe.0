Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429F44C6534
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791888634; cv=none; b=aCOzcQi2xCV5Bc+u6mwPXu7uvJK87i4/O1rg+mT3/XBo72ck3HJF4kg3oO9PGdjjJ6KSY1bPSK0G12kAzyhU+EsvNr9bHtH0Msgd1HWvH2oCvHgQJZ3LELdgUEkgqdFig0uDhMrqBvMmVIb23ag/2TYKeZAzEF+uTYFmU6bBHrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791888634; c=relaxed/simple;
	bh=erIw811i5Izjon1Sg3wnLwP9CuNxoXplGEKhh6yJf98=;
	h=To:Subject:From:Message-Id:Date; b=rybed2CLWtVOOPD5Kgb0nbkmwkCxmwZNJEhOb5upLSYRIorEqvjV+OBiwyO9H9KCrUWBJ0p0fGzQETp9XcY/lQee8LX9CIRSHKM/5nC1JpPOxHggsYJj5aLetCmY+YymrZNEQM7OOK1KyF+Jh/hNtO87f7Gc1L8htD9iR7sNayM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGs7XEzT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGs7XEzT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD13C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791888633;
	bh=erIw811i5Izjon1Sg3wnLwP9CuNxoXplGEKhh6yJf98=;
	h=To:Subject:From:Date:From;
	b=uGs7XEzT6fVi99QjmgxWRbGdG1nClkAfdU48DjMNA/288aV9JHBlePc0+qcovRrbv
	 blVOKXR03jbc7zwHR6njpcFjOky8AdYFC+Vcl46eLG/ARUnEMzsAtcbv2EyLe9VJ8z
	 2wI69bBl9BmDZnQhTEtWqVKxdKTl7ozltC6x4ng6jR3YulH9BZFNqsb4U1CRlUByNc
	 BJIyAlVaD6g3cI9fJ7avOVFP1+MumnCoaMwjv1TQmbTO62rs32BsaLR/TYQ7DDxMWH
	 7/r1JNgzlAJ8LmG6WiR73yCWkDOwQB/+ARIsBbvcag7o6TpawN1GGYZVHTPPre2uj2
	 IPjNOwF6IwpuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE554CA9ED2
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179188863370.32661.10752819852505989375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3151c9d7566e629aa90bb6feb890848369fcffe5a9099282a3adf19d5f8e02f4
Date: Tue, 13 Oct 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791888633
