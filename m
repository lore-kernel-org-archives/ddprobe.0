Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529AB30569B
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 11:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779708754; cv=none; b=QnHUzAU7T0V0wtHX3FcLI+wzj7wQFaLsS/NQT3ln/9pbePQObTNMqt9XvLnrxOl4koZBtjEJcPmQT3Myvm+9vsyNQ1zqpr5Kn9vh/Gr9GpwKYP6Su5OeD8GwBwxpRY28N7av8U5JCuTDAqQ6zDwX/V31RKxEpMdz01NAVAh/wcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779708754; c=relaxed/simple;
	bh=EbRGdKOhEs1LCxzqD9vbEHMxg6jqQDW+xVuZXQG9V6E=;
	h=To:Subject:From:Message-Id:Date; b=M18A8xH+GdivyFK3EbLgsrdFhjaiR9mmECySz/4D5avn1uCgGth0BmpgAPaG4r5Sj1w1hKMbG5Jc80sbutxgrAbFND2goc2BoghaJdaV4SCMJNXK8xqAXxZktsRokRzkvHd4jFPhKHl7CmbJ2CXEcfpVs1qcNYWvautQTSG0K0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P30ds/7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P30ds/7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF1FC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 11:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779708753;
	bh=EbRGdKOhEs1LCxzqD9vbEHMxg6jqQDW+xVuZXQG9V6E=;
	h=To:Subject:From:Date:From;
	b=P30ds/7yqKq4gCofbQxzF+A028I8dYnQtcDoCRHem6JE6hSc6z39BWytkPCReOhEg
	 zmPcq7oQ3zcpoUC5Fx5MCFgNgaXewOvatXZsx/PxqmVe4qm2ywfZeS9mowL9D+YT7R
	 Xr5UVv+NpV8ibj7FJCxsJ4NLFuEhWDQ+TrWrb4CKVnJc/1Nxxn3Q0cOr0q1pKP7g3G
	 LHQXx3jcDUndPUN+yWqRrBjgYTByxKJpg3MwzCX+TWw1r7CJTuxyaI5AvrfEJ/sECc
	 Ba2MP8du+QTLuY+gBMWewQSHxcQg+RruDDHEuUXL+b8XSLZXb3ZV9HiqIVpaZjR9GJ
	 pgwM6VxuhGtzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC054CD5BD0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 11:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177970875368.5156.4621718203211273101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 650541a6f48a94699bfca1fd007a6ec294a895cd973387e88be6b2f1b1399fe8
Date: Mon, 25 May 2026 11:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779708753
