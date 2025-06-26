Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3515F20013A
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750924194; cv=none; b=eXeNwTzWp4BadIjSSFmex6bZKMJmztDw0Cef3CQXZUK0tmodvxk+UuTel6sWy6IrJjN11IwXcCV2R90fJEP365C9lgBZ/5t6f8d4TKFHV7I/X1pa0zNBf47ymTKaYYpwzcIRBvtz0LYtfEpknS2fonuUTqRGY9mbmbLoIeIJ6lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750924194; c=relaxed/simple;
	bh=x89Ec+aFkGTj+DJr2H6EqY6xQwxPChJBpa8eeoV4Li0=;
	h=To:Subject:From:Message-Id:Date; b=WONRQwoHd1cjO4Aj3bz15tum3V+NyngI5FM75DIL1+SFafpB8NOjUS6D5TwrIt8RY+1FCiXCb9j7nFOzdNwfblIlX4C5+cq45ZpbG3HjnvhMl7tvAgUriu4pEkS3IlqhwKs4d6gHIKvwub43au1gNsZIx49zPXJYOuYMS33wD+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hsRCdMFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hsRCdMFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45FEC4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750924193;
	bh=x89Ec+aFkGTj+DJr2H6EqY6xQwxPChJBpa8eeoV4Li0=;
	h=To:Subject:From:Date:From;
	b=hsRCdMFqH2DMVgTQjd2wDxI0tcz5NAbtXwm9prAAqXcZ3ZbLhY7/9Tq29AhXLzYmT
	 YlOBahyyt4qbyzeCihZ9wDugszXyzKcKksCU38G6Uw34DxXI9hUejSom9wsw8qsJXQ
	 B+kxKZ625Sk79/YkD6AtKy5m/560vO6BapUOZLC/J5WjeIivqgTu7swoy9+bW74RGH
	 KCWINAb/X+g3uRWua57NWFOg84fjCSHYckldQfeU8qUQNZMMdRW+5SxO4vkHgMSMFN
	 nWbQIZmedEIYKWd0oZw+bab1wcFn8I3N1fWlD/os8HPkWI698qhpT2lbfKb9dxAbzd
	 Yyn8/Vkm2KAfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9041EC77B7F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175092419358.5398.5738951124536506035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f811f000670401834d5c7ebb43a2c6ecaa12b9855a675ad3ffd0ceea72dc821f
Date: Thu, 26 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750924193
