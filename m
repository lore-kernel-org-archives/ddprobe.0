Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282451E834B
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761871194; cv=none; b=cattj4G7BNEruxOnKbWNqHLpxJsbynthFSdU378cf/2fD1M9N/h5Im1x7vYhUWovmmieBd2rsDvr1BMz7L+LJ8a0BX+0WcHVEi6+KQ7AEV7JNKIQtxbfd9JfHblyyPVspwsDvfgPTMJA8Gff+DzzhCUTcnyNc4OyomeZxJiabKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761871194; c=relaxed/simple;
	bh=2aeG5RzKf4rMwoGnF/euFOwAr9oJH9zk913tFxc07+Y=;
	h=To:Subject:From:Message-Id:Date; b=kUmXv7fVjlyNHMgy3Ks0dVQsa9leZZVQMDBUAD767JbUN2LBNMil4Avv7usor1geflAiOSO4ncheui7q8GktpTZmQv/dNCVRxu+JT724gtkt8EEq6bdBq1cVefKY3Obv53pYpu9/RkOJ1i8KvfbwQ91dyJgFXIyKP3oehDSsuIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Phq8azCF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Phq8azCF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDA5C4CEFD
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761871193;
	bh=2aeG5RzKf4rMwoGnF/euFOwAr9oJH9zk913tFxc07+Y=;
	h=To:Subject:From:Date:From;
	b=Phq8azCFiyvXqVmDqY455szhwFUFsvUcbtcr+6P6yzxkUSsbk6/YsLXQ+S5iK0Jpa
	 +4HbnOCqvaLW93bCtreo2JnACPruSlselVp+aG8DlUpz+jz/x/ll8ajFIoMHGpVK8F
	 3Rv6ZaryjY5lB3Tu0U+Kh6abMqcNwp9Jfi1+jDYPvw5TJsI1J6hg/g/75hLBhcycfk
	 shuhDPh9EDHWsSjW38X5F/dB5HzfACwr7qkB2Ag6tVmk4J94E8QgrnvKgrdomtnF7E
	 oI6D14hpVI0O2Q/nM9nGZ0kL/z+g/mHmPqBxYzQpHEKgh6dRbXbiT+KaLlaE5DleSE
	 XiPyPLirHYNHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BC4CCF9E3
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176187119358.8242.17416100602431048263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00b11b52667b525d7b515158c8fc199b7ccbb09b9e5e67a972f01c6815569ec1
Date: Fri, 31 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761871193
