Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529C23C1D41
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787897434; cv=none; b=uE4HjXjkwGHGzxUflrPLe+FWuNm+SnVMpQgisGw52fjmO8Qp5sCX+KXgqjp7OwW/MGjam7+K42xoZCWvQox1cnQQ/IpyqIYag9kcMlttX8T/Ch8ExCycnr0LvbTYnmXVCMKey6+UIqyJLz2O904hj/2nq55/07GxgDc1pIwUsoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787897434; c=relaxed/simple;
	bh=elHfiERQ+6Ebrt3dyqsBGSH5HG7PmTgml+XCrfBTkbg=;
	h=To:Subject:From:Message-Id:Date; b=PRo/SM7cPoMDVgRKeqybbJcraITAKXB9LaZYudAJ0hvcg2D/620E9jgEM9Ut+32kC0PWhsE38GCp9CnFKgYUymSSTCELpK6it7EWQmCvxtZHw/nrWX2r4U2zGqLR52c7Olzi6tXI9MgAgmrsoGOk4nQLZnVMVaU+YqQ11DbxrtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XaytgZia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XaytgZia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB761C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787897433;
	bh=elHfiERQ+6Ebrt3dyqsBGSH5HG7PmTgml+XCrfBTkbg=;
	h=To:Subject:From:Date:From;
	b=XaytgZiaLy/edus3mLXt2pH5hfEdFcZxekYFzuYZ4tVxavq99qZKTG45iHcg57SF1
	 kYyZp6nxn7P+eoLR6oYg4C5EZF8tOvOacvG6uBrR5Kg+JFbYMi9zxPMuNgRzvwVFEf
	 5la7Ik8nkbRkbUnsUOg2ISb9rmmQUJaFfBusX07JoO6jrZT69njJpcAtyHt7e5E5hA
	 F4NSehy0kF/2wsfsylw/PFaTWxBgcTqdzOhxZED7BOjoCGgXucrEfVvd6JNi4Sbsss
	 BD1g4PzYOep4mb5Bk15z4gNCMdbXqjghxBjnUN894KnDOfJrL+iNs/GRrp8ZaxRFBN
	 qbe+pMblrnnxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99D6C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178789743368.18965.5460972230483961675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d88c622b97535d191b4ac0277519a12da531db797d89b039781ec1037118b65c
Date: Fri, 28 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787897433
