Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1D231E885A
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 02:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778466634; cv=none; b=NoJ8OptO5Ri1DshASZNLbrSZxcIPYUBJqvjz9SqPmFW089ShBXJbNwW1zFEigcf92w2sn0QPS0XNGSVs0XVgBgKX2fbKoPNtPpsHFXFHymJkA+cDWMxPrkf22DgJFODOulCcl/ngf7dSTWW9Yxw1FdZh5A3CXHP6zLDJLFtmiqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778466634; c=relaxed/simple;
	bh=jx6BMokki5rzOz254GirS1FocMhH98F+yIo1IbpXt/M=;
	h=To:Subject:From:Message-Id:Date; b=QDUWoJajW8pGP7eXT5RxWw3hdEg5rUk3SFESHFPkuiEpxVcivNyDA7Z7pN5XfpTi3w6l9VYnXbxzxXxPEYPIJ7aTzzi6zzW1E0SwwrKYQi/3EPrmO79ea2hJ6aPnBTqbK+kfk51hc8tOGl/mZcy3GGZnGQTYWYraaGA3KY8BR0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTlUJ5g1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTlUJ5g1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF2BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778466633;
	bh=jx6BMokki5rzOz254GirS1FocMhH98F+yIo1IbpXt/M=;
	h=To:Subject:From:Date:From;
	b=NTlUJ5g14PQUp7HOwCIuinKYJVeyWLazFXAJhOCwd5r7Ti5F3Nop6ahbn5jstvKBf
	 IfMEpGUVXmRqPjKVe8dxnCOypt4qQESjeeEk5t4dTbd8zFs5wYnWrXMVv4E3mIueA4
	 XocPO/GkAxNaBLBv4d+br3YLc8lKRc3FmSTLZFDrlgHmoCvvQVXtLIRSCJfeD7PHLS
	 jwhYsEAoIXDJDm5DYy+2L6PtW0OWNzM+C5y9iVS+z2/JqsJcmeAE2C8/VV99hcIgmW
	 YOWaCfOpWKBpl81gTgoKIBCi5xwWJvaVlh95pIQ3XlC1PAJd5TccmM8UCJmLZJOUMU
	 xGQAhN9RwfSXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8B0CD3427
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177846663368.15384.10276345704946953556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69473197eace734a50285787d59698c085fb4094cf3ac5069c1d44390147389b
Date: Mon, 11 May 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778466633
