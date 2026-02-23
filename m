Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E01D3EBF0F
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771830894; cv=none; b=sEe6y28m1WVvUAfUyActH+UTmu3kFHZlfEjg6KtwxjsUeXFoj4nSmXUedlqP4h3qvh58hA6yFrTgUjuzQH9+vCy1CDEeRLjOzIo0dxoKiCw6eolBe2sQJd+Zk5jrxiW/P+PyMtpJBenheWQj9JLqnEiPw3Tbt5D/9VHg9R3R5tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771830894; c=relaxed/simple;
	bh=1sF/cTs88F9oO2HU39rGVakEkVu0+zGAXtrVVj42gOA=;
	h=To:Subject:From:Message-Id:Date; b=TPCQolxV3/A00yTEHGpZDmRdqGuEN/r5OSVES+8TdLZ6LabGhxJ1grqZlHxUkH1fE3YlTmlchzPEP5px2UqetPsPkGgjZqtDRgiQjdy+r4A6+9Gj0cIbInwY7yiuK5Mot4SJMk/APQLFv/ywAwP+OrJr1klKFYueDEOB27MGfPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GtVJvCzw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtVJvCzw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6286C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771830893;
	bh=1sF/cTs88F9oO2HU39rGVakEkVu0+zGAXtrVVj42gOA=;
	h=To:Subject:From:Date:From;
	b=GtVJvCzwG2PYG0U2hO3HSQu8mp6Ov/RMUoSBjlsL0A5R6pI7NW8FNuJ8bH58mMql1
	 SDUbPsq6l/GPOfjSBFhMuLIPx6CykLjYadJO8t3reAY+0FlgA15fsY/OHIlqohRuiZ
	 WpQ/oV1H6km1s0OW4fUG/jfgg2DbIlLhtOhg9VW306efoqYkUbt7WlwcK7Sifjnmvv
	 H4ScnXnA/fUH/KS29HDLk3VvYkcnacBjrdWWhOfsgH68DhnZP551pNJzorMypPgCM1
	 T+QB3yJz7ZI+4xmw4kxeV7DZiuJ3fTPnXlE7BOzMNBupqWCJp8kb7WAv87Ah+VsHq/
	 iehUaWE8ByfoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A2BE98DF0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177183089358.9370.6820015768104989578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb659201e6b0bd9cedf945a44f383d5998f6bec08070b4ff74f67e69fa8882f
Date: Mon, 23 Feb 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771830893
