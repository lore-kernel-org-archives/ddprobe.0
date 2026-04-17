Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5534A29827E
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776462454; cv=none; b=HJtTb1gVlgTlSHSdMwDZ0BJszJ01XcvXnbFrcLnYxnVl5qFP5JnK0Fuu9k8Lt+D2Vbl3Czeewza5hXVS+o9JECbZzRZF5Y7hCiY9HMydshPA3nixNEY1KRgX0P4pbcyrrD3BrNUDh79AiY0gfL1TnOYe8a1yADCyoc93Ic9DhHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776462454; c=relaxed/simple;
	bh=Y1VRM+/vht8Y5uZ2LVhwtbQ79Gkus8+ICVav5j4Xzsc=;
	h=To:Subject:From:Message-Id:Date; b=fY9FRGlCmt/TQSACMt8hnpuY8EOFH1W1lyq+IsLlNzP8lOSPWvqXIG4rr9aBRCrUt695qeURe9ou9nOriOpJtNSfsREv3ukIC/Xttm1ek2ke0AR9viP0Af5SaFzlhmxCKEMImtdDLHq8aPEiD9p0FvKhB/1eFYV5kG8Cc5l3I4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkURX3JP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkURX3JP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2237C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776462453;
	bh=Y1VRM+/vht8Y5uZ2LVhwtbQ79Gkus8+ICVav5j4Xzsc=;
	h=To:Subject:From:Date:From;
	b=dkURX3JPwRivlGgLk1qrFBDbb1Wl4FvYMHqF9e0B8xsC+feFJypEPbINkRSp0kEu9
	 RP1iLM1Dw0bfee3aRoq8QxxoNS+wxAe7ao8uiSId0x05c05Iscu+giWOR98GLHsjuI
	 lf+OScjZISDnGb8HKR+LF7Q8cOkElAPcTZSQCUYh/UVPA/hHRuMlYrpfw47z7RUv9Z
	 bLz0kuJc86nbgQqztj0wRDuxjCBD0jKyKFcOPsLvsYCDNRBUEzovGnRERdJZoT6iQt
	 0YMlNrMD1xYdDnd8Zq449sGonf98kJlDnfDfvCs+SCNeEdQbSB0rGTs6tcZKhAZpPZ
	 0PneDt++tuVjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE075F99C63
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177646245370.10309.17532049416781002342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57391057262c9d7581bffcc1ce1380e63f27b21751da54f83ef2281d9b4f48ce
Date: Fri, 17 Apr 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776462453
