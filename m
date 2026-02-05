Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176C633ADAC
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770332034; cv=none; b=iIRPptVUTg6m7FwpMVXZvzAn+fZeZ2hvMP+7YxyVp6nEXe9L4RPrfeZZ2Vgajx8umkC5i8pENzqEDk89DkpteVQSNdNil8e5v5ZoaYWTUMHegp8F7KZrXxbM4OkRlT5g7RfeACxFs4Ayonn3e38C3U0s/XQkOPZcDkPNnvCdK0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770332034; c=relaxed/simple;
	bh=0AQ01ROHixl/nOZ6hXGASn3pveFLTk/harongbEYZaM=;
	h=To:Subject:From:Message-Id:Date; b=obqC+/LlL18O2548jSgxi3DQhuXceaOF2ZwlKf5icCEbosO2vEsjovj3XpjXZ2UNBJKmjeZfsEekqWcbJ9tkvsKu4tQOV/h+Z1vLPdH3AoVHONfFiJ9zfiGI+h3NMvZdmQZxvem+osOAWP8f1YrBf/6g/m9Q00EHyUyCHb5Ud8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMYUu2JY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMYUu2JY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A468EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770332033;
	bh=0AQ01ROHixl/nOZ6hXGASn3pveFLTk/harongbEYZaM=;
	h=To:Subject:From:Date:From;
	b=tMYUu2JYllYATVeUL4nW3rJvlOyq0zjZYK+DlKklRoXBJzccQWw1aaEZW/nClFbk0
	 duC33P1McN1e2IDzEgXNa3LuiqBnOVeBVKxLF+iwDYZLQQ85tcezd2vsgsHqJ484Pd
	 k62xt1cpi5O3p+zwOtVZiovwcN+swwQNLn7N1bD1SscAyEnyPg/9lvTHVjjNNMPuZy
	 wC+1cxW40a6QxP0udPnQPQYqab3ZpQTjZKoapYRH9iyFwBdUFnOAOjMITdfz1hc/nb
	 WTV4TQM+H8WjwklBTD9qXh2qX1Jz917pdR4JZk9sNrk8N6n98smm5UlTbBKp8agFai
	 pERyn4V4k9RHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9101AECD9B1
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177033203358.24957.8438819035152460023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7de60c2011b7e40c05ccb8dcbc89499596dbf47e6fbdd8e5db1df9c842bf3b8b
Date: Thu, 05 Feb 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770332033
