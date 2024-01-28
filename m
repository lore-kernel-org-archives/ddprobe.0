Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1233E17C9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706411297; cv=none; b=AKOAr3d8Cef0S/2FMoqcLWqfvIEDQWeamzRuSuv/MwEHapP2lyoKCi6TeP2qvixlMcL260cFJq5wKWrKiEH1PmAVFch0IeHeW772wkkAvC5jdcPEQmPId5yB3+XXWOESAj8z/iSnQlRLecNbBX6ONzUHJgGGZGRUZtbPJ7FArFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706411297; c=relaxed/simple;
	bh=u2rQ0n2FZr9TQTDnpbcf11HolrpnnRl33w/8Tm9YL+Y=;
	h=To:Subject:From:Message-Id:Date; b=SGkFDG7eTPD7Z229surL5h5dHTU17JUjfh7FSQz3s3kjtG9ZIex6xvqjb/H/Fsz5KDxFHLdEqWEg75VNIvAk0Mwg2G+4OljDfeTY6tHkQg3HvjBPMzUx0m2HLn0qc+Z8FCsq85Ky+8ai0e0Ulnc09ZxLcEtFw9HR+Rt5AmFerZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osONHoKI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osONHoKI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76342C433C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706411296;
	bh=u2rQ0n2FZr9TQTDnpbcf11HolrpnnRl33w/8Tm9YL+Y=;
	h=To:Subject:From:Date:From;
	b=osONHoKIwpi0dJQMY3skHjOxjVJThkqGjWAPhQkYqFFGHhVjfvHD+9sXjaGAmHi8F
	 CPKbGeuSqvHywusSJsdqS7+fdTCjOWOuDsYi2phcgQMJ9TVMpDUCjT2j8+Mostdoz3
	 2Cp+HUU0pxhzvYisnvRz+7qcKcKSFkOqESSyh4j/mc77YYtm/QriEXuHlfPXX783qe
	 qvLagJhNm7oFEcFxeKMcJ9gZToM5iiG3UeX/NyrLD6vMNu8VV7orTGuYsihKT0uSHs
	 2PO/62f4Zz9YJwKpCBV9VfxD79aP0Mgzj7Dwc+ZYgIb86lQNGyK1sawlAvXI21vMYe
	 LdznQ0jV/mnuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F29FC46CD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170641129637.12871.9217174918329468033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a3562dbb35826a9820ddd42b539e75110988b9d958740d731c96a3b665e5185
Date: Sun, 28 Jan 2024 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706411296
