Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28083481DD
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766204634; cv=none; b=c/dXGSZ31tKKqqbh9q6z+RlTI7QhUHeGt9zZ6xi+0YkdOwF+oPwp1esRmT4ZYWCnNLuynj+CAneRPzlBPyJ8TaquRoHdqqJXLsmeIZg9dQuQjwVxMIbLOiWkb8H6PCIKtrTK6U0+ehdz4ub64rI/wi2mPX36/uD7Ll50bMJnmB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766204634; c=relaxed/simple;
	bh=Xf4/A9IDeGZ4lwKXbMWU9lfu53V1jt8zSC+EQTpEMxU=;
	h=To:Subject:From:Message-Id:Date; b=jL78Eh4+99czlhrB0D0wZc/OxqIv5Nlt72Ezn7w+SdevP38Kfvh4D2FCMOGUZg0YiFEo2G9AfYZTHwxL/Ps39equzEFXv9KsMCsbaSilrOtE3Ezb8Cbzl8VQzL7t3l0XS10X+dAAA13INoRFvqo4Q+ROzhCDyqj2E41gG7bcjJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7YaWyAk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7YaWyAk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7184C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766204633;
	bh=Xf4/A9IDeGZ4lwKXbMWU9lfu53V1jt8zSC+EQTpEMxU=;
	h=To:Subject:From:Date:From;
	b=J7YaWyAkK252DxTfYmBDlSowhz3djlvF3quZuyT0tRDUgoADz/VpZ9aJSXePT1MJC
	 0j7NJXqBrAbxoM2WuXzc1dyse/b1/7uzoAZq6t5TN0vyAXsC6nrh65t3+U+NLuPV7J
	 nV6FrSWH6UnG9jNiw6xLi7tPieqt3Av47jt2mn9KzHq32UTANYsvg1d4bWSZSAfpke
	 AMmbeFGWnA+c5GTLEwkNoGA7wAqrnTl3ei9G481Z+lH7Wfao7kJZBsFKMVz1IW/Pk5
	 2m2paCjNMd/2pslO5eRPcrFAJb+0MGffGNoC6gnK6Auu0FoGtrU3qwzoRrs0lkaaQh
	 k/odUIrsW45eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962EAE668AF
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176620463357.18780.4551366772684371408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a9b3b29b3f2666743d980279cc650deb92ea5b16b48c6b99a73d15cc1981ee
Date: Sat, 20 Dec 2025 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766204633
