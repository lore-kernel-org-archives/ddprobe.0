Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C6E29B799
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 13:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775483734; cv=none; b=QoIM8VCU3JGjaIwkKEJiwRsoltN/KznDub2BFv+NDouAgT/4MiopG/Vjz+PEwI74Xh3z2Iy5dHAQSkHnoGWVb5DLqQnfRhF9T4pRw79LMhNeu8nKEb3/sFneAz7B4NvLz7oCXgQRCKpVJj/Ph3kNrQl5qTCH5Ebh3QQcbif37bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775483734; c=relaxed/simple;
	bh=0Xs/m8/m2SCe2/KvjLZY82TzD3H+Bk78pEtc/Jis5QA=;
	h=To:Subject:From:Message-Id:Date; b=BAG7KFXYGMew2tQFM7BlQEaHE5K0ZOMFTAU767VlPctFqRGj+/vezihrxL3+Dv87p6SqVIt8nleNRJjK/t2/3lL/zGtgpMjG+TEA6odnv8k9zfsJsuN5X+hfKX7FDUnj31lkowrZgFL4fmhBFXDl8e6v5kNI2jwmaHNFW17wZdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkvF8Gpj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkvF8Gpj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D76C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 13:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775483733;
	bh=0Xs/m8/m2SCe2/KvjLZY82TzD3H+Bk78pEtc/Jis5QA=;
	h=To:Subject:From:Date:From;
	b=bkvF8GpjJPlfrK3rbKZO7QjlyXLHFY5mVW/1n5kmzspbh0dHjvxNJ9ViLocPlX6Oo
	 7jAfIoc5JD4NKSB45YKPa3slB1UxTOI0/xCaaZaSThsafwK2UCiy/Mc/i+z4GUMc4m
	 zh62ySvMGkPakLoEEGPb1CsIwnba0HfAkaXXqptAT+PmgLa8Ilpepa/XO+TJI8Iyfb
	 7eAqGaSqhN5nYLSDYmEVuH+3Gailw3Grq/i8t+fFHNHAbl2gn3y5PcbGuQQP+Xkfgi
	 xoHw0motR3yZK5kBYCe9xoyKxN/+SNiUBO4wylyNAYadX3qkXljxftkmiFIwFNQ6SJ
	 aUxc8qtqlI5ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B168CF46C40
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 13:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177548373370.19255.11535285720643287863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0f623eb02be51b7927c32a37a881d3aee46ea40f6738cb89fb3e41a19822893
Date: Mon, 06 Apr 2026 13:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775483733
