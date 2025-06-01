Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4610D13B5AE
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748788194; cv=none; b=oALUo2vn0HFmGVCYyi+6r6H0pz27ip2gQhoMBi0NRp+fRq1tPB8W4wsqa1+asb99/uKlzTOfAhP7LwjfQIbEKV7rpKDd/Ut2EcTwg4PQUmy8um5ZuiFOjANYQErydm9tjXpa9r3272oiD3FkpGCtdmlzjHTfawDV4mqDod3e4xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748788194; c=relaxed/simple;
	bh=IglQv4XcXQHLmyMcgJ5ncFfdk6viLLpSR+2FlNt1VX4=;
	h=To:Subject:From:Message-Id:Date; b=GiKRJHQ6CHyONBZ+qvP7ODb/DOVWQLgDl0QlSgn/5xU4Sdmmz5sdilRq+y7cnsPmXd3vZg6dwlijPTIc15APkAAZDZo1aGpezHer650UaiwTGbn9Vl6rs85zJWSSFsToQQ8nV2BQkbL8mPMdVroS3QBq+xW5LQT3BOD69bT6yvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwwDCF2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwwDCF2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25FEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748788193;
	bh=IglQv4XcXQHLmyMcgJ5ncFfdk6viLLpSR+2FlNt1VX4=;
	h=To:Subject:From:Date:From;
	b=DwwDCF2mMwQJ7zH9iDo6x447T9lCsUWWfvYydtobTei5rqOdVb9utbHQjSVBRlDh+
	 tKyE8Pwe94ShxiLjP3VfvUwbv6hKT0VsJZrVQfU2a6MW1vbxB8ANC9rQRSUA/3tlst
	 CnpDY+HtY71grdl2tBvbyrMdeEfBJ6hYKU0kY1QSBm3oP+oXHyTZA7JlxJTEkCn9A8
	 RbrGJJsb/eFrRnMQPZcwW1U1V9oJQaAAYgzCl9dltfjvlKXgiLxFayxyOEV10CjibI
	 PI8FaaYGMOkTLmrKaazJC7UWDBU6/rb8iI8Td3BKCf2JzFzLQ2+9kTIzDSVJ2bO9Oe
	 Pi7GZ9BMLvSZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B54BC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174878819361.26372.3356304270520646269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ead4641bd39e067846f3fbe442992be3b10c8635cec5fedd538934be87106f5
Date: Sun, 01 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748788193
