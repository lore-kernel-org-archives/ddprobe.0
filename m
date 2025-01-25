Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3351C1E87B
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737810354; cv=none; b=p7W0uXBQ1nWXf0Po+UtSE3om4AhsXEdtBlHVxrJpmBPeP/zRCxfLrDg2tBGZp6ZH/7fqmOfMW3NB6depjE6+ekbiEaASK7BLhEqIx+yk1yL7Y+i7H2rQxBXAtJcjiuxql7fe9AdX7iJVDyZokdt/coVFWTSkga6tLPBBCgsHcZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737810354; c=relaxed/simple;
	bh=Bj/PqGcYURmjtSPGccWHLOA9CBbxjPsFyYGT7HiM0pY=;
	h=To:Subject:From:Message-Id:Date; b=qFB47ePeaISSJvZ6SaJxmJWRYfYgQTz4+ntu7e4cVsKfLUfnuymbMqEwSoArkKDpGPDlHTXEYdisJaqJfdR4MViCFKYP+/KFhOSjnm/EXOu52OkdGYmcJ2adEPy7XJn9vqu2kf3QuLSKdvRvoku/BddSxj09drcviFM4T4lk/b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjMbsCsN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjMbsCsN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F41C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737810353;
	bh=Bj/PqGcYURmjtSPGccWHLOA9CBbxjPsFyYGT7HiM0pY=;
	h=To:Subject:From:Date:From;
	b=IjMbsCsNo5XJlFHPEjaB/ZpjcQjaxQDtsnd+J2j2mqp2V7lCvffmxsDAx8rC4ZfW6
	 PLrXyMxhLfbp09gdm8/LmCaeIZ5o61JKjegpTb96ghcVvGnk71Skf6Feeg18FzzXld
	 wJDxMCL1F2FwHlZPoBs7kDagjpAw5/8aQ5DBp0OYIi6dv043Ieh2YT/P9OsIjFXz5f
	 qNAhcRBpn6fhJFms7s3+LsC2RIolY9Se13dAygQMSbVXXaBCxRQ3PmzEnTSa9Q6gkk
	 020pmOqcZglk5Wimzy0xYpqeC1z7vjvYvAPE5pItCM0z1fQ86n64/RaEONZUwi7KVn
	 ewm+CPb8tQu6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B1FC0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173781035358.14650.12046161748284891235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd852c10bf680f3fecc0907de7e31f53cf20750a7a059b434837a4005d9d5c5b
Date: Sat, 25 Jan 2025 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737810353
