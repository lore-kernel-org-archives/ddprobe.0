Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4066C7405A
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746836995; cv=none; b=kGsc5rEYOKvjuSsltGB1ZrBace3/ijYsIJA/whE/xByOLg7qecjkDYfo5Mr5ou2saVhyVcRhpDiDa2b9m5kfH438fcJXZef24wasyr4Cwu4OgHk+/82aMTwVGPMEkqCJVr6+u7lvBDSvQZwrFd+2oKg+Z/USXKZ8jkGZf58WUcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746836995; c=relaxed/simple;
	bh=05EsbI53TWacPQy8J7WoxF066VOEMNtydwG1pRBIhu0=;
	h=To:Subject:From:Message-Id:Date; b=bm8406vuBzGGqK33qMeT+8LtRI/7dvgZNAiYM4edwxSnX/jq2SPCmvTZhdf22ASPL/7QDPI42861iGbPQjNB7VBnxd94wD7CAKPWHXlLlhnsiFgOJ0J8a/0mwK5IsB3FwlAzRorUvDPb/80H2c3DyIW0SbGGh00SU4hpVhlv78o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZXfyqtn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZXfyqtn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A343DC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746836993;
	bh=05EsbI53TWacPQy8J7WoxF066VOEMNtydwG1pRBIhu0=;
	h=To:Subject:From:Date:From;
	b=hZXfyqtnnXDJ6X1sIhFH65U84Ui54h1dFL7+o+F8O+T1r3PKC3ZvnD97tiMbrHCLa
	 eHnQVgU8tpL5p+xXG5fvVJYVcAig7zmMZaNCJT91s/uGkH6FCSLWuOzKABL4WvtDNi
	 kdydhc92H1XQscu20hd1ndvYoJGxfbCMPPpdojOJjXobYCvmDfYIpapJqrsPZqXbGQ
	 ecQY3bFpqoLDWwGHDoSUHx8g40+6Ar7Ew4MPppEl3fBCpu7xpxJRjkUYyvvLXKFk8e
	 T+xBwfiyvzQQOY5Mdl2OxitGiqgGPoINhA9AWcMOsR1CTPszvyRx1r7WEv0fy1f/Za
	 8M03Kwf2BzpBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92566C3ABBC
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174683699358.26227.8133610658953882012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1425dfd7a7729008b3c4aea9a9daabaf35c7d4f43a4b5a68d20f142e2b3c3701
Date: Sat, 10 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746836993
