Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1245FEED
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722486954; cv=none; b=iHUw/KttAkbunHKGxRHLcCLrPGa4nBfNRH6V+MM+REOBWUjKQzxzTUbspJJ47fbKpfsBzanPyDXgE1/oJWe+jyfHbqH8cIa6HwBmQ1z2BTusNaCX20Yi3VeSmZvFlyresToDIw4cC9eD7xN+WLaeupU999YJ/DH/8uL5OGK2QF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722486954; c=relaxed/simple;
	bh=Lf+FhU4h6Zw8eEOFn/3uKFbHirwfTtGwp70gsv8mklc=;
	h=To:Subject:From:Message-Id:Date; b=YUpS6R/N4EpaDA4gL40yclD7Ueq7n5q8xTIXertTY7us1+s7JiukKH7VRUZvzroxUKKZpdrv0hNb5KkB4FpiWSs89KrdAG3P4dDCWMAAZk11BdddQuilKcxDZdF9wciG9ietSIi3h+cInWSj5/dKyF3KkX9YSHHl//YQGNJpWBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BcnSoFsC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BcnSoFsC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA35C4AF09
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722486953;
	bh=Lf+FhU4h6Zw8eEOFn/3uKFbHirwfTtGwp70gsv8mklc=;
	h=To:Subject:From:Date:From;
	b=BcnSoFsCZEflqO6Msv2rNbd0bWPGyU20dSzJ7crkwVc6O5tM2LOJ8vsWY1qNQWeWd
	 nees2tT/aEKg7vxkCFOyfB4akEgIbzKS7dgNwfw7FWgzKTPaVTb72RYRfSPGUcIzFh
	 EMBgs7mvZZOiLKgBbPnpJHKg2RuDUXiwIcJOaVCUyFIUhtx17jxWd3a+0p7rWIk+8c
	 2XdsGSc/eX3XGV4ZP/PLlfRq2eLQ0CXzVQAQv0h+sERDlzi5u/YxkiUwJkSDqLW7vC
	 W2hZZOjqe71lz+UDVXbqkIa9zwAUlJ4MnwiIHwrPkJ1tfSYJkDWFl4LvS1IJq/jBbe
	 juPtmer3WtkOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D70C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172248695361.32601.8944446085192483611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaac2bc3eed8856f345752bcb7059506c44801aab7a867e9512d5548a9e7313e
Date: Thu, 01 Aug 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722486953
