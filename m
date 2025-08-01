Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B762CAB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754043594; cv=none; b=KLH2aOO05z9zOts47xuZJ6zXMFPDzcf0/3a+Ycvp+0De4OA56yBGW9PBmlxb4qq0QxzD4V144jbMnii9H6EuCDaPZuNa4LiAoI7UAPp14hGcatvXTC/OUnVJlIKELzYvS160ObIM+4nGbC49xXIkEVUKClVxjNGPjd6nWxbgyOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754043594; c=relaxed/simple;
	bh=JJaBT2gyknsTjSV/V+xiCDf3YUX9Jl/SAqar9H/O0hw=;
	h=To:Subject:From:Message-Id:Date; b=t0NulQqOAzWkoG4JPJny7t6qiA+rnmtpcTuLp5CK9c9YRTwx4tXkYADcZcl+X3NaD7BGsK1rUKS0FaptphSFpS+qRGrgRteDG+PVY7S/6YD/R4MTBcf/NXtcx46ElMWgC6JH7Hdb7VG8habCAt6rsSaS0hfH2+BzxmpyaG8VlCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JadkoWrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JadkoWrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A098CC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754043593;
	bh=JJaBT2gyknsTjSV/V+xiCDf3YUX9Jl/SAqar9H/O0hw=;
	h=To:Subject:From:Date:From;
	b=JadkoWrbYCSNJsTP3EBJkTNKOsFEzIqmHMxNye/bnRy2BOUXLhaRyNYO5VDZ/LjgP
	 I/phVvjulPeR3AsTKagDe5vCa3hCEY1NJHHsj1oCzAY78lsSLNm/0Poayzvck7BqNw
	 GE0CZS3lA0YdwPRv9oOfiXcoxbmGKxc6gJXHXgRyj0otIJOhWNUgiWqT7u+Lo+i52B
	 8cv3hsx2rLp3d6cxKMhf8uT1ZKtJNW8NsTR7PB953sOCmAHHRhRIYrbq28VvWxAzhK
	 1Oifp0II/L1oEVI1eSedMsvXBPa5VLod6qnloMqQKKRYkcYAhHlZ4zHvJYB5Ejxfph
	 gjVXBnn1JkwGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED67C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175404359357.30542.13053992608867780039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64bcb90490759415c17c2e52690ee8dd1a8f328e15ea32f52a14deb6e7dcf451
Date: Fri, 01 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754043593
