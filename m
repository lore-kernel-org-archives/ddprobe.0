Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65FD6BA34
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787367634; cv=none; b=rbHqGDvNg8CKFfoRUzfZD25B0+zxjqoONhP2ei+TBH8E8Co12EDidvSSr8scY8/TlGkEXsHzo9R/8Hv2Khx3iWOcG/9tAWcPTsbJ5kExTJlt4+QcbZQQLwiTdn241QmoWNhhykuV96OTnINSMvPkMZDoSmFbzwJ7rhvVdDgMRN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787367634; c=relaxed/simple;
	bh=U4cntaIMDi9zdhrpee5nONM15AZ5vYLNar6x+aAAqLc=;
	h=To:Subject:From:Message-Id:Date; b=IcCCD0FYRkTMQDn/cuFVgyIRHVc34QDdaU38umVwEEJc3T4gvd5olJi181i1xb5MdTzEqjlEL3HPxOX7cnT5775+L853MccWHuMRMW1CdG0MQ+/CR9TrpoPnrGuqi8hvl9ryz2UZuGnqdp/+FhsJGZ0WCSjkaOtTa6piOtj3W/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPxKVN4T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPxKVN4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA4F1C19425
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787367633;
	bh=U4cntaIMDi9zdhrpee5nONM15AZ5vYLNar6x+aAAqLc=;
	h=To:Subject:From:Date:From;
	b=sPxKVN4TAh559cEO4dZ2anvGF711vxGqA3k0k7Vbu9m0fWbS/W54g6jVy1EFNHyVi
	 iwvKGb/93yHEkurJu8/Rh499Y4pPm3xqP7xG3NtksAGUiNDHOUaeb5lj5mwln2gkat
	 UbHiXt1udOWy8eSWy5qxiaUIMBggrpm9+IyCvl7isB47QrXcboogE8G9j3zbGSvaIP
	 mDycnqFnfapu0IfKpIbG9LE/Dw/l+XhWI0PI8RdsE5MPEVbmqGyT/BPmn2pha26jny
	 SLLD7MB/pfgsVXsNhxRj9SMwudl/cxXo/ia8FKGWE1l3Y5qmZrCaK+80eF7JWqxG6W
	 2t3cZz2/0Gq/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B23C5DF94
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178736763370.19259.15227282413712134840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c29e215cba3f8ca24473f7d7577fbf429f7c885c9173040fe175e43587e55a45
Date: Sat, 22 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787367633
