Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1546FB8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 00:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717979243; cv=none; b=swB32WJ6ewRFSsaHpFjrsc/vQlE3lXx36UUptzy8osTp1Mv5XRmd0jTF/s8r54V/DtuUQ0CBfVw2geVRZrNOdir0VRNU6cgWus8Un4RfHBOH+xoVHxuy6Z0Ok0EXUDQLV5O47oKsaAGJixAJXehZ53NRMZmLnKxtxshh/sDcIwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717979243; c=relaxed/simple;
	bh=zHGd4Rso+TpGNxfrUVBzraZWPz3zJPMmF2G0tvk3Kv8=;
	h=To:Subject:From:Message-Id:Date; b=rZAwlT6Ma3KZa4FYYuBfpoNTniH0xwSBa9q8wpTx8nKjiVbGfiXtlj244/dlj6g2++E6hzAYed+eM2ul1ov/nM2F56rC4Ncn3Xc0FmSRYteRU1Lk6dCVBTUxuXGs9qE2BDBBCuzIOaojVbATX8/I1ISAhqcDA1bibqkUOXkfkz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eSDIwMx+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eSDIwMx+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF3D6C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 00:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717979242;
	bh=zHGd4Rso+TpGNxfrUVBzraZWPz3zJPMmF2G0tvk3Kv8=;
	h=To:Subject:From:Date:From;
	b=eSDIwMx+1SV94NUdhnH0Ff2hMuyfCNV4LlZb6poX8btVLPK+ETEnTuUTJtViPKneK
	 j7Y92VmnSxaVjaYwbjH8mqe/iZURdu5OOUrUE3GApzsR1XRhNKwS2HngdJLDO2LkHh
	 DZNbIxKMR5kCIdLEppJKD8un91HGXL17scZljPxHb347faSmSteRr6n0O7RpS5hFff
	 SO3j46fmk1E4nPczJfCGH5Yv0jg6cCWn37yLfOqgGrQZCudE4MpgvC1YpWYlBnF4Qg
	 J+NHAb/uFhYUp/Tlq+EeBC77wj4fqbHHczVomIQb0wB1GqPdkQ95V5FIw5NJpLTFnh
	 Te//MgZCAUVsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAA7FC27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 00:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171797924278.8429.8443488561708800226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8007a82b4a9741e39d90f747e00804c5c8c8a853a6d1026265839931201c9d68
Date: Mon, 10 Jun 2024 00:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717979242
