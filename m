Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70FD30ACF6
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776220653; cv=none; b=KTLFJTelXZ3okwD3xeGUQeE81yBvHRNbxDSfae2ZdyXa05kUQlzbOgdrRrcPlpDYUK6cElghBKaB2Qgg8iWhkSuGgv1D72nxEn7QGTzxJal1Tg1bIkpg2KpBIMnDufPb5u743hgUbNHA1T3SHkX4N/RstWUwdbQUbwFIZTOyRp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776220653; c=relaxed/simple;
	bh=4bDzfPquk6dT2N5STBioHCYJlcOo2RpWUDmTgNhSGW0=;
	h=To:Subject:From:Message-Id:Date; b=DkZ+Cy1blEMIFcpNDhoQhEBakLhRU+EglHiNZtgCLja3960043uO04nSgliYDFHc5haQGo5uW4ZdNWpGeLcmkw/GRqW4NlgPNmYyOPx2QTQHMdvkYxLS0auXrFwdG4mqDM2Ck/a863fSuD9I97pfkJTxRe0y8Rzpc92giwvrN28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+m3qlDu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+m3qlDu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE26BC2BCB5
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776220653;
	bh=4bDzfPquk6dT2N5STBioHCYJlcOo2RpWUDmTgNhSGW0=;
	h=To:Subject:From:Date:From;
	b=Y+m3qlDuwSN38W2Bv1K/GgsG4OEDO2Lu2Z2WCBi1hs69Vo5oybtq0G8P9R/fqbkfC
	 v8Vq+X88FamfJp43+/KupwL/dCITpLFVJiAxQcpV/znhWzpysYWmsCbNuoBWSIn8fN
	 YYJWFRAnB82M8xc/ch4R+9KTMkaXmhAM3M13ZbOCtTio/RO6qKWClDZFfQMMTXKjDp
	 7TueCcmzvF2ZInNm/voneW03TwlfjhfARyzaGV2YqgjhnfRAqgPOSrvbPCzgxgVnVs
	 2j6iOO/XoXRpMV5kB0FaW7PyaH6syrlrPs2tMd8fd4uLN2o3z1v/U34o/4ZaS5DIuN
	 FtXMevmMvRlrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFBBF9D0CE
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177622065368.24636.3345226644738983654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dffb0e4d5d1b2ed57cc092c683eb9df5199294cf3c19dcf1d32c00a7772048d
Date: Wed, 15 Apr 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776220653
