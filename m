Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49966126F0A
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767435234; cv=none; b=kx+ZkqeSkplUs4g5TXf1Ew+wBCg+I4gwBfv/2Hdy/rlG6t+qgXcOMa+z6hDJF+YWgn0TJWF2J+Pymyf7QyPKQqTHbYDPipRMwtnBaVhs1YRk+L3+jXIOotDN7nYk+4683Y9BhafVuHG0RnNde8vDzJMGSqy/E59UJOEcavFQTfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767435234; c=relaxed/simple;
	bh=XgaIxcnpYu+5npcuvSjHqTSX/LkdGQH2NYTGHEzBAdE=;
	h=To:Subject:From:Message-Id:Date; b=NCxSjGr+JK1X+ms8eIncWeUNV6t5yI4PAEqk6lQQ1pYUbrTBdIWXZr4pyUbVKIHX0IQOTCU3zuotZJesQAPgegN59OeUnyxCVHo58tLMnYsOPdUzvbjfnJfIR6Q61CDlN+dx7z8/grwsr0KnFe6M/yEEVcF+cW8W9cpNhn23TAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbaRWRwt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbaRWRwt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A00C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767435233;
	bh=XgaIxcnpYu+5npcuvSjHqTSX/LkdGQH2NYTGHEzBAdE=;
	h=To:Subject:From:Date:From;
	b=LbaRWRwt8VMzQtpARcaLC/+DIS+5zm5PESpuU+ulqvJUEKA2MCDSeK0244bkfh1Ah
	 1DVH1Hpj0cOsdgIaJSeeXmy5gFCIXmXCpgoXEvWiCWJw/5fi0nyxXLi4WW8IjaJ0qJ
	 K8999kg9i2jNJNDLTfNDBp4snHh8X1dZvQZ+e57VgTzm+jm46+VTxKqfqfyQHmXfiy
	 l/kzmzPg8KJVU4MyTuD8E97Lbl/eB4bCs3MBDpz6zy+YmpMfWrQgUNc2YF7KHE5cu9
	 kiXXrP+h7G3qWUwmfrPN0I7TdpN2Giq9kz5VjQ1pzkDgVhFWlMKQt0LOVl9TPpmVgl
	 +AcW2XYPcTVmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916AEFC617D
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176743523357.9232.17630108544505066768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c04cd7eaba27dfbe83c3e91dcef41c85d1a189b7b6fe30e5568ee477e26735b
Date: Sat, 03 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767435233
