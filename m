Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6495744E656
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791205834; cv=none; b=K9OpKnEaU27guEUGvk5g++40sJPh0mVn/yF7y75vzCiyvG66hJUsCNWD+6NCS/6Vu4ws7hIztvgt+R/h2tnrv58I51caftAk1HT8LeSjJAfbITxidDyAmY1ePCf3XzBfyWkRxV0+qSQDQ05kL2lMaDiU/cdKv1cbhFxi5x189L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791205834; c=relaxed/simple;
	bh=qJ3YmFFSjmffgUvWOHUUPOhWpzYyVGzlqyYsED1PVUQ=;
	h=To:Subject:From:Message-Id:Date; b=Ny8XItPO5y5Ut+9cGY2mdpt+tYwsMj7dyTnpLoaY8haA6e+WVfpJpS+MOWwSYVgPlaon5VQsRbfK6W0AR7a4+kYjhhnXslMAOLUABO05xiyQ9NuCbk5GBOTi+55Q2ZyQrMZtCpaqp+1PUq8VDjM8uTwulHPuQDruvFkaMS5TeUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCC3d7HF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCC3d7HF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF14BC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791205833;
	bh=qJ3YmFFSjmffgUvWOHUUPOhWpzYyVGzlqyYsED1PVUQ=;
	h=To:Subject:From:Date:From;
	b=DCC3d7HF1uJJJf87cIMD26pJK0Vfcx9KkJ02ZbOJGyprO316QlftJukkGXB0y5J/F
	 un7KBSkRUQtzLn7pVQ1ChDxiI/GsO7D1EsIVwRkAuHuH3MbmDUsM3ino+85cvRmHVs
	 rpYP5VfO7o71WyaEaY9LJ0hOr9QTiLgLMvOVpNpjAVle67OOffwe+PGZHGX5PbyStD
	 aH3kmlZXWPYjs2jshcPMjegxNzzIoI0EhD6fHSugG4boypwhWaqoa4MvR259yvkzm/
	 +JMaRkutJtOGNrKlBOlgi5J5b/0eTkQwqcrXHM3EvaEgT8Z/NtZyFs3xhgdNmiZT+b
	 JUOfqQ6P45fmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA16FCA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179120583368.9371.8588733440543486074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c28909798e59589a2246c9caa102ade1ca7aacf4c5f970bac1f81ba93a229824
Date: Mon, 05 Oct 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791205833
