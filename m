Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDDD137C20
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706213297; cv=none; b=VwYM9vLCRPWD2lb0l4k8Z6CQpk6K0GWaCaiHJxjmPgilOjhuGSuQJPi1tuQhdiCJkf8zvwnFL/kBp/HIvvNK4bfaM7pijACS4L3TgyxQKU5g7HXkd+Ou+U0b+yYEwYJbqvCMIrZMY1LQYJLfYwLEjN6YUpxqq5VThrUBwuN+e3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706213297; c=relaxed/simple;
	bh=HtHZrjzrb6NjMY+WawnJJlYrkJs5msehMyN62k0azws=;
	h=To:Subject:From:Message-Id:Date; b=uYdYNMthqscc5P6RXd330Ot+lfZ369mVd7/AWURWA8aeN9nVfpiJVfkzEq3JwPrgIBBuysTU3Uq5RJLy5MyTvpibDZL+LXsIlD5sZicCOZQXjlUxTQGeg5CIDrjwEleTsmVCzzcR6F5okwlEseo4fQTjbXWbLykL3huoBMAYJMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBCLlWLT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBCLlWLT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B0DEC433C7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706213296;
	bh=HtHZrjzrb6NjMY+WawnJJlYrkJs5msehMyN62k0azws=;
	h=To:Subject:From:Date:From;
	b=NBCLlWLTy/YolBKd23/j7+TVCZMTbjRwFygsM8mpIPwDRGJARtsR7wwBu5lIEflmc
	 bXzkGC6jQvEkEixzuEPm9k8/VDPJXql6PAEmhC3sq5rGT3XV09wMxBMzYkCiCdFNOu
	 usnJv8AdayoD+vqjLNd/SRjgx1EeAejuKlhFz6SBGNdYZZWPplNa2W0+VXqrNi0H7j
	 3Oz8U1owhbSxS09KgW7v1BpPxmUMwy2fVZMnEnAhGfh2+IBUVmMHfFZN5Ol2XIZ4tg
	 3amtZoS1op0aWVjetEUYdfdk01hp/q+F6QEj8hHaRflHZ8z7wJlagT4nqYGdkuErQ2
	 IBvEABL0P2E8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63DADC47422
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170621329639.24148.711185664484490624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30a9610b18538330f050be85444b798e30eb5da3340ac1548a0dc2dfc04868c2
Date: Thu, 25 Jan 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706213296
