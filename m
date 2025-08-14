Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181A524290E
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755152394; cv=none; b=dYlP+1pM34vl4K9RqCBDi68PqvZ/c8Dgj7BiZMZdMymwoEz++LtcFFe87jfZEX2KKkbOo+NxGKAu1jbl3EB0xh9PyhvRWSU6pT7sx19P4qR5yAyfRnJln1VbDBafpXM5nc9VkZBtmG3uo/5MpFTQXxFMWOxiWDvmHtlcDBUZcQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755152394; c=relaxed/simple;
	bh=qK+yUV4+kGRARNUq4EwOuNru6cPIqGqJI/XwKhWHl20=;
	h=To:Subject:From:Message-Id:Date; b=XBjBAPXqQeIVznIkzXv1adn6CEuDXqb0Xooslilid3CFUZVfRgg0BPSCpLyvswXrnGujZ+/uueLA8pxJYGMFW6NJEDXgjvspwO9sJXI/vL988fSEOkrtVrBs0/ULKkvjWJP1LopzstsApe0bHTLKKQ62h4gn5WSTMtoDJir8x/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdikUd0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdikUd0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A397DC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755152393;
	bh=qK+yUV4+kGRARNUq4EwOuNru6cPIqGqJI/XwKhWHl20=;
	h=To:Subject:From:Date:From;
	b=EdikUd0iEpfywrjgHexx5jb3F/rad3v8OzxDn4jOggge66exMSEowO3RHFXvlFQsq
	 QfTse2nntYV/h1pTnhcEu389FqHV6gqXrZSlTGqoRjgKo9dskBQe6RBaasUwtn3FRt
	 4PW3ycycVD0nwNDF8EWbaGjAVKoLXI/1jLSyC8kSHiCHu3LpVTDsO9meqjmcvbTPIK
	 8oinY6zTu+XNVOwRZQ7HGzJZmYTWT50uthahDi4G5q1gAronEDDHyqWDjhhGA+Sd9y
	 +WkGEInzphhIS/W6szGKKfEfh2624fATY9ON7oZFUGjn0RoS9jqS2FVA5VQGlaQxZF
	 ZMx7yrjBF42qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91499CA0ED1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175515239357.1710.11665232014727563140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c8261d31a13a37ab6fa7d1cfab03dd751e76966de4ef21afb81aff25b628e83
Date: Thu, 14 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755152393
