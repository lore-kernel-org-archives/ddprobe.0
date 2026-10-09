Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F4F34DCE3
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791534634; cv=none; b=IIlc+aDOk3f0VRwEzmiJR1i0s1WI5hX0sz5VNl/MmpaV8gtuIDXuGLUAcwQiOsBG9cMQrAyzSDTzKe9B0lOamiEF6lnaE+s8GxtBIMtJpRJ5ncIwfR1/bQXOuoaSmSmef/kSiVA2guRfXtSVxZTgkp5XN0ZJwmbLcvCMVB3kWtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791534634; c=relaxed/simple;
	bh=PgW5PuBqRN8BOemiggT3CkYN/2P4lNGeyE79ClUK/cI=;
	h=To:Subject:From:Message-Id:Date; b=WkJJNmli0urAENCKd+yFro4peYZgGSY8DuZeJhnBouNxKZbDfFOEhZN+lCBoF/+h5ZDFlV4xCeutvbHLfue2co6oW3Ra4JDY+WLAVlhGgmuEIPK/ZfB/lkE+H/rn1+GGhfHJvzsvZtl9enScJ11y7YLOHSCpBjI1oQiFkRFbV/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcQcAsDc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcQcAsDc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDAEC2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791534633;
	bh=PgW5PuBqRN8BOemiggT3CkYN/2P4lNGeyE79ClUK/cI=;
	h=To:Subject:From:Date:From;
	b=YcQcAsDcgb6RFIK40nY9IlTcbCbTYGnHcKTqwhM/6YPbFBFjP/3Qs2e7UnCWJ0/35
	 KQKa1GKi73JRzhFu0cXlaQtb0HQvt4GIO0q2RegktYk87ECnTvpNcwHiQGqgXmOkw/
	 sQfAdP7RdcOjKBFf/kJLWRM4SS/1L8tKKpytnT0/L6JLSDydh77ZrrZAZflcQEWfN5
	 XbSPEsFLfPEq544taTZYqV9Xvvt2hzpWwrBZzvQzMN68xb/YbVgktexbVWhpVu4X8X
	 lI4RITVWPoOhPxanTz+JQJSVH+zyrgzirKgGsteknu1wGr6imlcfgz6rNJM1GDAo67
	 1a8f9LDWzn+Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB364CA6012
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179153463369.10029.9250017922359873294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a055c83cff068dc094468ec3520b9a093a4c0a3fdb1db804b1aead27d56ddff9
Date: Fri, 09 Oct 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791534633
