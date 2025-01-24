Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5403C1DB361
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737760554; cv=none; b=Qj8pT5Vm+jd7IU6AS7lnfps8Xl8nN/iUVWdiQbEoxR91Qj2OxyFo7lE5+YQve5HxwlqcVmd29SLAYZgJfUA7P29MnvZbLV1FRJzVT+x3+b0nVEr5VzhKeCdakUQD6nui69cQcRo3GAwnDryHLWNVKdU6sgMHOMVy0wS8pKwWGNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737760554; c=relaxed/simple;
	bh=B0pQgGbmI3mUHVte9qQoM1KE4diEzVAUghSR+I5izwQ=;
	h=To:Subject:From:Message-Id:Date; b=ZMQczOKcDz0oh/2wBBzFbGFJ+zuGrL9Axw7kNsmIIHgZZbgETnkzNGOcJBg4ormuViHiAn40BJyFB15OuSVLohdtN0TxTROXFpWtP/N+VTgo7OMcsekrYh9GWLQIsVf9RxQ44ql/hPzlqWYAsAg5qbhJSIkn6NVveiYlbnanNKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MSGfqD9F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MSGfqD9F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD2E1C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737760553;
	bh=B0pQgGbmI3mUHVte9qQoM1KE4diEzVAUghSR+I5izwQ=;
	h=To:Subject:From:Date:From;
	b=MSGfqD9FdCgQVxPcKZHy3nN0QlsXBWCsateUsx3MudGAlRu4qRDyRdGIrsWqYM4UA
	 xGdKU6ag9IUQ0SPQuswPgCYwoYte7W1sDr+Wr7eapbb6+fXcGmNFrk9n9VbNfCk/ey
	 8Dq8f0PQxUr/bfkSge1sLt+n6gMKa+ERYroG3pk9JkCAJSxU8d385esI0q7kS3ooy5
	 jyppcnwjq8CchuXxDHUZBS/TVm5/TKbMOx61mY01XFZ40bs9FEk0WWdyKU/5Bb/93u
	 O5eGcC9M8EsgnnxQeAXKxmiAs/lQlsr/kr32gQwjANkhLEixQ4LNjuZKswRg9Zjyp0
	 ozwQtvti9ZvBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4DFFC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173776055366.17678.10003860867228534362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8720a663055cf521234c76243d26b20ffecb2dc99872e5d1a5ecb1ea7f505063
Date: Fri, 24 Jan 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737760553
