Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CECA73451
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736127954; cv=none; b=gt1T127qtr5uZ9wyO7pUjDMEzZDHlCHqb0a85qxtFcrexim+2brQPIaNHVrgbK2UepJ2MXm7UBUN8j5vAgZkd61DSiDBKVtbFYzQWCSsvuEOc6s1bfjzyhhDG97o0yB8QJBY7+WQuTmBxohl3ClXJgw16Ex1jnYYLmeWIJsAYU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736127954; c=relaxed/simple;
	bh=61PM1WeQBHG+94unibEOHdPbgB6kVPLzr+cChUWeSlA=;
	h=To:Subject:From:Message-Id:Date; b=VppYC5j/qyh/fmtlKl0FyuqdfmsXH9O30NUv1JfvlDELsiahcstExq5O7F1OgS5TrlOM01aLxjqUXuw5nKWKF6xNj4DJkzhk5bLKae7dEknDaYpdMRqQsWrG4OJffXXKb62mJ89zvl78JPYlmB/q99TFkB/958oPO+qkhfNH7KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrCQsYbz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrCQsYbz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F742C4CED0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736127953;
	bh=61PM1WeQBHG+94unibEOHdPbgB6kVPLzr+cChUWeSlA=;
	h=To:Subject:From:Date:From;
	b=hrCQsYbzp4FJOy1e84JvwffGoxuxi5PIU/DlM+46Lm10ST1MmjYe3QhAr3T6ry6mo
	 upeFnpilp1ecorNN6rPRPIXqOrlS1SHbmrRbRvQqrhjtUOdbIW3MwjQ6rACSd5MrAz
	 sv8JJ1Oa7zn+bJXkpjrxQrPOlOTY0spqkT0tM0VtvUD0MbDdVe4IfI/LPcXItMaYxF
	 MDtjGJTfNoCtKQ5jC0ULCNsXyi18hgLzviZ/Iwsg3NUPKCxgyXNm7VTrZoc5XkavA5
	 fEoIbww7olKFJwt+EdRgzlNTMiGpCpErCXXSI/+2F3zq7/XEAjTxAceAf9kZakhqCy
	 oqLdhdgoVD/1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E608E77199
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173612795357.29075.11501066238968946647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a2615f55409d4a2f7c5b5dfa74019d7274ab2912ecb6ee87555aa1f1b17411c
Date: Mon, 06 Jan 2025 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736127953
