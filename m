Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241AB749C
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 03:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763435515; cv=none; b=CHDCsoTGeMX/n4kaAFPre3mVuVcE8oWSIBjiXR17oOs+T4vgkt3pTbA5vGlvpff+KnIlttVnwicS4jgqBVFGWpQGzkbRJJa2oI3HKlM0n28ndIspLvLmW6WiAJ2Wcx93V1hNBvU5CO4239EtEINHn0lIQcCGw1pmnhuLVyJ8e/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763435515; c=relaxed/simple;
	bh=D9aBXbNtWArtpBoNAZ2gG9RMyclzFRX3TM8S0nf/uPQ=;
	h=To:Subject:From:Message-Id:Date; b=XiU7uOC2vsQ2Bf4z1bR4Bq82ItfCYrRu/SMiiw4A5ZGdqt2iYtwjYJpcGgExS4jGZjjAZZuZL2IYssXf3S49CkkTblSqEkrlepr/IiMxU+DbK5X9oKCPy/l991MPBvyexE3sa3ak9KbxarW6L3koQ7aKe6r0+ioa/3M2m9Nks8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yuz2T7OG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yuz2T7OG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C285FC19423
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 03:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763435513;
	bh=D9aBXbNtWArtpBoNAZ2gG9RMyclzFRX3TM8S0nf/uPQ=;
	h=To:Subject:From:Date:From;
	b=Yuz2T7OG+vgxorIeC4zkvBZBoWWNFIOXRm4SMeYV0pjy+uIFmGcU+49aRM1zZVFj7
	 BLP729sdL97mEzIb6K5SIVK0Pw9e4rRP5AmTgyoILdVbLFvKWvN6XWCn0Mv0qstKge
	 KnQPYC49QFqeJEunDdCl7QcWhxYyYsNZEvH/WfAadi8mlZvY9g/NqVq6+OvEYgQGj7
	 udnNU4sSzJRtdQZIwkS04EM9y754KJLKyCgMdlavc1ku2b2RH3xyJdpN7TzVblQ1F6
	 0Hf0M+fwguF5cgBtxy7fJ0Rivn8SJomHzEIr0reAbNA2wuymgwM7EwPfK1uJLm2LnI
	 H/0oDecT3L9Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939CDCED243
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 03:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176343551358.16649.3577589715800176862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fad1a35a4a65c60e8e29faabc30ceef4b39e3bcdd8b2b7656b64585aae66864
Date: Tue, 18 Nov 2025 03:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763435513
