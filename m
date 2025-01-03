Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6811C07D5
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 20:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735937155; cv=none; b=M/PN9nCLtf/jJF4Jndkytk8r2dd4CfiN31xduuNajiQBB+yYq4hWykBa0vCP12SEQJh742qCVwQ6VhG2gQE52rjG2kVx4XUYPS4S45LAUtlQIpToa2zI7Y8LFZJ7l1jPkz9EaIAxoAx/LOuKjV9ym2Kaz1AWuvXXIfHCkwJNSL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735937155; c=relaxed/simple;
	bh=6M11IidVBK1b0lr5skZqMBq4yvHdJ2/9o9qxIfD+UY4=;
	h=To:Subject:From:Message-Id:Date; b=QVWEqGp/RPmtFqPXSPqWCGSJLE8y5vkwWhQCWfzEqWkAfpN8ziuWfQqqCXHYp0wuZJnZ0MuLeVtF5W11dBdsgzYc376Jg415yg/6ugGwI4+MH6y6smjMVYYPkQTBEy+cFLd94NnkisgyMA/IvyHfFaNZFmXJlgnuZ1dwUUFiPl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sV/VIVAH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sV/VIVAH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9D8C4CED7
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735937153;
	bh=6M11IidVBK1b0lr5skZqMBq4yvHdJ2/9o9qxIfD+UY4=;
	h=To:Subject:From:Date:From;
	b=sV/VIVAHQtMZuMSM1l+oSrwEr56gf3G3h83acdgOOojd1jlD/j5QP0ucIoFMRhwr6
	 zabjmESKQJ5+NNpJJeh0EgjqHzB6V4xa1PzzViGyqfXFptfS5SekB07fKJU6OWcZER
	 3rC0mq8w2WKbMKqldg1ajeWuQTREA7iZVe01etvsWmr0+PcHnjesbJ0XxVeUk6tQeM
	 xtFVZ93hcQiMXt05TBzQ/O1SZTBZzH+slsRR3yZ47NFre3SYyh6blX9rEbcl2FaCzh
	 X0Ecxk4Kl3c+0YxUAWt1NfmLaVOyQTndp1s5IGMRrNXIsVA10UP3frZ3Fr8KRakSte
	 /+phR8JuHqWXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EE0E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173593715358.26746.16887305249512924896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 234cfa15e0251660cf288617d4ea09e7b54ec866b6a07dc7a9d528a3679caf4f
Date: Fri, 03 Jan 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735937153
