Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2225F8BFC
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 04:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707799698; cv=none; b=WYsRdhOkNqnnV5iukiWWEr4KSn/8xgIcjeeo+TsV74HfDmRBTp0SnE/HohvX0JJ6k5Qb8MrA7fxtr3Mbnmg7eEKwHAmsxTZP0YpELk7gItZWE1yi0vCYq/ZL85tU6feKY5XcFrXZctOP79A4q01ZoK8RmpgkvPV++km7sMAJScI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707799698; c=relaxed/simple;
	bh=n2j07S/pA1YVi2o1jzUnpPgeeFjuWZbEnuXmqXHgAgY=;
	h=To:Subject:From:Message-Id:Date; b=DYVqGlIZHScFxdAngxulJ9gpMSGpTrhrqLY3r/rZdkcH2zynvkta5pv3j8ZwR/HDMpjcAv6vD1/F+bv0LxbcXPT0UWdcL1PQW6pf/NLxDYjpNf1fwB9w+xL6nz5XvX+G7DimP6E23o1aLcB0fosVcO88/ycqK4W0fEi5DqKI4Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTptq4fi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTptq4fi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F21FC433F1
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707799697;
	bh=n2j07S/pA1YVi2o1jzUnpPgeeFjuWZbEnuXmqXHgAgY=;
	h=To:Subject:From:Date:From;
	b=GTptq4fiLEuC3SBB5ttQVNFDkYlkCcR8lUrur8/iwmJH+vmu7tNuckRDU0fWhOwow
	 3G9tR6oXmGUbtFcN2dQpj+lGBdg7PbZCj+h7XbulGteww4qs7tFjqaCSMvFPazMR59
	 tA9PIcw1z51ReFYb6uyD3TRS9WPwhnTj1IorYl8mF3BNb7sUH/mtIl7e7zdYnxZ6Jq
	 5n9wOApdlZY+A17J3edZ6mS+JeMlhUcHXmJTHRUbEula5IA+XLGRcqdj9TxMYObRne
	 AavbYLdENxrlhtBIInmYRpXNFZIE7W4BBiS7fCB9x/E8oYAPnPAmJCqObKhqQIDqx/
	 nr10v9MHG0Yng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7418FC48260
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170779969646.31462.4166819009489618829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2a319723364991aad0425aa577606003a3697ffd6641f7ca753113d76116146
Date: Tue, 13 Feb 2024 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707799696
