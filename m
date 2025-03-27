Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533CA2116FD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743074995; cv=none; b=TcL2WJ+4ZW4DvcQEW9gWktrcRoh//uQNLAOTU/u7vsll9tlNh1xVSMkr+4+8Atfi2H4TfryDrn7CqOJ2S6e/Hisj7/okNglbV+ZAx/VWPJRN4rholIXBDSf+CmEFY2am5efzn0kWjaAadzJ8f2Kl1KNSMkwD36fogGn3iKySN90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743074995; c=relaxed/simple;
	bh=jG2kDP9JUc6cLNOZz6yFWh4HfhJ7paez1Wy0AztttVI=;
	h=To:Subject:From:Message-Id:Date; b=HWRPyk23W8G5D/e/aY85Ey3oSO90kYJvdAVsCa0gdhDFHQHbIECz0eKuaCkmOSLf0kuHvTJ2umk7IvUUauMPxfWvA0QkwVcp8o6beDv3HDWXqLEBFoBHtYBA3FwXq3hZ0wIfKtw0emvV/8s40SeOeNXxdjVSIKEGImUJ0TAANY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QPkeRIi8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QPkeRIi8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB088C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743074993;
	bh=jG2kDP9JUc6cLNOZz6yFWh4HfhJ7paez1Wy0AztttVI=;
	h=To:Subject:From:Date:From;
	b=QPkeRIi8XsueJwg2Ct5tLD7gdDrKL8h2uFWynBaVuqnjnlrtNZ9LMwnDLbhsdK269
	 xwZFL/aNXUNt/STX1VfJsZ1wpoDeW8RD80UZxXDXVJ3baNF8h8rVPc7X7dv5mZkboI
	 zirbkIrGpsy6LOY/kfI6aG388b1WKQzrOpil+TIThbDd26rPae6M6RjLzfkNMw7OXr
	 9CpzHkB4Tq4Gsjc/MzuBfpMR37bCzKlbHS9lxQqsGyUBHW56R01YHq6ZcyEDyUK+DK
	 rv2+tmAtJd+Yf16zXOXjC7pABQfFfUXHjfEImCiHDdPDN0XxRW8MfnSGwUzqDZmrZl
	 k3mp2VTNlW+Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2000C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174307499371.8428.3917411023743661579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdb95c5fe3dbb86e8e40469b2b4c25b429c39bd1bfd122785e93cd09a284d793
Date: Thu, 27 Mar 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743074993
