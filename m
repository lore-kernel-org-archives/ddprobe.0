Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300FA27F007
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754004594; cv=none; b=Nz803bhvQYFc+xagRATS352UTuB8lMFkEYn6fn597I1JrRyc6xOn/PaMkmg3m6GPfgn8Ov696OLtSV4LJRfJpyf7UHGtVoUAwN7J+z1SmfjS9trreYK47llx+XRg+qKm0pnP8HBQGlxWjGkfFk+8aRk6qul3Hs9Ynr0jO0cQNu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754004594; c=relaxed/simple;
	bh=ir0UXC46cAZMyH6+3H8JdzBkJ9Iks3ETGCjJdIiiA1c=;
	h=To:Subject:From:Message-Id:Date; b=Ycnq2QrvLwod7jVtE/HjDaDN8UgzUuDxU+YAUFbzjHiHLA8AgPnNays/dzg7wjCNYAPysHk41DTeY9sjJmKynrtuvdkcSIjOlYVsTzmPTmdLuDTWOHHJEU6zuZVmaMT3WGTuSmNNMUFhOZFMEvZokKLJo6LDRE4etmrr1IouZiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIIo1pm1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIIo1pm1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25EDC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754004593;
	bh=ir0UXC46cAZMyH6+3H8JdzBkJ9Iks3ETGCjJdIiiA1c=;
	h=To:Subject:From:Date:From;
	b=NIIo1pm1xSnLqKAGTJsSjvwvfwLufNsb+m6XZ1oYD3RJBJdVenFzxcbxstfjL8Z54
	 7khgb5TD72rUYHW+Q0LzT8LzV4+Gibe0eKNcT/vQSqKAkYLe3zlk5UcOj8zovujY0M
	 NlY7QXWhL95390yTkBDdaWhzC1S0RoEh9zrKytXfFAUld/OSQRqklfAGt68nEst8Ym
	 QJq+WGeAg76TMN7tmNu/SG0OMKbiXjQvEnC62YDr0hbAFU3mJWTIruwAtopx7WmYdi
	 4VBxPW4qgfU4DrBjABlw5UlbtuworL0BDFnV3+EcAQl5xt/0hafgRyXE8UWswkh3M3
	 lvXOBtI+fC0fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90428C87FD3
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175400459358.3909.489359755359681015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02417943f64e7b8f84afea066167c7f4796b20d289f56dc07999efefb450919c
Date: Thu, 31 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754004593
