Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC0F23C8A0
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770420834; cv=none; b=g0l/WxcBwZ6Fks5d5Q1hQWPrAN9tb1Cvdfno0tCd4J1f5ulhjqRALroupbufSVrD3TSGzsw1CfUp4h8HpchjEfznZWGKyx2Dq75SPjs2IPR18IcQ/6slChUsYr662D1+5ciBnVlwN0OGblYupHk7wuMvc7TsvWNbUfnIncMHwBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770420834; c=relaxed/simple;
	bh=I8UE+K//SGJ6vTIUWlHsfh+DgJBYBPmmqxfVMzCnio4=;
	h=To:Subject:From:Message-Id:Date; b=TlMGxGPJxm4J1TfIOmx61WxtSDmXF5YQ3+VyTolZ9wrM7/95gIeyMlskVO6AJpqtYd75GZ/RipNoVyUlC6y6DeB5m4lJPpvnFdOXEp+YuOy1gF1gS6mC6Biuyx0zw7yiUklQ5hKlKF+q3XGw5lIz0aj8iWyylhLEyc51gRSJEv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QywC5f2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QywC5f2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20B6C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770420833;
	bh=I8UE+K//SGJ6vTIUWlHsfh+DgJBYBPmmqxfVMzCnio4=;
	h=To:Subject:From:Date:From;
	b=QywC5f2L8//3lnqF5ESUASyVZ50bQm4HnC8Hvl3NwSfZ4k4R5U5sGVBWGUVpW2G1S
	 BWeox8gUrixf7LQFMC6cVbiHRRqqhIeQ/s41KTnpa50QoBBa0L0W2Z4RFSmxce7vL4
	 crPllCrdAizEUWXe8iBxang6hmkI7kRvZ5Xl+q82At5EhS7P0nZ6GAWDTsNipz+CUw
	 8tQJzYvhdP4DDWCOKFe/AOMjfqrOO0ZIvfGZOVoFIz037r84g8vldfis2Qj/7KGc8e
	 uDbeXi8vPiTj0CiQwuHPC4vJ3NVd31Ny83Rh5g0Cdvoe/8PS0VYOl+8b2ZO3vQmWVd
	 MSPXzR09MunaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDE0EE6B66
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177042083360.31538.10509871062249032873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba9f32ec4dcd58e60bb1a2386265bacdb4458beb6558807843b6b55ab8a64656
Date: Fri, 06 Feb 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770420833
