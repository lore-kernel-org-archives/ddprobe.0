Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179661991B6
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750705194; cv=none; b=qtJBsDbcKi48QO4L1ywvwTgNTv5wakvE4dcBPMamvMnmKBkWddbrkRrKjyu7hIL/9plvX7E8SEFFK9FyQGJXomJquf0rtf/3oHEBhQ9tKG8jtbN4UYiv4E2V12F0PtGvLp98SZnVEi3HX6hmJw5K/lPJ56xkt/0O99u3U603dEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750705194; c=relaxed/simple;
	bh=0SsyKBbuoFL1mz3VUOdtUjweqX7RCK2mikE9iz1FSyE=;
	h=To:Subject:From:Message-Id:Date; b=Zn6XeTvTf2Y8DhOnEpcq0AIdG7ZZF/vHqFSfnBhM/hk+MNL4lSe3O67aC1DxOenCiOESpZwpP90e8i42K34OagJiJQfEm1d4/C+qgC6XMW5oWpK8ysw3xRxihTCI2xcvQnEMoT640LRuAwEI3CFUY86IEKKeJMIG9OL75LolRz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3M0aMMr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3M0aMMr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E290C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750705193;
	bh=0SsyKBbuoFL1mz3VUOdtUjweqX7RCK2mikE9iz1FSyE=;
	h=To:Subject:From:Date:From;
	b=p3M0aMMrmI8ZDtkK7acTiIv7lTSF+tUnFKZ+g7ME3n3o5lNP3EJvKbUugd93/Zy9p
	 EMXTqJtviHZ1gK1y19+jsnWxdxatcvQ0gDOJYnpBGocDsCY9FZwWayevoN7WDmx4UR
	 hYhLPzo7P+wc1scYF3a6e4OEG7zZiGUOY2IlFsMrRFLJBVu6AL1BbsAL0xf6dlPnfV
	 R5pfVfeC1LdmLLbz0HvlFEuaxnjMbxKmWuXosk2wFEmnx256ujJpipwGWAo3ypEBGz
	 JjsOrYxxpUDUFOLSn+h6ogbr0T2ifisr6nBjH7SAT9l9OELF0IDKVIrphbV3icdzDy
	 z7rj3GYF2RwOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90215C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175070519358.9698.16749929263785830194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1bca956cebca8cd90c55399030db4fdd2e3537a3eea85741eafb0569a97bf7
Date: Mon, 23 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750705193
