Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276AE2C21D0
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767349434; cv=none; b=HpaXwFUWzwrnhIiDT1prNfh0t9Sn1pqnhK1rt/NS2ep22EhPJUcVFPvI3OW7u/WUEabvLmrQqIJDYpvuxwV9h7uNBUry92DAPDygWPS5fCQn3ctF4v5TDxvRuRVEGCVOeMqDZ2cY4rMhvJyylBgzHeC5I+bHpdl0R/8FmI/FWm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767349434; c=relaxed/simple;
	bh=B8W7WI4pDzUVl4CFPXzLeArePgIi+zbicWoJNQfid3Y=;
	h=To:Subject:From:Message-Id:Date; b=NLQbeUaFKLS9hGxUAWgZK0VNcDKnbKymSI8W7A+8fwGE2jl4oUP0QC3gJSw+29/O8mjaDW75qnI3dsEPTDv90Y8G3M1+l3grKPZtGwJ3qrUzQUwXlkFJVaTbiHHsiSk2tAD3/H+lXcOL6OkMnMVVwMdZP84GcqbpjH5f6xfMO6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qj4FU8Ys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qj4FU8Ys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C70C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767349433;
	bh=B8W7WI4pDzUVl4CFPXzLeArePgIi+zbicWoJNQfid3Y=;
	h=To:Subject:From:Date:From;
	b=qj4FU8YsmlNa+UiRPui/fDI8tX1zUT00tfRxjOvhI0Ks9A6a3BYv1QDS+Ihcl5CTI
	 /22I0VFi+gpaalktznhGKnvGT5WG29de4Klq843B8RE4R0DKat9BVTJubl/zJRm813
	 XVCDkOzbiVPktF0gXEy+Kb5i2aiXGSsSIssezfzbCNEJGX2i9bpRapB5WegcbND7QT
	 tCYH4qTAHgCKSw7ouLN6eTevLNGIyfXw2yHiWsdr2F6NhddESCzLskEuaFf3y/9rvZ
	 KeWEyhD7YqVOLzxn1STrGurBDt6O6l0LxKr6duWWNlLCNtvle/wkDRaFZ5ZUOmi1F6
	 dgcuGD7zmX8GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9174CFA3726
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176734943357.2235.17404686874429501315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 830cb9a76a02a604a371fca4cc63225a1af83788d3a0475d99bc532c975b5a77
Date: Fri, 02 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767349433
