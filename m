Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5925E2D7380
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789189834; cv=none; b=fO+BQxtF6tXU6dSpswkoCFXJMFXTr9lKYADz0j/08AZRNeV0eMf0DlbNDT3LLD4p9+UeQ+sQpotVD78YmOdPHWcdOKzO644OCdlOn53Es9F75cyeEYG3DjqF/YmbLPQp9/mKQhWxxyyYOVA5Leu7hhiLbpUroBgJMcD/syDzKPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789189834; c=relaxed/simple;
	bh=WO9ctC7fkJSgf34haPSBh14mA33q1oH96teo6c6IiWs=;
	h=To:Subject:From:Message-Id:Date; b=CLCZ/8LZi1EX9nG9hPVcxbEHZgmivuy4LCKC8NHOP2SfE4zkaEkai8MTw4CtsNpMsbjsPd6OlLbp5NVlQZvD+37kYSf51Slq2oOv2+7iLWIFPbkjmHC95TkpTMDlUOBj66WmhEm75pckav3/uDG0kdrGOSbNgeSRlUZ2J18Sv8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gus9RGrs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gus9RGrs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E15C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789189833;
	bh=WO9ctC7fkJSgf34haPSBh14mA33q1oH96teo6c6IiWs=;
	h=To:Subject:From:Date:From;
	b=gus9RGrspFRNDTNzuKdR2k41PBnBbjtMdLZtOkrgFtB8MC5iGIDcs+Hb8yvG2uIRM
	 N0i+QSsiTDeQPkHZMQmsPuG5HRwkPLdhgEzrGYXH583et5O2YrwaOmJmFTEek2V7L/
	 +Nt5sb7IkIFyS4BiDaOPf0t026bL/lfx9mkqvomYSARC9hRO6Wkd5MdaJyYvbCK7zR
	 1grfBxfYtDRj8wlt3FZqrVnI44c1eryHLxaF/IWIMFLBBYEht1TRH+jNNcfd7OKjXh
	 53Dha3e8ByLEUIP2tmoDGjMICh5j0S87wjUPK3sHfADZ5l9y6iPilPsZri4QKetehu
	 owo+HE1U0z8AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB87EC79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178918983368.23692.1182847967009843672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f18bb009bc9bcc4c97aed1e6ec9cb817dafb660c495a0b6c7d58b8a90957c20
Date: Sat, 12 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789189833
