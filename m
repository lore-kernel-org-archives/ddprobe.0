Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1291D5AC6
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749178194; cv=none; b=BIne0Xw4lxWlSlMbEkt0rJNrZXypj5W8aMX4pl2ixlzTYntxxsl0SWkaxyVSjKHPVIc1wIjqYJ2vP+BkqJ/+di78QcGcslpqI78l9nBoOKXZB70XmFV4ow7B9Gy4DXfd2YhGTEn4PY4vSKx1A9gJ5ctzIZyWyBPjcG0fVmWfy2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749178194; c=relaxed/simple;
	bh=PkKG6pLa289ITCG0IjGrbpBEtogeeppI8hKgdOmLzNI=;
	h=To:Subject:From:Message-Id:Date; b=iY92I2WRwfUWNM0KxvUEhagRAaauLhX4La7c/q0W2ANPJhAFnpS0wrQlm6ceSE4dnfFeLxNugIAE7GqgNN6v4uBlAk6HfW/NUOHtadJeXxIm34lhEPVE6ycIpAzlBJwOVm6ojYfaED3iu4d2BYMLF07mdc6j0yVvnKkv8dE0/oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iDkRzoBE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iDkRzoBE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5705C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749178193;
	bh=PkKG6pLa289ITCG0IjGrbpBEtogeeppI8hKgdOmLzNI=;
	h=To:Subject:From:Date:From;
	b=iDkRzoBE4ZtBDpHPs+RkxNol5tH+vhw0acPbNRUa0hn7WEaJ4vHqcvONb7tAgc3a+
	 zc2I9afjUIgOJZejxWjENqmk1KKmwU2Igzlprmre7cfGQj7t5euajjPRGWXF/0pO6N
	 bZNM/k+OOf3zxdZQD/LkBWQ8iqVpmkyMx0khhmH9tmoXCYdcq7+2hzDQPbbeItpr2w
	 /EhQrVcphaGzeZt+ql/zlggWoEh4XscMJqmXt93IBQUavOa//lHPL3nnQPZ4TPf54d
	 nkKd9e7K/BYGOSoV0XgnFas1l4DqUGqmd2uZAw2ygPasiam3kOLDxwPKbFbK/T9v4p
	 Qzm/gqal+QPPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D21C5B552
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174917819358.19520.16019491982744864764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63959bf2616d4d508710299c611c0dfb64f5fb815d341dbea1bcf79efd35bfa1
Date: Fri, 06 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749178193
