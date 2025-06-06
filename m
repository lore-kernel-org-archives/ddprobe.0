Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515101FAA
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749186594; cv=none; b=WRT3vnUkbw0OJnuYmWOQ2x3BByFjdurhbC2b7tRQIgbr45eTzcaXKroWYVhlNpJHy+aMGOs93NOng/G1/r+82nKVpQ62bsg/zvRmzJnPTXDBSE9NkkhOCVWoQ542oGdYW6ABdarjxWUvBwIvAu2LE6+KbRVht4gFWL8v4ALkMxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749186594; c=relaxed/simple;
	bh=tXHh6UAUSUvtRhz9p1ewUsHI8Qz7ExYmhdpcLF5bJKY=;
	h=To:Subject:From:Message-Id:Date; b=sGplI2pOh6JG81rm5RpVTClmiA6r/Ugo6JkGPVUGapVLvy4rPy/Xx4cDOSZ+RblQKV02km/jV7BHCYXlNqKEXViKVEp5wz0JClfQhD3ddYk+iM5cJWd1sbWnzazRQhOxY0gy0DyZkR/TbUnxGzuIf5Xd/K2ES5NoJLuTbqxJl0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1f7oGki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1f7oGki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8DFC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749186593;
	bh=tXHh6UAUSUvtRhz9p1ewUsHI8Qz7ExYmhdpcLF5bJKY=;
	h=To:Subject:From:Date:From;
	b=A1f7oGki9SrMYYbya0Mcru6LRgSTUo+mwVzboeLDuIsZx51tbyyAkfeDE09s4dExO
	 DZLCmsmkOhE69a8dV8lRkoFSs10tv7j0GRRAFkW0mRD02TLJRPmNjPYFF3sUaQAaUy
	 JsPxaiA+K0uZVizIHZHAffHpW8MSk8BMEpSjH14rxzYpi8Z+IajIkaqPyJk/5ITliD
	 rjgLSpt/bsm7MwAqkWM1VzioQ4qY992ONUY/vRaxFizcyZ0UQo3QS9EvYsppbEMoDu
	 cN31VtzfaOCy8ky1rnEwdsF8w0YrW3F0pIOxb3BWqVRXzL7WzvpTE/OkghJS6JFQDu
	 RlUiS8ImLDlhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C94EC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174918659360.13533.12840371507689690870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72489125eddfe0b382891287bf6b5cb52fc9a639abe466d99f8d30d84259d13c
Date: Fri, 06 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749186593
