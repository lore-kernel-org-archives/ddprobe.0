Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7AA61DFE0D
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733219154; cv=none; b=ZzBv5rHH3d0Z7Y/dd2oWHWSgeLdCa12RZKTCbEO8ZZ9aAVlbi9z9QjK+yjM2akir/mmdPtEE3YG/cbpiFJlKGJBLNULE8jXTySdhfJgKqo7TCDouEIAON6vT5oWbPtfoQgGpoSongxLCXoX2eSYFODHzg1+Nddvb5mLIrBeHid4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733219154; c=relaxed/simple;
	bh=bizwkPoqM5rm/ejQ4gO3Rpb8iRMvo2p6EsPHOOHnWQI=;
	h=To:Subject:From:Message-Id:Date; b=jTJimaf1IwEEN5MVQ4zkt71HdM2/xHyK+4drEGbzOf1XNFaS+0Iy1yJdc3QfzEoPg0a0KKfAL3TzZI4ZR8UCfq/tTZFWtgLZ0C2uPmaHmqsVZWtEDdxnhEHcP6duWQN7z9W3V56FWVE2x4cgpKFUzolBjUzRmHkXoHEFn9c5Daw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rs5snhLR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rs5snhLR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B221AC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733219153;
	bh=bizwkPoqM5rm/ejQ4gO3Rpb8iRMvo2p6EsPHOOHnWQI=;
	h=To:Subject:From:Date:From;
	b=Rs5snhLRHBuJN5GZD+NVVdgh9tI1+RRhBC53M4igDE6/2BL2tkP7UCxk4Iq4Heq6D
	 2Er2B/1XEckXWgS7n77E0akpHiLbm8t5mGktrOhcLd75IE7Zyz3PbGFz500ZIBhZ6v
	 EMHt2kRXCsp5wuwKjgAinYwfUWB00v4S0NtacCNzv/9q86V38neE+MiBta1ot9FCMO
	 zxiHgIzy5NIfeMhrQR7Sfm+wFBpkDqc/WvbA/0tCtcJYmrqKqIZok+WffnP65nc7rI
	 coPBz4DzXvc6Pw9C4Ac4Kjsr6Y3n7OmzCKJwMY7v+wdolGBIqYn4gFN+Nh3nKfaOya
	 M/qlRYaWitWeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E2ED7833F
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173321915359.3904.13426442226279080675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241817bc32ac136fe386493f02487d9876c0db62cdbcf193f7503457571ef529
Date: Tue, 03 Dec 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733219153
