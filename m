Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D30192598
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732985154; cv=none; b=cqOo7W7tgtos7456F+fQmO55VaMpQhHSEjpCouabWn2DawI4zMuFyb8iCqp6lNvhv3hgqfMQJ4BPmBn7SL6jC5ydrNZ2K0ojMZJmJimRleSj7vPvPKp4yM1UsBPGtn3StDKYGj8qxDeJW3F2ZbEldl9C7icYdKw5Kcma0Tqm5rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732985154; c=relaxed/simple;
	bh=hS+zc91jMZjrb84H6V7+GoOXd3XfozperkGW4XI6Teg=;
	h=To:Subject:From:Message-Id:Date; b=Q39fl5FoAfE/Yl3PBfO4bdkHJQqpNAuWrQW58VLZMhToBi2EdWoOhbhKc9D1MII+M+2GsooZFkPTbWJEIxj2dAhPUi2ZiDWUrim4aYlcOPvVtwyXxtNd+cEErlB3VPtIRvoLfV/LRBQNCs/s/cwSsmBxANGI2W9nNbS6iLXexHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1OjEzUk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1OjEzUk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE36BC4CED3
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732985153;
	bh=hS+zc91jMZjrb84H6V7+GoOXd3XfozperkGW4XI6Teg=;
	h=To:Subject:From:Date:From;
	b=m1OjEzUkD7smT8SPJKdbA2gvA1ssPfxUVro/33H9AwzVpoN+a5fSpWlqQ4NglRYzo
	 TiWk8FOujuxFuNMVTV8P38xjttm/skoAi2Tg89HOyGcsG+NItTl4oQz3qNktsZ2lEh
	 jUXjzZOiaALLFRjpHxvHTWKKW/fFaeRXBoiAEeNQPcKz9mhTSBxjOOfXfZ333KnUhx
	 fn7/yykI1zJSwEgjnRnZ/c2Oodm2AU+4bvNIrqqYh00niBAW2fVQuGRa+Zd1ekjMHk
	 cH7UFDPsSjTSj32/M4Z74Ru82LaGqfQwYmb5mDFqVU0fxIGVLAa3fyMOjIlcOsthhM
	 9V/qNCDknOO1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9794ED7360B
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173298515361.14365.12867753198657255940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95196679aedbbf0bab65c0ef00255aeb2d2ff58922350b9898898d8f4e46b9c7
Date: Sat, 30 Nov 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732985153
