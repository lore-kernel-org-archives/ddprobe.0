Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4268040875
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 06:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714198943; cv=none; b=OGr/14KifbMzIQKKEyBK3xqH09D1lk5fCWtK9qMxJdJqsUZZBXgBJhdWteshSZUxvTwr4mmwY9ZU5JE/ezHGSiuoUSAUposkMnXfdOiE57hyHPDqG1v2+DEn6acQWVvL64LwTGtozeM65OiwxXDH1I0wpqXWFyR1HhVdYy2pe7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714198943; c=relaxed/simple;
	bh=jbFMvgaxsHAM8W2kWjxYdCrHRqysut4fPWXmw79KjaQ=;
	h=To:Subject:From:Message-Id:Date; b=utYK06SyyxYzqh828gvNzS6X1MHlQZCz+P8K8wTFVZJPUnOwva1htNoI61iWqGp+9v+aAvz+1Drmtk/k8tqL0gm9Jq/8a+gsg101CYA5f8Kvs5Pjy1NZvECDfAvKk7PGe9+wXcyP6LFB2xOSrsJky7MvwxxblMPV6kq7q0Adlck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjMkZyWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjMkZyWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7EF8C32782
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 06:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714198942;
	bh=jbFMvgaxsHAM8W2kWjxYdCrHRqysut4fPWXmw79KjaQ=;
	h=To:Subject:From:Date:From;
	b=YjMkZyWgfem6JN6JOl/OxhYR+zqgyEsdSK5kcVp41lmd7Ovf4uAgj62/KdAlzT9rH
	 Bh+XSBD6NCB/oSCVwFcur6reP/ZFAb7UWC5ZUq+9TSGtTISyCPA/2/m8NZB0O49Ej5
	 5lVAwPL5STnjhPVGdRfgoG/UnfHDQMxD7fiYaXIwjaoAPovu8CcyoHnpcWHK9KIYJT
	 O4XNLMZLQR5VrozYq+MlsSjCNyzC6Q8HhWPV85HoJRaASq9jsTcGyC8V87zM0dpLf2
	 3zppsb2ktMpkCzDAO7p6t1M/GzCVCd8lIoAEft6D/9iLrXyd7N/hmBGND0VBvhpGHa
	 Bdph7WIctNVSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D4EC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 06:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171419894276.7675.9502231755915981879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17fc966f49bf34ce31d4616cc317de8dd41e1d5457870a96e6324fb97eae56a8
Date: Sat, 27 Apr 2024 06:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714198942
