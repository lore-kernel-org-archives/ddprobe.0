Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCFF3C81A9
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 08:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780389874; cv=none; b=aWBOqwgIQoEEt/MtSb2HF6WpjRvx4qCgnWoBZXNWhPNCwY5XvBIE1vIu6Aq9697oisaOvBwsMLFu4A3ls1uyXW8ULaGyAfJRui5AdglosDc8cLSZhcJhOnkxr0y0ZfaI/boS8M5rWzn3znKNwRQ9jn4r/Kf1O5D0+n2unj46F80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780389874; c=relaxed/simple;
	bh=UQGUH2/+gVtyPXAwZkIDMUEn7fVIYYAHqbwtJO0rh1Q=;
	h=To:Subject:From:Message-Id:Date; b=R5yx99gLoWkVsg3g136rqtQj3gQyxDtHdfC3gnbbmpDXdVk0oi2/7GeJBU4mBoOn7gT9cY2HHPDVdudQntrqDJ0WudM/vhA2UnspVpXLFhE5z/2I5TBdy+9zlBw+eiJyJEbgNwVF0vb8nvs9d9dTa5ouCTAjF4BfKUj4Hjz3I4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kh7Y9iZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kh7Y9iZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1505C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 08:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780389873;
	bh=UQGUH2/+gVtyPXAwZkIDMUEn7fVIYYAHqbwtJO0rh1Q=;
	h=To:Subject:From:Date:From;
	b=Kh7Y9iZGqG2EhHL4UkoeTPGwaZM4sYxBPqFXbe81MD7St5RZSTt+/BJ4qLben1k9w
	 zcAr6gN09AohD8Eqg4GKnApCYvC0zUm42vk0QuuMVtopyjIBudZjD8eEAkpo1w1KjL
	 RdQbKQqngJD5J6lshhBaSdQDq8Uc1rCgOWcGUiIPXuJiqSArlQJ89DsTPs2FB3BWce
	 30z98aEA9jjZf8G9DM+SCvhemoBdUSj6TiP0hs4gIoSwnwOE6RbG8SayrE+eUrVAMv
	 AFlFgzB/y/gv5+2RwgLtQ8SGZaH3pKFyFK0L9Rz3JY8Y3lfixApi3tdXjw6MK/SKi+
	 AICVG08laWMcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9062CD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 08:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178038987368.21242.11493342326399712881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d55537c125011c741bd863f984a2445353b255252d1a7bf9c8715a9eaeade6
Date: Tue, 02 Jun 2026 08:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780389873
