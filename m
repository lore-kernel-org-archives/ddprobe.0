Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160E3495FD
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712211497; cv=none; b=h2TfLunl0o7Nn5rc3tudv0RRsT6I5TBpl4q/50LVmnTRRjY73IAs5gzkxcMVvAkF1G9+2Bpj8+pJ2ESVxBb+g2f9V0MiN0tmFKtHOAzpKjVw0vyeUscQwwuXuN2xcXq2PBZoIvVxPr7XGgFRRq+s68JaJF2Jyj7T2oDy8se3Sl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712211497; c=relaxed/simple;
	bh=Xa5IuMiEY0jduhLZTKb+hnzoAYm8qFyjbSku0YpJ4mc=;
	h=To:Subject:From:Message-Id:Date; b=trtIf9245Nybvs9qFuHHdsqMUvLBxvN0Cp6AqVdBE9zvYc0DOMy8aqJNNi4cyMTHuzDyRqZmtXSal56pvB6brs6CUasUorDJku6BQaKM/cyFLMekMQoT8oT2LZZ9YSeGezY31b7JaqCbW9s3dmxSmr4MUExRczUkSE9F/6S+jUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfN+TJSp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfN+TJSp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DE57C433F1
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712211496;
	bh=Xa5IuMiEY0jduhLZTKb+hnzoAYm8qFyjbSku0YpJ4mc=;
	h=To:Subject:From:Date:From;
	b=kfN+TJSpEOGjJEZWgOB/kQ8ASakc6Tms6FatSAZoPvCaq5W997kpArBftR0kZefRJ
	 L1U9IN0Fg4MVoTPkDKFi4PmyJ6FhoxN+clY37R+05WBIuzniXgz7GzIgLacSScvv5k
	 m4g+BwUNy3A23d0KG3aqne1HISD0KvKxCRouflLzANpQGa3nvDQpbxNc1Vnef2djot
	 9VKFhf9P5s1YMogOeN0jXYaS3F8n5msTQJUxdb7nNrB8z5EUHEeB1CYLIIZtyom0lk
	 3AS7J00V0mVAafDkQjHDxcR0wKrsoW9vM6zmzYAI3uFEZvGLLMe3GrHz9r3QSZK9xJ
	 fm4cflZq8ct0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7152CCD1297
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171221149645.19274.12002411270129364586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec58e80229258d2eba0a1d64070e91b08dd80d567e74fdcfce268c9489ab69ad
Date: Thu, 04 Apr 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712211496
