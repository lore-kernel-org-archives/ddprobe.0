Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F28B7081E
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736243754; cv=none; b=oS76EuISDaxatRac9vZ7JVKAibe9k6QP53aBuU6gWMtcXXvw/fzKhwat8BgrFpTneJL0ZYycOnrg1miJCD3N7Xq9W5fGUZCdIprC/D/ds1EuqP1RQT796jIgzeJEhBU8wGKitFodoVOPYLHJK05iFvN6v0/67HD9Dkvt4Mz2Eig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736243754; c=relaxed/simple;
	bh=RM6xGXLKhJ5BgJEYXdnnAz7yIEI0yxUKQDj92rqW+IU=;
	h=To:Subject:From:Message-Id:Date; b=Xy2hAmjSy0ppWlatP4UVjx/yIhYEruWFFzn7lI3LRiGScfz4A1v1p4rXkIZZ6bpDRgZROLjneb7xBvuG5f76b5VcC3AzVOLgJ5WMhshVeqDfzZJYk/u3oZckyCcsnMvCzkmWEmtrqKw7al67s6EUfcEqkN2lHyPXfRiDlN1b5xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUfSs9KA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUfSs9KA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6035C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736243753;
	bh=RM6xGXLKhJ5BgJEYXdnnAz7yIEI0yxUKQDj92rqW+IU=;
	h=To:Subject:From:Date:From;
	b=YUfSs9KAzoxl6qQhBDNjyIgEfOhsMTlPVO9IvlPbt+yHdc0QHhJCA29BJdPVC7l75
	 PHmDLLEpQ0eUF3lFZsUr3w2ob9zG6uD+GGeE94ZNuS7byXj/EMhLXICAsrBdYNXPlv
	 7uOFYgl1UtIri3vKFgODbcZkG213dY77OpLl2wnNlmI7WI9M8UyJqGgJ8ZT8zmsMpe
	 1BqUgpjlRkQYySV7H2QCVObjJ3Y4SThM825VqqeGdgZkN3KExjK3u24iH9kUVjSCTL
	 Gxy8b3Ug7/hGOJDCOnUc3AoR7lGI6wXTU5NyIElT5Q3/9iNCopG1g5uDiEV4gHvFeS
	 /fPbFNXTsnkRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A54E77199
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173624375358.16375.2476487650010341941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7a86f575958bfbc7c37ad741ca9ac262ab680a500ea490e7f8b6a079e170ec0
Date: Tue, 07 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736243753
