Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BA5189BAC
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736396754; cv=none; b=lZCNfMObxHYuEzfCYlWyfFKpKp5zkFurbzW3eAsQh9PNd3611RuIVMkdd6uWrj3lC1tRrGnM/5Z6OHjW/hoHxRaUSB9C1F+r+/InvDa8Gwzuw1RM1fjk1jA8XRhlI1vXAlzso+8hZfcKZYmsi43Ub8cWY2zF9gKZP2kPqnSAhNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736396754; c=relaxed/simple;
	bh=rDkiw0lxPlrzvlF8dkfNMgPNpdlapiyP9j/dv7wGzok=;
	h=To:Subject:From:Message-Id:Date; b=oSEfOBZ007Uuwx6p6YjVoOZ2vM33bJTPp8zRMpAhMaVNShSWb9nxO0+49CySG+DGBB7niPxREFA3iEyPWShiWI2IJdYRjjr9aDfKUPP3RJTZERJTLQKJ65KI79iKVuwoXn/JX1yLJNvzn9LHjgRpTbgWwKFRwjuQ6DIMkXBDdAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=En0XHzjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="En0XHzjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E38C4CEE9
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736396753;
	bh=rDkiw0lxPlrzvlF8dkfNMgPNpdlapiyP9j/dv7wGzok=;
	h=To:Subject:From:Date:From;
	b=En0XHzjyJtcbiNXlemrEfQAbJ51TcBwqFVO9NJGCxs/86p8e38sdSMZi5OTlA16ae
	 CCLJ8N4YLjc8ZzXK1D3Glhx+zGD0utiOp+qVZCgheLA8DzpSJvJ07mH9WaHrpeGDAR
	 6RMIe8BuM6oCvEL9Q+IIj3Va1wPZ+hCBASCVCZKGo5Z8JsKTiBJEkgscFWx+NYkIrF
	 3JhQTljEbJ7PKCrUiiCg8hDcQvSrVA4Bm0cknjV0FO65ZLyqkM1w5Ytf72rTbbFEu5
	 kd1Dy0kd4eIJ0b/ZSpZymlr20GE9aqYsQGmLSBfpkOIxJYiPWgaRk3yFZMDqMzcWQr
	 TeiqC0xUAlS3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B166E7719A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173639675362.9913.2893616364128730918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0acffe8c35c49a48f723ef0595043b38cd2572f3d01ba6e73e414f45fd98e66b
Date: Thu, 09 Jan 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736396753
