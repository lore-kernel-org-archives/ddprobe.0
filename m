Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F90C16F0FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744574394; cv=none; b=m58cKXBF7HUZIBZn2oqs2+he6e/xdguqqYLC91I/+fNsceUBCiJEWu8K0qCn8l5o7sgcaf1DL3Xv9WL1X7NfmykDrXgzEv1oMAMZ5yw5N8f+aa9i4lYXBrlczYn+4et2TqahCjuu24ivjfnYWy8uK2cIzXDFzmE+lnN9E3n6T8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744574394; c=relaxed/simple;
	bh=WrK23BnWxVFI8vV/PNyAlY1UsQiCbYEgyDRbYPoTgQ4=;
	h=To:Subject:From:Message-Id:Date; b=RtlTbI37+kdxFWuPIKMDBPfI3wvFP9EwQklNjXFcMrvy2THWoTb83rZLbo45i9MQHSQ1YwbCmMis/u28nsE7n29UA2KpNpzJks0+zMhsXb1AYr+a3M7w66HwhQmQfSH8LLdjshK3wDtPGopKzcr4K7N5liFZisng1ETto7/mwWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKM5/VUA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKM5/VUA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E20C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744574393;
	bh=WrK23BnWxVFI8vV/PNyAlY1UsQiCbYEgyDRbYPoTgQ4=;
	h=To:Subject:From:Date:From;
	b=bKM5/VUAGo+Qeo9VGJeLxUZnln9L44OA2UPuTqR0LbZLB6kIb2JIEIuJRjOiDmK2g
	 JTmjVuBxqPxNdnjnxuPrHlN8SQBYuRVBO0K12VE5eHvTVRrfzjNqxRSyL1s+92zuV7
	 mkcc9U3XrhJUA7KWd4KJzkqtz6viyubhew9iOoxrTeoLo+SFfolHNkfV0GX81D4iJw
	 uN3dVrrsBfdGGb9aHKdvJlUcTHNb+1A23z1Tb6RAMrjAssFZnzdqD+ASOgz+ZZ1qjx
	 0evSdwVa0diz6e2PhZseRsTIczIHkCN+PTiQoV//aB8JqJQQ5ia8lHGuQyqTgBDAnW
	 qsKaA7hveAkPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0CEDC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174457439362.3460.5411073303689421801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d36b92f63892c5a477f76ee49b89c2d04366b953aa673cfa90909a9a7db907
Date: Sun, 13 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744574393
