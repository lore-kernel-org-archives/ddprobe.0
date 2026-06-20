Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA3ADF6C
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 03:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781924794; cv=none; b=m1qHyN0fhtO9ymdeplB1oZdkBeq+Qo9wlLFG+yAwlqFHKHPdUubd2QmTHq7u3S30EmKArC1H7RgKTHWMM1pxlP5HkljbKVGwlemGVHDx5gSc7txVcQQJKhEhmaJZoqlDYDftF4/iLNIoPi/fEh0eMd8X7RwKj8pOR0gb9q08Z7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781924794; c=relaxed/simple;
	bh=iJjxZaWYUmhBKU95D5DXWOqM3srJakPnuyrjuPmkWPY=;
	h=To:Subject:From:Message-Id:Date; b=DZa8oFe9pyP49fVg2rBtonDPjNFepJ6hZlblO8DnXo9eLBCLeI7LdVCKKdrnIe3TD8AmRM3fY7SZMy8/aaeF5PPuppl11rwqBUxroQOmBu4DBku3YkHWQCF43Fsipy3j1FM7DwOBrxeGloG0t/K8eqhj+oO8CPD8W19xQIOXWuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYKgcM2R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYKgcM2R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6068C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 03:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781924793;
	bh=iJjxZaWYUmhBKU95D5DXWOqM3srJakPnuyrjuPmkWPY=;
	h=To:Subject:From:Date:From;
	b=OYKgcM2Ra8OvSO6Njh/6aAGhnEnrtnQm3bHLL4DYp6og8+9+18YOWDjsw2k9GYhoW
	 PQyPzSpBpxVKJKjJqlz1tnHh6gv2OAyM3PkBx8pNnlxH+ositLH+nmQlVd211Sc87h
	 N80p6ceB6Z1gjU+10hZhywKuQo//MUVa7vnueCdCo+G8c6/ap5B1srT5UjS2bsF6zT
	 hx7d9WFu7qqSNgiBe6/ClZvN917rcxIhC9qxuvaWja9SIrMZc2FMTyw33KtK5tuxwN
	 y1zYEHXNu7DB9ldUWDMZ9QSYclvIjWz7bgBpm/7WeB+lNSqhgQkvNPLTocoLqMrRqm
	 lYMZbTEOMt86A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B99CECD98F6
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 03:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178192479371.11789.1162258732856668771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bc140067ef6c72cf92adc02c949b97d3f60c1bdcd95b12523583cd913896ec5
Date: Sat, 20 Jun 2026 03:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781924793
