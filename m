Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317861C84DC
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786731034; cv=none; b=WZ3wF6Ko4CSuwlaqpwbjXwSbHmx0Kf5zyli0P7DvZIxP3R8eIWG/kZjzXKKrlsr4f5lSif5K2rjASypIw6wero+qIsZ7YtqM0LeME/Wlq5vIGKcBozj4j+VuMTvAm3T5WYjy5+tqhO5IPHy7mPv6yEb+YLjBO07RdC3ZYd0RDZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786731034; c=relaxed/simple;
	bh=jxZ6t4VYYKijzkKZnztyFQknKsKXiNji0iqxn0H2om0=;
	h=To:Subject:From:Message-Id:Date; b=AKMiJPavw9M45EudzzTIRw/a/kX7yhhDAhoWa3rzjWjhNTes29r4PuIq55HPMRsN8MhZjImGn8ZTuZQLs5Ma8lwMmZQNRdKXufE2q+X7+ToHtu7EsqKlcXMLSvgJKwAcFnEm0CqpU4tnseMLZCjpQuhfX88E9EN7WsLYfxvEsBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KW6rySwV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KW6rySwV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB250C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786731033;
	bh=jxZ6t4VYYKijzkKZnztyFQknKsKXiNji0iqxn0H2om0=;
	h=To:Subject:From:Date:From;
	b=KW6rySwVHTMRSa9Dgt3hFJ4u1qKs89eQTz0aWRzuUBpuvn5ssaEF5CUqr7WC0mmui
	 5Q7XEV7rrj6PJeXILAHLL5UwxA3ToObHLjowVwSyB2hKxoTJqxhU4Eiv+8Y1CSm3o8
	 lcKKk8pz0Pd7o4OoT1RFql9BkhfFcW7TOapfQYYsaKMx1pbIrjjtKnoSSrqaWGqUwq
	 MgKVIhqBXDJqveEt663BdMaxFDxkOgOCrTW6/as4MzkYniWmgpDvNVn0qOGFyIP16L
	 KihY1LyVB4g9KKttVdTAZFnaTd0SuFwHFZAGVZeTtGysgLjCtePV9EP2zvLJQXJ5e9
	 ADrwuRqfKZtkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F4BC5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178673103368.27630.7623675527519934825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29e45913275f35080d3c248b5a7a3c129827e02aeea047865493232234bc429c
Date: Fri, 14 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786731033
