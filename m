Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABA76300A30
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 23:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746487794; cv=none; b=e4q9Czme57Ps/kmt1/99uNzEcCgzmFGnp7D0W2tsDGgVdScQOr3xGbd3EaO8bbrVPCC+3Ju01qoIt4X+Om99p4Jqa3BszqqSA5NySYpftrGYJztcS8GfPCz9MK5remK5gdftyq4kWwYmrQ5EF+C0s9t4bcw028mnDGarodV5LPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746487794; c=relaxed/simple;
	bh=dBGofCSflVPV+3QDZ40VyYmgjz3Mt0l/KhVy58dZuR0=;
	h=To:Subject:From:Message-Id:Date; b=g9pS0UnCxxSjorCst0O3flt5YCQdjW5/A0MePDwKxSgu+7BHiqxFJmSqDlN+pORbFXsFWWVQ2ZXKkgIVaFCKZI4+nHwdAKOLkTqLDU8Kt4nXsn1+qxSleD/stovxK9IsPfHUOnVdF38sJj89hMrRCx4FZiF1S9TZXASa+FU95NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akJZRIrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akJZRIrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1DF76C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 23:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746487794;
	bh=dBGofCSflVPV+3QDZ40VyYmgjz3Mt0l/KhVy58dZuR0=;
	h=To:Subject:From:Date:From;
	b=akJZRIrbzhJDTNJaxseh+2iydJQYQP8905+qM+96++6qDxb5lcw7cWDOKpc47FbnE
	 AkVyz579y+AkUaBmXCnmQJxRQaPyr61EOmCxk4JoD9W0ORVVNdKytIMLOpmKL7MJvm
	 L+0nn2ngc9b5DOo+6M5RTkxa8lSYmC5Q7PtqHu6B9m+CvEuvBeJEkfSSx4UzZZ4QOy
	 X6BJaTcvOJIXsrmDyIgec76V1A60RgdSg+LjQnkvCPdCvCGVrcfndBjH/45TAJcEXe
	 iyo5e2AJvign/JiHtkxpdwpyCEgF66zRdfr7Hu+7nHm7IphggbApiRLNOYY+ufzfLG
	 EHjW5PY/HIH4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8740C3ABC0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174648779381.17901.12526314538579064062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 647483bf4eb9d29b4dfbae0ad2505bf6797b54b81067c9d10d791723bbf206e9
Date: Mon, 05 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746487793
