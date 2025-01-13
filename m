Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447BC235C14
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736763354; cv=none; b=nrJal6cVGCIWrthklraC3OqBCqrH+FMIilaRljEXqO4mzzG/Q9SZaI23BvYeKQ6yd4uoJXuSZ1IFQifR+tiOAZTXrOAr9ujAoWxzHY/NEYc+eKK45jXEudPyyTY2zPN3Obn39diLCPbsv5+B+9tPH16H72HDAQRhMbSPSeg5S5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736763354; c=relaxed/simple;
	bh=9d1tUi3vql0yaYAnuDWz+yrgNIcOJVBlRNrpeZa3oUo=;
	h=To:Subject:From:Message-Id:Date; b=if8+FfiGu8eNyl5YTsw7efc6Zw9uDOXZ5+uqxvR//CTOg6z4ouw/dN4SzonRwh4Xo9VQwOOBbyf5lp7SddG/kKirVvNzr2hkfdIsipj3/jw7E9X7DF6R5LleqFIb1lfrmZsm9+m5ULCtNMVTnnVPXJkzuiw1j9MazCrbiRWuFHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZEohrgd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZEohrgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37AEC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736763353;
	bh=9d1tUi3vql0yaYAnuDWz+yrgNIcOJVBlRNrpeZa3oUo=;
	h=To:Subject:From:Date:From;
	b=cZEohrgdix/ilnI3/ef5ii6mrt+DZX5yjCi9GZ+thhTo/5xc9qwSYTecxtCn0+MXE
	 L60ecTRijNj3FIQ8OkJZBlPnNt8R0jHJ2lorWZTYlQgTC/+JJYbJhVfnPe1GVDHwd5
	 Al1BuOW0CdyEdyD5zSxx4wwgsikoe+AVlUQaN/z0+sy8T+fPBwOL/XgVz4iPgV8pd2
	 Z5PR+20bV4OCzfW7TnGzOIhmEV0WEgCW+jnxFUjNCF0S2vpgE1dVM1h/YqpE446/Jy
	 +5ROiKkCYglR21Ihen3htjTyEXU8+CJiTD9Dukaqd5Hhd/CFuPLpdO2/QyTXMY0ZL5
	 DXd9BuCm9rZag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1D1E7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173676335361.13676.9920389198858873765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cdb7ceee1757229f4aa5a16372161b9b052748850a877f3d0f0dba68fd6a077
Date: Mon, 13 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736763353
