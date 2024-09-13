Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276E647A73
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726245954; cv=none; b=GEGYBXWzNkGm4yJgtMv7cIlWZS2K1QgjzY1GjYeS4DV5q15MIVT/YuuMg0thG/nyk0qHb/WgY9FWTbJIXvOtPc9CUyiTTNOLQAHFcRX/U7AS3wpmw9jMzgKugY7zb3fNCGoDr76IBKNcZ1n35wrHp71Y5OESL+jAXztmF30Ns7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726245954; c=relaxed/simple;
	bh=WWwRAqGRZoxP3key/hhw2ccDkt3jWZ29oLZdUVoPqgo=;
	h=To:Subject:From:Message-Id:Date; b=dA+tQt+lkFhrQ2scWZPYpzMKip/fOYvf3RaekhYJRIJxbd3OAlskig1RCNNfjK5vEbcddn4bkK34fqrNHPpbgKtN6J0mEWP+b8egGU7kJIJ8PNzCnr0RxRIMFxb8klacOEmSAWoYzhAqew0M+I2iL4jepr8qyKKh2sIuXxV4Y9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KsYrvEHw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KsYrvEHw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF12DC4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726245953;
	bh=WWwRAqGRZoxP3key/hhw2ccDkt3jWZ29oLZdUVoPqgo=;
	h=To:Subject:From:Date:From;
	b=KsYrvEHwWvm1FE6wp9k7QFTa0PS6dfyQyQq8PjN2qOXjGUMP8Gz+TLcOn2dThOML6
	 UhSt/Om6t+ecRgB1S4smKdRe5Vnhhc6z6BUIi1hJoml85VOONq1QgByzXwddEoo2kL
	 HLMfUsNSD00RCYstGLeCJteKlO2BpfPNGxuGymuHZ5Rmzc6LIaLH43gDvPoIM+A8uD
	 qWDDzu8T8YoWbIWQT/H/gWgcANYbinH54uWiQv839vteH6M1lB1+TGsYQI3VW9G1ai
	 sGMRmqvBroT5E7ith7qHpYh/exUCXcosz0X7R3qYkQSWsul43cplk7kxLxlZTAC7wb
	 jUeqQxfF8aRjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992D4FC6160
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172624595360.23042.17749785865771314932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14f9bbf45ab6be3d408d172da1215438fc6b34315c748a48fdd1bda5d43ffce2
Date: Fri, 13 Sep 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726245953
