Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BA313DDAE
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751151594; cv=none; b=NhSTRO4dXHDILAjYkc0KXtgpVKWI8LKmqXfxScKF5mPjEJDxPdxI3JhElsVCc1IywHIKdKSarIpZu3l34AhIaj2q9Jh5KdZlvk+qYtzINXCBWWVbQXUM85eoaU7w10BhDnxqONxmhdyImS0rjPgL1S9QKO6RqOVVQnk4bBlt390=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751151594; c=relaxed/simple;
	bh=4JrlVLsNkXy6XH/It3GSbJM4jly3njszNd3e8EAp8Kc=;
	h=To:Subject:From:Message-Id:Date; b=U0ebuO730GB1Lk5WOBnaBqkQQMFm0IkvuXhtE0qo1rV0qtX72cLgcN4SJ2syiGmJuz2nE1oaUoC7jnNp4xABAG7Gr6o0cmew3XLda/M8+b34KgENABD4Zkan+uTr8CJ2dcSJhOopGs6fXFYTdKPxZB/sSspjc5ASdeta6nnHbIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3P58M73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3P58M73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39DAC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751151593;
	bh=4JrlVLsNkXy6XH/It3GSbJM4jly3njszNd3e8EAp8Kc=;
	h=To:Subject:From:Date:From;
	b=I3P58M73uaKrIJ4E3QVANU3mjTpOtIkXcUIIpG3hCkvyVav7RLy0gwy7kifZler5D
	 nU9Dh3kK5gIzQMQqL3kzoJ+aFlknInp6u+QRpBUnuIQLE6iVfJv4PWPRTazaFjyWah
	 fL5blAtiVGKx6d/naoidd6CBx/lH3fBYdOX5MazXyGdWjXhEZFOmEJXowjEtfIiavO
	 VOf4Po5hM8xdfa8uT6BuD77/xIyZG/eZHDxybikMqeK214kd6Kf8p6uYhY3MFx0euJ
	 HOyO1CK0BtDrpI6O1OcjcxEJ9BUYvaghsYHI6EOHtYdfPi3WIuQiODVKm5bgisXQf0
	 DOL3+p7sfUtiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C14C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175115159357.14356.4830228749302047949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de24af3f465471ef58396a592dc643a2eddde0abdd4c697c74ed7c851054f8c8
Date: Sat, 28 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751151593
