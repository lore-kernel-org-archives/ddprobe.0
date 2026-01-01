Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6AA2C11CA
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767264834; cv=none; b=R2KRZfTGXvTrduKa58aKYMnIPu+496zKl/2+EZIsRN8Rr3PksALVCKIeARtVddpOjIdXXzam4oSD58yA32nNeQLXBAcTrmLUtAyQfBeBN5KSlGPRICHHT+BqJlGG17WJSj62EA8C7zmqfK29oj1DjOE1tK/1kbobhCaIonLpuNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767264834; c=relaxed/simple;
	bh=gkruxbp57mqfpmfqWT+bZGR2mSWIXZ+zEVWzVW71B8c=;
	h=To:Subject:From:Message-Id:Date; b=dGxAdlhz0NnmuzmNUyqTUc+aPHTU+PWjhcK0nOR2Bpzy1Ct3vzjmoEM7hhM/fqCt1ViSfm9SoH6q52MqaH+y6i5MgK9O7YbAHmiIeQKI90X/jZkpUNsBKNZK4d30ALyn6qDy6gV6NnMMIOZWax3pVnQj3rIx3iA06Xiej2AVf5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOAYEPe/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOAYEPe/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7071C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767264833;
	bh=gkruxbp57mqfpmfqWT+bZGR2mSWIXZ+zEVWzVW71B8c=;
	h=To:Subject:From:Date:From;
	b=cOAYEPe/+Jp/0kf98LET5qf0HxR8iO1QF5nP6UAx9ZVRYspKNG29b5pYudTrSQNfa
	 rsMZt/bVWLXcEnJCE4HrpeZzx03H7EJHaR2wINAV6fGqBUql80y9cJ3eFCeNvoSVdD
	 AQq2VWyJfBk8E0NxKEm7p9UkpYxIzYJy+V6hJssPGyhdRuR57vraf1mO7FZyUuB7RU
	 EtjQb6y6XRQdHZgLCgehQFVhcmZenDQ4V8TNxEmshfULYoQuM1JaG1ek7BWO/rrk1j
	 96+kU5HR7sHMk9w7sVRqZyWJ/FHZRZbLBKmo08ZHsC58vDPXLtp9uJ+hPjZr0bwm/5
	 CdsWPqzXffaaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926A4EE57C5
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176726483357.14570.190013351823126688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5708213e2c9b3081e4c93b78b1f4163481049281ead337e1e22232dae7a0b02d
Date: Thu, 01 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767264833
