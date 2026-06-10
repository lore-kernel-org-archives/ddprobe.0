Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2E9385D92
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 07:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781076334; cv=none; b=Z42JSc8igoL8bIyW/Aofbs1UJp54NqzHMfXqFaq9TYR7Ciah612w0EE9bzWDoEemlvdxe6Ue7FmLBUdjJXYaZHc0jGby/u9YI3f59w2oO8wOh1uDVfmvjoCIKzOaIhG4FRN2cy0Pw1/rRhQ3OLSq+aqpd+mgm6FE27ZnRasNTI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781076334; c=relaxed/simple;
	bh=BT+3gKoTlns/Lgj+QPIB58pRWYlIpgcP6JSMa8s0I+w=;
	h=To:Subject:From:Message-Id:Date; b=Ugp0Yy61c22vHi201IEYIojyFWwjFwzhg50ZRmZlzT9nElwN53Ofn0WCBXgN2Z5Whp9kM4vWsTbPG9GvpbHE/IjO4dztsPxmOryBvqXS9oVmqbON6o2S6XHO3pQ94LCfd1HH9WSk1TOy1OPDiuXiNugVRcG0zKkj8Q0IGaA9L5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qM1lDoF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qM1lDoF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA388C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 07:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781076333;
	bh=BT+3gKoTlns/Lgj+QPIB58pRWYlIpgcP6JSMa8s0I+w=;
	h=To:Subject:From:Date:From;
	b=qM1lDoF0QA5D5d9EDHYWPtoDOAP+4tlmIy4JLJEZqvNqTzfXdqFK/3/RpyQEj6sjB
	 VHoWdXbTa+zphrDRbkchvGJs/QVq9F2M4vN+iKbEQE3OBFYXokpGYlh6OTorr7Z6tt
	 5MzJGXfQPx794t9qbU8nlzt6J3uyVBKdkAvApWIvjkDYy39Wf3sB3+YN7Z88JhN8JV
	 F6g+knfKPgyIpb0CbufWwK/ui/eoOROfQ/gKwr4zC91b8L5Jz3hotIPyaYpy4Br9Tl
	 gkyNV8ufnnD0fduyv3smC6DXN6u/2VgAlvkpADwXjvElNuO7v6vopjVevVQLjDIVAV
	 FPtvvyV+wFhjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADA7CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 07:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178107633369.13004.17020911223008047799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e90bd00646a230c5f3c1a130d0e815f437e56fc4cdde74bc684d22e65c50419a
Date: Wed, 10 Jun 2026 07:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781076333
