Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397CB34BA29
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759025994; cv=none; b=DhmRI9M5d1QZiHi5EZOrxZgV3wWfvYCPR072xbpwHf7l7Ue0Dl9AQVqQLo4yAhn9edx2yJVBHaWr4E+iL9Uv2Hz+5H1ll00xFCs7tiIyDW9EqylnBHA3EwNL05ceHceqNecEGwq23d/PDlrkeOSnES4xcVcCWRPmaYKfOhOQ+sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759025994; c=relaxed/simple;
	bh=LILuu6Wubj/PfF437bpuOwduqrAYBl9Xv202D9CrAlo=;
	h=To:Subject:From:Message-Id:Date; b=odoyKnaA6eUkn/pOYTzrMjF7JiyG1XXoX9VXPEGtY5Vztb/C6mMXpnInRL2vQ/GZBEOR/FYf9IOjpmtKF3prqBmXL0Up0SVnV1XTNBhtDN+Ucr5/dLf778wxUL+Aj2tsvc0g2JCZU9wOMGoXt/xnwRcQDBiIrQF8V8JYQjBkdsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EM8u3LbC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EM8u3LbC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D93C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759025993;
	bh=LILuu6Wubj/PfF437bpuOwduqrAYBl9Xv202D9CrAlo=;
	h=To:Subject:From:Date:From;
	b=EM8u3LbChlHXyBTxFdTmrykoxJ/qYFPGBEu9X9POchcOvaCRc5+euj80tMLT67A7p
	 H2oGj60DaO8khz/WBlFtU1BadSlRG8U7iOfxpeG/PAlSaQfupcZd2kwbOJuZpWkEKu
	 cm8y9VzYMsw3COtW9plWZ41VoWemiNWji4NVfPk0Bgdip0sE/rl8EWMf8NAjncr0eO
	 XjrAk8NOArYyoYQvYp98eSRHK0c7+oMi5OjjWF6r4Gg/m4DzAhZXXvYnZtDzPstUH1
	 ViRv8divpH+vHhO9C2Y1SvS4MplS2pvcUauvQcbvAjxdTzBKNqpKpAKfigoCTT0EnM
	 uIn4PaBWCZ5Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95158CAC5B0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175902599358.11322.3977337274965808091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e2d0c2880ec4344a587205e2a30e6d3a3cb7736a3c41bd7fbef459304b22c32
Date: Sun, 28 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759025993
