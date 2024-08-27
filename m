Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16EA010A3E
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724741154; cv=none; b=TLuIX35ZJBDGRBEYMUE3eiqxjT1uLkUmxbLD47QZ+Zf2rtWdw5bPg15+ajLEtg3+r78gRLQrr1GByX+avsdclaR5WegeKa46p+/CwL8DW844nBClKGn8f7Hb8hSj9geQPynHaR/lJhswwFfc2X0gU1/u63hRDs5vDtQ7O5Z9jTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724741154; c=relaxed/simple;
	bh=KbhJMlYQjWInlDmnjl9luKIfZ1ecmPuJN0OaG8cDjos=;
	h=To:Subject:From:Message-Id:Date; b=ocYs4ZmuWKyV5McQ7+s96d/JJyKbarkaf60F0ghQ8gYVrMfVWYQc/0U/gcp3ve7hwdjcfJrKEgf9PzXKEvJAA1DgKYNbx4TsnWCSxOniKc0lYiHIWehxvCjuh6DleNA/TeBHquAm51ixSAekb7i6id5dgl/afXf7+5YMac+e9yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kznTItbH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kznTItbH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C67C8B7A8
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724741153;
	bh=KbhJMlYQjWInlDmnjl9luKIfZ1ecmPuJN0OaG8cDjos=;
	h=To:Subject:From:Date:From;
	b=kznTItbHmVEwY6yLV3TUdF0agBRfhlq0lhM1F+zr5jw3S3Pt/+7VYnpi2+NY5JTkr
	 iV3unBS2nerJbutgYxyoEreHzdxMP1VwCvFExXrHCaX1wP4dnb10u3H26Yme2Vgh0H
	 39jujTaRZYtIj/yH+dLaN6gAb5sfaaa27+8ChuZRxaO6RalqoJ2Vlu/4kEDKH6CZqL
	 6M/zDTzojBXUGhgNc593/fUTJDNNdk2zRaY56WTTxy5WGh580wAmcVc1YLck+I7Hdn
	 y0I7pQXvQ7G78hJ9X6u72Fq7b2KqyNOnq9RSyav1FDxyTZgSP5AoVjosojXLls7ui3
	 KJ6eRkLiiLV1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92394C5320E
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172474115358.18685.10194354839585611994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3cbf6d5b9217c032f0834869c8e05841ec24984e8e2bafecc30646f978d290c
Date: Tue, 27 Aug 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724741153
