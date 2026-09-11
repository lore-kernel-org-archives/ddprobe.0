Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6004E414435
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789116634; cv=none; b=uY7WlRjH2ipFatUR2+YFW7nmKfCq2i3eHFA2OaYcAWW1fJSw5oS0pKvw744pT3+mW9OfpeiOqefhc2CstByO6nbGr33AlzGxW+dlYYHblXElIeLxZBGRvrLUQ5gk961cwZUiddRVv2ENw8kX4LmRXtEgi6vmZ987U/XDIjQMECs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789116634; c=relaxed/simple;
	bh=5jbcWCPkZ4w6M74O9u8Nxkiw251dzkRG0IW3AsT0ovU=;
	h=To:Subject:From:Message-Id:Date; b=gcCfUPZ1rW6PP82YVwGL2eKlOn53wJ3IHA/JVIYscbe7+KUqFDMPojZUTkBNPAbta2a5DfU32BNgNwfV3onzeAt4sED/mH+mumKWxYOmPQw6ocA0JP46CSEWzIDYPB2n2LgB5KDMsIuVJ++drNrTLvdJm+PHeo1ypXnWyGTLSeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NlnAxIFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlnAxIFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C88C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789116633;
	bh=5jbcWCPkZ4w6M74O9u8Nxkiw251dzkRG0IW3AsT0ovU=;
	h=To:Subject:From:Date:From;
	b=NlnAxIFokIrcP0QuXSK/+MfcOAORCX7zNKc4zCf4ut06hHUwkI09tqBxF/t3GPENc
	 Vm29F2Tf1bHRVGDnEATefuy7opCfJ32knPWY4uv5/o+CNv2Z0KPKA4ihSpwolD8q2g
	 6XWncNMyZkoZyw5CHmOveoWZDXXhFMFwqhV4tQ6KjfBvQsToB7QWT/6HjoXFkifRm7
	 8ji45vUYgyG7amuWpO5l24F6L949iwgYIr9nq/7tQydZ+Mk62wMEVKtACbkS8eklev
	 Y0iK5/rVt8yo/djoIdTmW5rQ8kKRu6jFkuQq9cvNSPjMDMTuOw1qWQ2HsxWeClj5zn
	 6wkBclLLf4H8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13E9C88E50
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178911663369.29544.6988305361217094921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbe16b6cd27f6abb6230925a8b7ca2035293e6eeafcb37f88c051f8a0560f5bc
Date: Fri, 11 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789116633
