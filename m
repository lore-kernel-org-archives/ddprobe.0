Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E50026A1AC
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762151994; cv=none; b=VMzvzaibbZYebMssmfr48aZkU+14hl43ix+32tgoge0yhkiIhnrmftAGNGzjVg1nu589iNIpaxBglxU2kLa+NhSB+8pFcKNVifIpCEFCbYQOdhh6sdacGwxDhHNryFM0V6qv4TgfIVSz+BT43UDIi6O26ny6NWODw0f6whc9BSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762151994; c=relaxed/simple;
	bh=B1V9UKj7JydVrveCN3WSwzdbxRSh+KT6O3j6pORZkWw=;
	h=To:Subject:From:Message-Id:Date; b=lATXijyX6D6uWtSLmVJhsyY5CY54+hY+umKih4E+UMac0ZSt5V0YiOn5D2DK2tDPktOFnWag0AEdJfDHsWRs6H60NWvjwHHxXTx05iSjr2g4hp3jgDwYLhzexM1Cowt5MOAr7Xk0BalGBsLVCgjs7AKXq9s61eDVOOxKKRJQ4UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMQXvGyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMQXvGyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A474DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762151993;
	bh=B1V9UKj7JydVrveCN3WSwzdbxRSh+KT6O3j6pORZkWw=;
	h=To:Subject:From:Date:From;
	b=gMQXvGyvGSyD6qCZ4p6zRRTTqYPKMTJdEETmZ1DUBKg+PjzIDOu229d7X6/QvIObD
	 Oo2qJP4ZRHLHoOC9K4wWbbNR0hFsLPLOUPrxKVl5wQXKUvPsRORD1YxfWbVp3Jo2F0
	 c6rfAsT388A1KuqXl6/k8nIkZMmUcjxWEM9AtRjiCmYkJSIoricj1jae9RQspoUzIJ
	 dIQxVg4DqrH6MIbsDSuoy4oy1EtbukfkQc8ZPZl2PAXo2sczM39ui/FhDqYpE3kJJy
	 zxR3ys1FYrsa5DFYnG/R3/9vEmV3rzBKGxenhCX+UhUfACAULDzx4WNZjs/S5O1/iD
	 Z96G0f+LZ0Zkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91429CCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176215199358.32603.13340616677469443535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 217a55bd4364ba495e7e8f6f5a96c4b2fe3b7e26ec625d632ad7ec035e7ca13b
Date: Mon, 03 Nov 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762151993
