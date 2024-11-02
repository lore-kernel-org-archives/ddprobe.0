Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7AD8468
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730560554; cv=none; b=XlSib1HXpwn4otTlGjYc7LBJLSC8gJERNjln3Pyle+XnJ0pvwr4GEKpqTHr1DHMYWKrT6sZa6E1JqLZJPWVYcJ5Idz08W879azCDCc8mzkF3kUjdVCo+RrnzWEmantfOUGgUAVBRwqwnIbf+N8gUfbvn2EuZqi9BcT0/mzWffaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730560554; c=relaxed/simple;
	bh=UpmLAlR3D4quUsACv6QF++ypAP+FBeebNZiUvVvY+xY=;
	h=To:Subject:From:Message-Id:Date; b=pwHNlys/b43+EAxy59GTxCk8lVwB8IufctjJUM4YfHVpZMMTaOFyrI7+x0euSbow2n5urjeJH8ZljLzWry8ixwa6cmMsbKG6Nj1h3aG0jz/61T/y9eFVhmbb2LsFjKLUs015M2oPk7HLyofzn5jPzd3lKnoiHcvhOxw038AVdgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdYzKbiF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdYzKbiF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8081C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730560553;
	bh=UpmLAlR3D4quUsACv6QF++ypAP+FBeebNZiUvVvY+xY=;
	h=To:Subject:From:Date:From;
	b=LdYzKbiFqEw7wCu3T8avibU9aGLF3GJ0iGFO9h+owXy5JTPOSgWxBal/+x4OeGpmt
	 Vad8UuHvQKo7gerZgvLqzsDKSxnwFsMNKinaQM1VimTD2gi5+ndr90BqWvJybpyEVU
	 +cOU9sPK7s6haxQDtZREtMIeoFWRuEKTWpn5R5qk4vAcZYO0LCpJFsx/l/5Jsrm+I6
	 kcMQJ+fNK7rDK3c+7h6P4YzmgO/XU2bJu4LknYAOQPpVXiSg/Sm73pe31SQ223PVdH
	 21qXokKJ+psKW7NYSp0pqtkIefKH9nmiq+64/xiHYoT7tNK1/F6JTHwoTKVF066gc6
	 l0eIUAEojsRLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D71E67802
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173056055362.29868.14931460291575871059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3003cb40b091bf1870ff40770be8d8526649062f6b95f83da31cab4c3352c2d2
Date: Sat, 02 Nov 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730560553
