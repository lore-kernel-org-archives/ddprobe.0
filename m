Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE3E2765DF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776929854; cv=none; b=NnITVbPSJuUxG5MQUQe/eNyXQzVBPRfAmjK7qdDOv2XfVU/RcojysvKreD+cRdkbWR/U+eXKD4z1sBx0nvtJ1QPRnkiSpL6iJwg3eSAOXnONjr15rtmP1uBAAMMJz3NquASjXxrw89uZOSqDWWvobkvbFxLukIX7zs56WpSNW6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776929854; c=relaxed/simple;
	bh=N/RZluDNf9u+6z0dWDqOKMVTomXk0w2B2ODaW82LMe8=;
	h=To:Subject:From:Message-Id:Date; b=pykEwQGDQA6GHwtrcpGYBVm2vfoXTIPtf5OMYN7ZCuB/EPSNeCxOrstmSHrHFfijww/j6R1phMiBbEfrz1hBJqnWtlOc1seGtWKeMoWqfQIA3q2oGGURV86qbUFlEJDZVmpVoLaDW1HdzBt+2Gm3xCqoD6MJ4grpMD8k17lmVQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXYqusmU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FXYqusmU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6CCEC2BCB5
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776929853;
	bh=N/RZluDNf9u+6z0dWDqOKMVTomXk0w2B2ODaW82LMe8=;
	h=To:Subject:From:Date:From;
	b=FXYqusmUUejOOrFXqx3YHW09tjF610AnHU78f9NJmZDloSWCd620ek15aIMIJ0pdt
	 /qqrrd/KI0nnXk146+8mP1sey7Xi6H7TTdlYQ6b4JNiDCZvynMmPEPf8V+57Kf6gU1
	 PLnBAFwXcU/sKbseuz7bEJSJ5lHqI9/xX0/TIEfmV1HP9sivRXi3zZXx9EA8RRfNeB
	 WC4oOABMRlhFaxPiEhxGfErP4JA0yMuF8rx8OzDFrFhaRMaZSQvKS3dTyFO8oVFwlW
	 8behLp18iYWe5iF7LsNbSMrDXDk9OZS23HB78IrP1cX02MzTEQ7Sx5aWoS+tlGn/7K
	 q80/ZWtd7+gWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CDEF99340
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177692985371.14091.5040372757919792826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8996b8bb8c46ee22f9247b152bb9b6ba9458a555cc5d06926ceaf1c957add812
Date: Thu, 23 Apr 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776929853
