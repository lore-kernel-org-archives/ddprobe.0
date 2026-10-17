Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA4F377A80
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792280434; cv=none; b=Hknj+IdEOiWC08NmA6OtZX7kCzdWXxUtb01pxqcMLyASsZKJyDIhyA8WzwF5+iByLJz+FZX0LwgT5/UoJ8GKUliIdAt5bIMPdWFFHMhCYgbGAcPMlhoKKatJSEIFVoXMaWkPfFlllkuNyMnNE80N4CQMwGvzczNt8vToto1kjs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792280434; c=relaxed/simple;
	bh=VEVR4F8Pg//5dT8Z6+SO5vjPvyg8UcPQMfqCB2GZbOk=;
	h=To:Subject:From:Message-Id:Date; b=IvKlA+Laa+mjQZhv8P8wdE9atigbQjBFSUh6Pc2W/UffHDTSnc0sf2K6ofunP59p4TtcW8SZSPDaBCxq9glA2imD6jcmgb5sq64q/xdfowORBoHa2ebVRm2nJ+JX+bpOp51G1X63owgx7u4kFKlbwDs+LrBXBh0SjyVXStpp7Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AShOe2JZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AShOe2JZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8A61C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792280433;
	bh=VEVR4F8Pg//5dT8Z6+SO5vjPvyg8UcPQMfqCB2GZbOk=;
	h=To:Subject:From:Date:From;
	b=AShOe2JZXl+4Es61E2zj20QxTYen2lSVlA0piLtjF/1zMPyv2RkYNES0sSJDaTXhh
	 +FShhhb5IlB+qgBpeeQaOU1PljwIyifEUb/Sw5CcSJCw1jFE1cnwW340dLPy4UTTEc
	 F6eYIAVr4ZGBUYw0vkfjRkSdzuHe1Le7suODCoHVeLqH6Am6gneHsesx4wPbgpnNTY
	 WTcHAawFFc6pvZ4TggXid4R0spCmNCJiNwXxcp/80sdBfDpv0dok1WPQJGWoV62y5J
	 DXRgo+fpFKHhzBeCXNuXtrKrRAZQXWLHMMo110CVbfOOeGJXo+gAq2mZkk7UfX2hCI
	 A+Ack9fWyIewA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD686CCF2C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179228043369.27589.16067658749941209573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c21f73a14e36a8ed8a90ef60249e82581f3b3e4f78be58ad1db08753c9ff1713
Date: Sat, 17 Oct 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792280433
