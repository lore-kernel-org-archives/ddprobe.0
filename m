Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF2928725F
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771159494; cv=none; b=l4HrBImKoxKGLoNgyPxJINDbOarvv6IwSgfvHrdPD6fcaqWz7Uv7SJoLqsPTIJvYJHFPoHBgnOxG1nQK+gfx0kMhJNu8fVMNFoUP7/Xyv+xy/E8qjUzjlb35ASRqAiFKbdGUtie8J4pflhu9bYSe7ssr/T9UzO5c6aHBnD+gmzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771159494; c=relaxed/simple;
	bh=5hX9tJloFb41v5thWTn+D6IDHS8WhWYr/7i0WTKWDIo=;
	h=To:Subject:From:Message-Id:Date; b=AdFF1VTpGj2W+wUTAJLcZXPingBEqmkT1OWzDl7d7Iy8R5345Ous7dfoaB9YGpRIbk+KhSJH9nYx49T7GXCKGewNZ3afeQvi7KJWA/6c+fAi2ukue8A6wBFlEDN30VjMPL7kAXdkgSiU3eik47xjI4BFbtXCHnfyCYSYh/Z4K3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYV4YCgH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYV4YCgH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF85CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771159493;
	bh=5hX9tJloFb41v5thWTn+D6IDHS8WhWYr/7i0WTKWDIo=;
	h=To:Subject:From:Date:From;
	b=DYV4YCgHvw9+uZwEn9vFH0yISu8/STZ6NusOSNBRBQtDI8mPsGvMlxDQYNsx3DIfy
	 734N2OJlLzNdcTx22RPhcqCSs68miCxjuiGXzqgT8t/VbOhyWklY/MDisdmsh5Qeyo
	 khcJkYL8Nm8YE2JrmtGx1+URWyqjZHRw7KS3FyZw5yK2To5tnTxQuMZmhBTQV+9WXC
	 /FOW/SeoTp0Ta7xlTluw3kSHxOtS5L8vgnKIG9xkS+wpG2MEY5qFZQ3fEWxyKsuV+7
	 1+yPYNof3KibZMzTrYw0xO7kaKTcmcp5TQTeAzpjxhlJznEaCOelSCGV/fczXsEbtr
	 X701L1O/qgQcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F0EEF584C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177115949360.9336.13937392924348662262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f5f81cbd9bde2a30819973ef7bf4dd949d3496749dfc2ee5a22b770ce113e5
Date: Sun, 15 Feb 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771159493
