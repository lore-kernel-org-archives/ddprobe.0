Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2454B27A107
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767029034; cv=none; b=GfCBX01LnpIgP4qJtRModDawAz9fVvi2NZmfbDd9bDzwMGGXpllq2V3qZ+zZI6OJKVzEO1Cl5oiNjjTOI3SgoAyF0Eq4WWh+tIIWoEFWpd+ipcLpTYsyVnoOC+oLxZv+ORfR08nAZm3oV/6XeSZJmHXq2VnJCGDc2vs+kaoMLVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767029034; c=relaxed/simple;
	bh=6LjOm77koaSIJDzsYK3XgUHPLgbK9QUAKFoBxldQFD8=;
	h=To:Subject:From:Message-Id:Date; b=bI7KKNXKIOSPlSvLwy8/Y6siqC+6mxhfl0dD2oyhPbIS8i5TguWWwNI6g9XznGVa8ZiHWuJW2hUOW8c2smVDH1KaJvrb8XCRq081vRWCndyZo+rqXaT13XxUQ3IN2EXKZJs/Z400TZW1nQkHeNg3wqKYhZfk54e+edEiD63qbVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSMFpaG7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSMFpaG7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5CB0C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767029033;
	bh=6LjOm77koaSIJDzsYK3XgUHPLgbK9QUAKFoBxldQFD8=;
	h=To:Subject:From:Date:From;
	b=WSMFpaG7XbDYb4RxtUZWCyjAcKaWCo/ocZddpZKNpPJ6MQlZ9X9/0j9B7WSUgrxvR
	 LzDQDz+iXxiH+2kHfkd3IVP8HbmpDmz1a3/Fb9SU5fA5KFnPpusnTXlNU2/qs4xrQa
	 56E3j80og6X1Uz2sKCBxWKp+kt3zRT+gxEYwaY3eXep27jfgFFzGhcEzKaUS81gu+i
	 w1MCwE5ZdIzQY3uhW7IQnz4LHadh8iJ4dGhYIuOBX0OkL5C+USzg1vmyANyYE+nW4J
	 ORbpoK+r7EMSW2se/yAnIWmJkWcmT9iMSP6qpxbpUIo/lxEiCfLhaxDLpv8NbX6mDD
	 y+t0c3oqkQCoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D70AE92733
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176702903362.928.13285236016278262376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b229cac63302201c7a955efb956e9c27b780d8f9b9f9979ac43e08e8832442a1
Date: Mon, 29 Dec 2025 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767029033
