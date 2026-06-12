Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C4F28030E
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 04:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781239594; cv=none; b=IKs3q9AQu2zaj2ThIUSyfU8+tqUTnUoCHgh1Ga0hGQUZvmFc7kbEYu4uEBM8LH+bxFDDwkXRzNYWArdp0gE9Wi7Z6aKuWQgBJhbM/Oj1nNu+eLDGowPEulDMHqvwnlLCFCA49P+F5mpt7kx+NKhotODU/Hl7R24BIkhaGZukYuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781239594; c=relaxed/simple;
	bh=xn25uSuUDK+K4uy7yUSIT4TDZ2QMDHr170Pq4YC9RpQ=;
	h=To:Subject:From:Message-Id:Date; b=R4X7svpN3mTqfFsqMv5MzZwH/qYqNJ/R334rUtuAC3HBL6QglJRMwaNVsUE6jKOiazsBJcIR7ciEJYN7409K+5VsQBqrcpAqHFOZBQiWk7Skq0QIX+6pv+DJIy4QmP/oqkvCtTw4NpUM0uySP8VYM4cYYTustDZK6jYSxy6B22E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EOE1cdzU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EOE1cdzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56F4C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 04:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781239593;
	bh=xn25uSuUDK+K4uy7yUSIT4TDZ2QMDHr170Pq4YC9RpQ=;
	h=To:Subject:From:Date:From;
	b=EOE1cdzUOZk8mUkrWxIDurJ+0cbk4ukNyCsEfcex+WSuUYCBpCJUL6g9hxnrfZJN2
	 kGgBPz/WGfY7jWSYiIit2BXSJ8ZzIbmnYuF+Sxf4Bxg3FyelsnYyu1mpI13Ky+7Uzg
	 AGN1Wwg45SV+Hb9cQ9lRdxJAf0uGYgmeqXx6G6bVyPgQ0kD8nx1fi8658J6OT81o5K
	 oZBcRR0BssfHp4KiE+QJnZqlwNOFHxLNfcL/SpQSqAMXHJtCaBFDg8zXZH76Oyiw8h
	 wKz9zdXvVF/a+n/YmXRR8yxN5xqRFYg9EPAYvrf5JmTCG+vyEagbt6NxCqzcyyW7pZ
	 aXTe0oi3RfXDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8AFCD98CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 04:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178123959377.20307.750861125032401680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0dafcab6d5398f0568950f1c39b8de9e72abc94acc2be4f7135ff4248543092
Date: Fri, 12 Jun 2026 04:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781239593
