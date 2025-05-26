Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2263516419
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748287194; cv=none; b=uexpMKCBiXcftleXYsBI3iPG+F1U1ZK7XBKeqI8cp8pXDZfk41qmtSMI+7kPeGkRiXd4U6JPaOvy5lJbOF9pn1SSkOi/k+DOXBfXNsrslze2OVTqpgmowfEfqTmSOIACuNzZW7SZKNgnWA9QKunlVCesmx6ruFG0MP5zvGsnTsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748287194; c=relaxed/simple;
	bh=uUk8SqNpKlI+zCPzS4Qez7lOtxwQaDa5R3gEhs2qG0U=;
	h=To:Subject:From:Message-Id:Date; b=XaERZdWbKNEeQ7xI1rNbYVdtY/8VrrV2opBNUoqUfP1e/Q+P86/ddpAPsLUa8L6vtXOPO1k4fSXZ3ifZ3msEhl9NEE7DvySaK19yZDgGkCxtk3Am/Yb6+IG7SZq3SNbOiNzDLRsixB4P6sMCsewiIDIjkoDFS0dV8+fwc/Lrn5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ki1rEYRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ki1rEYRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E070C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748287193;
	bh=uUk8SqNpKlI+zCPzS4Qez7lOtxwQaDa5R3gEhs2qG0U=;
	h=To:Subject:From:Date:From;
	b=ki1rEYRa38P7Qhyj8jTDv6QoCQGgb9rAScv+TW0SfOeRqaxJdoXK6bPmJzf9xszKh
	 Mz5ILREyBTaBgntZ+rQdvHQvhIR+tCIJrPDfDvqSRaunn6hh+LjNsgRTfZ9O+gwudX
	 35DjpDtQJyi7hUC5dRc4m7hvL9OPg0wrVZIkzPnoeXzmnub9mWJTMgMfcvw3766jFc
	 baT2VUYmimck9TNoHdhDNqynDzTidTDs97Lc+yAzBAmDwQftakOnM2ZAFXZIhLOZvh
	 UIAeYOSAh4CTuE5fZCtIN1QTk9llvipIUYPogrS3/JSCh7Hn9FJciEhxhpyKo2/4iR
	 ovYuXbU/kmLoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE8DC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174828719357.12741.18306529061108494804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 879957fb850408028e60dfff4d81da2a6b879b4ed4ace11fe4aa65884fe7153b
Date: Mon, 26 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748287193
