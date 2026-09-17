Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B818F370D70
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789641634; cv=none; b=OYRFP6JFHb8XRWjIEk87miK79KZeWS+QwWSFgd5oBUHpbgoLPjmhyO9y8C5aE63qKRUsP3kBTbVj/weheTPJhnDzRZ2m+x62A7xiRiii70TSn3ddEqkLis0fxFHQTMRWQDmw+gb1D5aGYCl/bcFDRItNDXwFr0X+3oiVP3MiSZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789641634; c=relaxed/simple;
	bh=IQWZi0cLLWGgDwByfzItBoKk/6IS6x66ezeCaLoeIWg=;
	h=To:Subject:From:Message-Id:Date; b=j5VkYdw/nrhO9X0q1KYz0YCDrlj9j9fMlFPavZKzLf9v0oH+pJjt19xDlQMZ4e0/g/HQeAyn8DnzSbI5wvsEtJS/8+JMQaHclxPwucM2j19lXuaKDdoSiHP9yMXZamq5A19bKJhB/LHCdUub8jz9VVLtsseKFXoLHvC3gT602Ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/4ZoIXb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/4ZoIXb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4910C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789641633;
	bh=IQWZi0cLLWGgDwByfzItBoKk/6IS6x66ezeCaLoeIWg=;
	h=To:Subject:From:Date:From;
	b=o/4ZoIXbKyIw7KnMNs3ODWLAYR6pGH3ZfLAgmTmC9b1nyxXqGPa76NEK6D327XV1d
	 q04sdfFY7ceoNBEzfdHJwvnhLCmy0oPBia1SBdhYRZVSm+A5aY30RcDsySGVSK5QwV
	 MQA+eyxsSc8FxxZoCSwBihEJIo4BcMSZiH/JJi4KTxfz7+n+W0aucJGa8gECwnXwE1
	 7oc9f/MNRLt1wzx4Z4+aU+GAgeTrt7AarzN1biQztcmmSzpe4y3yTPrI6LKSfpdgWq
	 Y8fOrizYsTcKI+olFCGrxKUeiMMgKfSQdiUoMvMaDmvcbazlVWglPBiiyuoXA6Avd9
	 u+gmxNinMYl6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC07AC982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178964163374.14639.9362680725429277870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99519a4d2c8d4c2b9d64aaf8ab093b61d8d2dd3dea9c073e7ffb1b5cf539aef2
Date: Thu, 17 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789641633
