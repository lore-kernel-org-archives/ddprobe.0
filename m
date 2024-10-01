Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8CB1C331E
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727789154; cv=none; b=Xsk7ypo89cBUx+nCcSgIRG3FSnxssVfuROHeFJmBYLY8OTV8xAgD+15X9I2ExG/DPuGuzZrweQTU6Y7/WoL2M8GxPcyWRHKFres3kaTiJnmD90aUJ5UEZHMJMaMmtskCqhR4YmVhtCCuPI4w1C2BFje/N3HwOY2W9R8tYgEy4zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727789154; c=relaxed/simple;
	bh=0WmrITMglRA4R20lSTL9M2mk/909yNT8MePmON+xDUc=;
	h=To:Subject:From:Message-Id:Date; b=B/LRwVcQeLk6srwfL335QE28fcleMjWzAr0TakJgPHgLJCi+71op82RPb37oeKL8u/eLDxBrZ/uSP7oRZugOOVDRTW3NOBYtfdWb9WaWbqsbHsmpb8pc0TnFyljhdoQwiiyVX/MYdD/EUS/MIrj6MgI7gj0W52z4xkA7HXIjWZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqKk11+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqKk11+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C1EC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727789153;
	bh=0WmrITMglRA4R20lSTL9M2mk/909yNT8MePmON+xDUc=;
	h=To:Subject:From:Date:From;
	b=WqKk11+XsQBjXkTJFvHRxugF8J1ZI8OVLgyArmtgYqfunj89I0xwGa0802i8ZT4QR
	 zch0NOqVgzd+21PqZcFk8IfYmWhpNzk065wqy4o9AzzNAl2MuOqt/8XKfHS3VuNB0z
	 lAPj5Q4eSkt5M3LGhIO514BGCl8rgO3+GVTBFrKkj98ZsjO9zZNUzQwaYSXFykno06
	 6FIvimYU5pPdKQhLj1yIacbopHmIeyXAAWD5f88MuuWRMmnZi3VoJE1v70szvMiHCa
	 mGCvkjgeqPKniw0hq0Hlpwa7FOx9CKaKCBd6JsQ+0mVBIxl7wqbygLEFbwj+cWK9Vx
	 UTWnr6/ECikAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09D4CEB2D0
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172778915369.21607.8965647825789746260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f3f939ae29562556971fb17fe68813f8e835b0a0902e1f80282a5e65eabda28
Date: Tue, 01 Oct 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727789153
