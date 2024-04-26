Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585DD146016
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 14:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714143143; cv=none; b=EzDX/l7iBvsbu0fjy7qeOxOufpvJCWW09zwQJmKk4hhgYm4wgeWMppip8xCcqTWjkSY84VpJdY5CmzybKVKgUMlj4hexXLLbDyse8cRWshkKK8TNMWLZ7lmj6ubB+JoduaSAqL+UxZeUobdDqWkdths0kwMDy8EoK0KNOarRv7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714143143; c=relaxed/simple;
	bh=FnoCPduc/+lQKuC8vAqXAeNRCsI/HQTljaSn9C84v/w=;
	h=To:Subject:From:Message-Id:Date; b=kULtUxTeVUyBqq+TfgQV6L9LquRvkcp50X1WsjwdfCNPiiHwQOML2clA/vFtqNeAJdT1Gtiyg1uy0FGUrln7Z5DcF4dZfeVvO5E/Cn3XmiDhZ8nf8LIuZYcGR8sH3xOyCvfjWsO10yqKXvaSelHH4MgKZeuCZ6Pi1j0LgFAVms4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjCvT/b0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjCvT/b0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8716C116B1
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 14:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714143142;
	bh=FnoCPduc/+lQKuC8vAqXAeNRCsI/HQTljaSn9C84v/w=;
	h=To:Subject:From:Date:From;
	b=kjCvT/b0JFIOXK+OdIsQaxjXDApTQldMV8+z/FVwcoQGrvZCyU6KUhSlbW8vZIDo+
	 2BaK3XLQXKcOYJeO6kaT9i3Xhyw8kT74bYuS+kxHFu2zf3C7Fdb0RsMeinwNIEyIw6
	 BnE/Mh/9Zdoq4DykjxCCXE4JDKU7hbWaZkLslbsYZysTyCPHhxfgaKSoQQ6azWBlFV
	 jaM9YmPx9I73Wuz3zFzVM2Up22IoA42P3g78QAtxKi/UGqVDlUSEoQAxv2VenDyUtf
	 Oh4DFaL1tPKW/w0WdOkjRWb2BewB+KbyrEjeWRxAH2yHQOlpC7SyB0/cpZ40Hs0fC6
	 O3aV06m447zIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C364FC04FFE
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 14:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171414314278.4440.7441509863594425904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee3f176a895c673c7942afe290b6878671719d4d5226df3b05df962b16825638
Date: Fri, 26 Apr 2024 14:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714143142
