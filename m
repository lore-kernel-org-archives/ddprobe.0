Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E92E315D3B
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 14:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775487334; cv=none; b=J3a1FQa1o0JWDJcP8/6WTZDMRRY71eGTVQgCMIHe6OUrJOp85E85CmUMgeOX7AKwVvvvTgjiW6MfnR/9c58giIiwpGod19CALhnkfSi4jcKb928cUX7Gu5wQsIo6bPaJhYvN4MSE/cQf3X1TCmrU1HSfHRAFQnovGMD4FHXcslE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775487334; c=relaxed/simple;
	bh=FU9nl79w24vxTN/uYcErCA5jXUPi78LaZ4UD4XvDVdo=;
	h=To:Subject:From:Message-Id:Date; b=Zxsj53xtUXQaW2LKQ+YHshYi6T0xx3T+AIwrt8HjnbIpkVP6F4KnNom2M4WBNgPyItWiGKdWjcDVSK2uPM7YGROIPA5Bcs2eBPGollKOYcI2ehP8mVoFA3SKPm3NqnqKEkhPiQxZ5pniqGixbH2tzbHBwCv7iqv/55edMcJx2+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqQuYKNB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqQuYKNB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98C9C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 14:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775487333;
	bh=FU9nl79w24vxTN/uYcErCA5jXUPi78LaZ4UD4XvDVdo=;
	h=To:Subject:From:Date:From;
	b=GqQuYKNBO8OjWXwSCdOCo5jUHkOm371bHlzGL55599JeVQ+tEGj4/vDDRlSMpSbwQ
	 spsnud8s+aGQrNsV2c5tWIRBTYjruL3BknRbFIZy+4bRutB2GfVLm/+BsBLWNqAV5k
	 jqm0knuuWix/8bFERYk5Sq6b+uWRj3JJZ/KkJyoZqRLeAx0PIrEaP0ClcVvxyb6CQr
	 6/eC6+UYplmQKgtZgKIZBNjBnMRs15lTnJ8A4qIiWn5746JlaT28Au+IQVCecGPBGb
	 hba7bL5JOZGFvllQyOZjcnMi0teL7Zpl8GshKydzLmosxYazpe+j5mLeSqVOJ4lIC6
	 Y5BeG839YEOqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0A8F46C44
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 14:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177548733369.11738.9347201477740207721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d443ae774902d15d301d6fe2ff82cbd25f4bd0fc649e09166ec79f95923d413
Date: Mon, 06 Apr 2026 14:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775487333
