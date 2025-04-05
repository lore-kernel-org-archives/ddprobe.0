Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B17018DB02
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743879595; cv=none; b=X3vFXhPDGR9Mo5B+Sy83bn/lbB37w8LWxRHXyxKjCte9MV3g5TKx6gqqTy0UfNWnddx2xeCyLZiso8M5F6F+0erDK4+KAvhdxpIMjXYkU0gzwrVQ7XxS2Mr4zH1Y0Lk4ufyyKkjFm0MgtvShzrM4A4zNhB1DpDCadgFLXp9hIQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743879595; c=relaxed/simple;
	bh=9UHY1KXQiFUcGtRYxpbCBnmDAwwnHgaVFW7minrYVrI=;
	h=To:Subject:From:Message-Id:Date; b=fQ3+UGbkVhr6/vN0k4iw0+dMKh92t5SWFo9Wcbx7KG8dgi0ZL9aDobple7CeKRcFAgps/Awd361gnITFXx3QttwD8GzkwUJGzkXtI7TWb7/P3Uo5rCj0QunV4mqLOp2cZeZIn2yg4PBIwY+KYD8dFbd8mPYlpTAaLSOd5jYJjaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEm1G9Tq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEm1G9Tq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9516C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743879593;
	bh=9UHY1KXQiFUcGtRYxpbCBnmDAwwnHgaVFW7minrYVrI=;
	h=To:Subject:From:Date:From;
	b=BEm1G9TqjQ6TcaSHtQLSOmjKv2rWoqhfwwfNOa9iChqXEy8BFdsCXBWuVU75vWueF
	 QxDwmaKbrPy2OXVGKiCQ9X8+I/ugqJrUdvQ9tfcM90sAq1lDnIRYvVTj8e1fg5+oY1
	 ri2VQjyhUbJw9N6s03b7uGTLrgE98GYe6bfGZ6/bQTCFQkdolVWTfY8/WmA1AQcJL7
	 4dtXn4MaTy7K38RyCYf1+/6bPSyHtu1bbaywxH0+LKKyDWyYP2iRqfiL+YEYlBMReF
	 5Ll1ut9yvhO5B5jfvwgj5+xsVrcY1Sej23fgxgJj6AejpDwfE9YmuvjBtGwOnrVO4u
	 bBlIqaSXDCotw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3221C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174387959361.16333.37226075905171253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bf0da8628b1cad6938bcec4d041b57c7708f460f21e721bad80e5a3f9d23a8e
Date: Sat, 05 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743879593
