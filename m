Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAB34B1E5E
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747605594; cv=none; b=jcPLBFkrGTIttqjsYxi9V6wsVDqAC/1L6839IdkwRM1W8bOp46vyhiLGAW6BJ69pCl6TUZ5q1xMpvnxVoK6O992GRFFqnHGPHTCkpZShVov0jSb8Tbc/5XCSDgmNdUL96mKmcNCIeuI4TmgEO5FVnw/CAWYjiuvE+m77rMp99r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747605594; c=relaxed/simple;
	bh=NK4HFU40KNI7Vl45tXiNIfZPL7MOg9QEF5l1+891QfU=;
	h=To:Subject:From:Message-Id:Date; b=FPLZUEKC9oZpfojeDcmAJPhPGDdNBfLFDPtLOeTS90yfHFtvw7fy7U2pdn/gyQKO52Nd0RFB/9KiW7tpboSxfsFBnPMvkeq1VXH9RyrEKIwIdc9gGOsUtXyhcFDAPGzhqoBTyFhobLOQ5ngPg2ZVukvOKJfQ0iM1uZv4HLUJNMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHVTTos8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHVTTos8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5809C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747605593;
	bh=NK4HFU40KNI7Vl45tXiNIfZPL7MOg9QEF5l1+891QfU=;
	h=To:Subject:From:Date:From;
	b=nHVTTos8zCfnXQcw6MJbkeIFGOrMdZLaMcVS/tW+gqkysMlGdgAnEuQs90kLhF7hn
	 BC3XM1h4q20hxbX7vhV+dA5kyDSjtIojG3yeso7jbLzPqxSbHFCH36jdt2jbEBq5j4
	 YNZwTnpsTqkUfo0nww9gHdojwsqSsSfb84p79mp3VWnqjwgq4CAJP9DJ2JvcPNWDx7
	 NoAQEu/OUZlJkf8L8lgIzW5gd7j+n2iPa1eXld5ryqxaljdQKRqbbjbIreZun+PAD0
	 NQ9MHlNIAx8A9zfCHpFxnIFl7KY/GfGGeLLmsd3dWC5MlQD9b8a8P/whiTF7duGHLw
	 NKvNeOr+vddFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DFAC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174760559357.4082.613322270032592835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 400487906df116389feb59ceba43089a28ec7190503debc43aad7d4bbf2aed99
Date: Sun, 18 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747605593
