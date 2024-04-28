Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6872A6E610
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 15:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714318943; cv=none; b=q7Ig/+GtQ0HAl2TzoOLe47eI5OC8+cJz5KVXNqCovEwjpZljUv7X8ohH03JYB0j8iOHYuFp+ieq6aBkiRZO7+ISv5s3aDIxf0SoItgmonOKVdiDetzx7Zpb/bvGOnZxihpAWylPqqCOeNBtPThYM4Muda8+gXipnFlEu/iFh6Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714318943; c=relaxed/simple;
	bh=mJqP18iQ89xd65lOEr/DHdAdEbjl3aRrYmkRyofkDRo=;
	h=To:Subject:From:Message-Id:Date; b=RXqLnmlF91tYYVMrxXT+lno7FwzjMgy5BF1hOhurpNKyWCnVsgEGGrmp5kAfsNVFEyBQ5vXq4129teLlo+N4Xe3f4Gh4Qh9OMJSOqsl8YUSaWlBNaiXF1+D1bwuuu3gUAnu/tph9CF5CvV7Dlbw6DSKTqlimFLkuWNDZiDjOmUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jk+KB/r6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jk+KB/r6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1968C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 15:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714318942;
	bh=mJqP18iQ89xd65lOEr/DHdAdEbjl3aRrYmkRyofkDRo=;
	h=To:Subject:From:Date:From;
	b=Jk+KB/r6rTrz9JlR1nqegsMOHzPBQU28WumMq9B8F9okyHUyocAottCtkPxO8QsGL
	 ABslzR7FrSZmi4yjxw4HsssaZP5HT4F9/tlh+xgGUxIAzRJuMcFIWKXxKBp73DLgfR
	 zMxwkRvhX2VPdn0hGVohnbf8ZXCLv/h1ZpUVGBc1c5kg+d0VVDTT13zvsoLy5LgcI6
	 2HyCYqnmXrw65YoRLZvXT3nly225cRQ6l4EOvI0TepF3gafEeHepGtLOEfk37fAbc/
	 yPY95tb54gbeFOCrVGGcMKw1DbvHJl7C5drAJ0tRGV1VSvvS1UgEaG2o0NVasK+25/
	 p1AXjoN25vFiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0904C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 15:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171431894276.20469.6215306392809277412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9adbe4b36df20e7b3bee18c07ae59266c877cd64039b6ef01543890c3076bc1
Date: Sun, 28 Apr 2024 15:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714318942
