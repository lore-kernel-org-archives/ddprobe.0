Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215C424676E
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757387394; cv=none; b=b5UepFRzIDKBqq8gkuWRr/nEPxklkyleCTnROFMdiCyxo3CwSOBXvvbIAdglqrLUz/0O4qxw3I7ybl9eaMMhQnEdarTkotxxbfd6tVtlU23tHlNEeRh9jVwvPFheFkBmxu8CTZlveCtYcpF732FCPtXYD1oRok0izBrpc0TNzns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757387394; c=relaxed/simple;
	bh=imyTowcIohEJ+ZoY/lMAqK/vvjExxDb3h1mwFF0nPvM=;
	h=To:Subject:From:Message-Id:Date; b=QhW8IpO/psA90914u0oduwS5rUv/hIi+MueO4KcnWY+uJOfj8wOAnxpKLdVjtlabkRgNVyQUS1uX9uTSV9k14GC8OzoW/22AdovjvMxgGTpZ7aDhxxukQfvWPEcBXsgY5HhXLljHn6Sa7ZA0HK5o4gBoBLjTcVi12+husl6lJUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3ZIgXUK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3ZIgXUK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EE2C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757387393;
	bh=imyTowcIohEJ+ZoY/lMAqK/vvjExxDb3h1mwFF0nPvM=;
	h=To:Subject:From:Date:From;
	b=j3ZIgXUKUSXTZ8tGH1ZHpU55PBLNyNQDqcDc101nCJ7IqN7aF6mr7RCxx1qQEzzYv
	 jFKkWgg2CozLpDoCWFTIvvU5ROkd/xlPaqeKYQJgiLu/of4a6lSf2jIf89LRAfhuJJ
	 I1X6KGHd7KfGE26v5pZmX3OFN+iBwoOiYh0eyWbRlDKUCf98N9BsrRJO04T2UEBjnJ
	 axW+lzHd43ZCR4wYlOc3izDUtr+myt6D+hzY5JwcuRpLGum618OrVhay/87rZUDejZ
	 kv8GpJ9asR5wUPmC9wU1NwsLn0GzG2IQK2mFV3UJfcRCKW4g1yHH76uNWtKm7Tqvu3
	 dHLjvY3fARn+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D04CA1016
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175738739358.30325.17793249542250978707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9aa5ecc5501985f3155e9da87694965adac8a4460e3a9315901cf1ddd964c44
Date: Tue, 09 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757387393
