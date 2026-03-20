Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC74734C9AC
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774035893; cv=none; b=Ej3te9WlY4Yu/RLdrRV3M2+uexlRuWNHTqxOUsSec+17MmO9FEXFI+HDwJkPo8V5b5IDe+obcSwe4b1XWLkUYMOVc4ZSMjeBbt2vL7NNH5sQ2qii6NLVQKI0eiueYdImmibHZmPX/8SywVh7qbpIZphVGP74/1zD5tdjDYCTy2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774035893; c=relaxed/simple;
	bh=LJyijZSRjstQHjb1shg5fyj44xKSKIssorT2is1gf90=;
	h=To:Subject:From:Message-Id:Date; b=SHX6JhnGb4Eo5+2lPcTm2J9/h6g1hVsqp2WKWn9thOZOyUgQmmvXCS3SNEjklfyNWAeMFLfHwlatGZn2VWaBqudiXzBdeWj/KheR7HpdfwXkm+F4pA52BrxU/3TAbIb2UctHMSvy5jIrLvSppW1XQhFMBAV7AnHG8keB7P2e+6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VA+iXTVf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VA+iXTVf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3442C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774035893;
	bh=LJyijZSRjstQHjb1shg5fyj44xKSKIssorT2is1gf90=;
	h=To:Subject:From:Date:From;
	b=VA+iXTVfWpAshAyC4EXOL9Ya1vJjL5Z6c54MI//2+VTub7U7wss7WjP6SXLeluVWR
	 nxgFDisL1Kix1LT4GAPLNT6+O6rO2rKTbC/nYp0XkRWOGfYxogRjHvczTVYgxLZAtJ
	 M/NilyuxjL7IxPMVING2ZphAjj8pq0TzhwMcGDYeXPaxEow9SdeGp9PDG4BplhIScx
	 vEEjJVZt8DfIEj7JIGcmh1wla45sAzH+0jquQT2XhoR0EKxzxBgjizQByht+wnZE0A
	 ZCarPOny2OsetDyVuPRf/z6GGsXyNqNzFLdcG/gelJQ9xz7zkC5tW8p4E/vK+J5erC
	 o7p5CyoObV9PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921D41099B37
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177403589357.20196.1603480535707764017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c06a6d8e71f6a8478c88e54596e1f2d37c3fbf10b04ed2e1cdca969582600a
Date: Fri, 20 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774035893
