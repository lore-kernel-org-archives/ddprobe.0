Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C61823D2B1
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791697834; cv=none; b=QHoyOt397j3p06ID+taafI89G6sCtVe+zIbHImQpOz3DDrdkJ5nK5oOJS4z5HR0SYCS8HAgwlnk6RUIWRFjP3XarrPMkxVy7D/WJn5l4G6Hw5mII7OBBrKawVlnTV+FQL6Ljs+umq2fppauKVmcODrsLyezq8z2h8PDX4SNhkhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791697834; c=relaxed/simple;
	bh=BXbXRe7FUlzzT+oGUBBkAmKCxsgUKhDJ7/vvadzJad0=;
	h=To:Subject:From:Message-Id:Date; b=hCZ9/c4I/qu9QyRiNAB3mCI11EwudfpgvwnBk4WxwEdFMonGrJkIAFpWvYauMivWCnTB+wyqNgIUjyjQuaTE+BQPTt4S7rUBnIx4739hnb+5LZv6vyOGo51hzpD71YTFUxfeXoo3rvVi25hagRc7rOuxJDvk4t+kult/olfBFY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPdm0WPD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPdm0WPD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D366EC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791697833;
	bh=BXbXRe7FUlzzT+oGUBBkAmKCxsgUKhDJ7/vvadzJad0=;
	h=To:Subject:From:Date:From;
	b=vPdm0WPDZvkiqeX/jb9DoP3CC1QsgkqNi4bilrbMF7q5/3rNwytwJA6XgrUoxQtll
	 kmLkAUWTqG2tm0PRAwHbbRNcTSkWehDc+Vz1YzhyXE7Y5KTri/8DaeAS1hyr00MNAO
	 jI8SQgEwP3Ayp8GG8ZmOUf6SJOgJrHiPg6BgJ3aguBmR8NS5ZstBYBLMvGLiFGnFWR
	 JJg3yHbcv+F6Og03lZujBrp30P4O+YYWLRxM/H2NSAEbQ4x8aivlcW/UsIyS1h6gWu
	 fTIOdr8getOzCPY1WmokSVFnparb2BTPhOST0zEf9jdbGfAYenI5nxYxxCsrwNl0dh
	 V/mSjcDZMnLGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3C9CA9EC9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179169783368.6797.15259873661716212774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0402734a20640672907a944b4f5f2d8ec19636d6ab1aa666efa598370c03eeeb
Date: Sun, 11 Oct 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791697833
