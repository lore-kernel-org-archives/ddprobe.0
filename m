Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC481714B7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746031194; cv=none; b=NGHfbsseyy1W8YYPgdGvk40Tzlshy0izVZPxwoEaBdESHIYVvBoUbmL+ttvA3GB2/3YAXEo/DG5gRtUdRGDHcJi/N4A6fhAuJlGrgHwNts9/EOY8IF9TWvQW9zQOFla66NKm3971UYXLji+yMNYfLyF41kkx4ODnFblIEYB/Rug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746031194; c=relaxed/simple;
	bh=IcMi01Zwh7zNvKbTNYAYOzfKnfUPllUBcJhnnjkeX1k=;
	h=To:Subject:From:Message-Id:Date; b=pvixsCV85XbF14TEceLsB+r3VOGxAA79qHywXnz3pYlGS8EN7qOzS6eBAHJWBiaAYvKDt3TPaK8WmQcJEW0wHHa/g6gDU0zs0mFe4pLrSNv/uxqL9uyMznoRPo6NbXjdNMaB8PfLJA3cDnTPP/C9XoCHNfnv26xCq/PJkGY6SSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HH+Xybve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HH+Xybve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1223C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746031193;
	bh=IcMi01Zwh7zNvKbTNYAYOzfKnfUPllUBcJhnnjkeX1k=;
	h=To:Subject:From:Date:From;
	b=HH+XybveQCVTfPzpHUVovmCaT+FJCXnMSJ7bexneTe51XD1bFXaC/HAiV8H+dLo12
	 X4bICx9l7lfzcLfOrhQmUq5B+r5XPk+PkI8vSTRN3wrE8qnAxE/vlh4jXnpJHxOnWw
	 kTR7tHfKCE6kX6ZBgwE4+R9K1IeCONB4j7vmcq1VmROKCwTOJz4L94AljgKda0nJn5
	 yKDTpCp4+n45MCF8mQdfJXuQg0PQi1UaucmaG9WUqy7wnVpjA/b6nPvNKEZAq6HKKh
	 XNRNuHJ8abuX4Gz+ylBzrzL6IdvIR3eVM56HDrVsSfyDp/2HmXujPFDb0yjSRR9Ub8
	 1HG7mZ+fAdIfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E3EC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174603119357.16340.2829269342491048787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad30788f7df4c9bf9f3c5987af6aaea6a73619d21f90e6915ce57fd6f314c28f
Date: Wed, 30 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746031193
