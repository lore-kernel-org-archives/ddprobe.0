Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F531A3166
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761019794; cv=none; b=tHwOEIrbLLLt4YYhqKpqTAAxvYuJuplL3c/WJiW3dGATrwqIPU7Bmj++RSOkX07nTL7CdMIInOwYA4v5FOW37PrWmRFhfmO93UAC0CZ1AO1ARQR+NpEHn8tBfAC9lHeiMnWGWGa434w6GX3xTplgr9CuGz/AGWRTdr4fSYScIYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761019794; c=relaxed/simple;
	bh=EQ6nueEaz505fuEqq4plR6AkLy9rw1vw5OPALeqkO8E=;
	h=To:Subject:From:Message-Id:Date; b=o6ybDIBPZFpUrEFPlfC2Ecr4uoUYq67jxgBG4+9pHkidF5ZI6u9dwbeGj9/2VcUt013KntmWsC6P1xtQMjCvqhTRE+ys420CNhHQlEwEhQ1ZHwfzhZ2lGFVUcS3iB/QBB6n89Aezvsi563BivI3gJdR81fp7Jl7DaCwAmBe+Gwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JswJez4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JswJez4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C52C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761019793;
	bh=EQ6nueEaz505fuEqq4plR6AkLy9rw1vw5OPALeqkO8E=;
	h=To:Subject:From:Date:From;
	b=JswJez4PlkXGhX9GDusK/d4qVmKNXEAMsVXnCuol/SB9oifZQcN/TiCAFJObNOo99
	 xLe8nvDN28NZK1NpQlD1FsQcJFI8Fyb2Aa6nI2mvbtJwqYrgLBnvTggA3IMFI9poXV
	 OhEthaaZChBUbOWqBSpyaGMp9PG7w4JEcFJ/SLoUmia2/RBt7G4ykjmPTeTiobU7FC
	 rJTC935UNo2m7SV2+YefSFjkOvOu7GK6s1QUJXV1Qm7OJLNeTRykS0ick4MnE12kEg
	 m0Q5J7m9j5LjJj2kdIiyFS9p/eEVn4IjWiPOpxykYXyM5SILeBlexjpEki+X5LcYpj
	 w8ECP29TuFNFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9090FCCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176101979358.31059.15206525704200393502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dada02cf27f2bf9a9cef6ef4987f2001e9838a58cd477aa04d56829ae9a029c0
Date: Tue, 21 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761019793
